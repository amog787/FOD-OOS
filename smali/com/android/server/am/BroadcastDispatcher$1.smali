.class Lcom/android/server/am/BroadcastDispatcher$1;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

# interfaces
.implements Lcom/android/server/AlarmManagerInternal$InFlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 166
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastAlarmComplete(I)V
    .locals 6
    .param p1, "recipientUid"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->access$000(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 188
    .local v1, "newCount":I
    if-ltz v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 191
    :cond_0
    const-string v3, "BroadcastDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undercount of broadcast alarms in flight for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v3, v3, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    :goto_0
    if-gtz v1, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v2}, Lcom/android/server/am/BroadcastDispatcher;->access$200(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 198
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 199
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->access$200(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p1, v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->access$200(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 201
    .local v4, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v5}, Lcom/android/server/am/BroadcastDispatcher;->access$100(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/am/BroadcastDispatcher;->access$300(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 202
    goto :goto_2

    .line 198
    .end local v4    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v1    # "newCount":I
    .end local v2    # "numEntries":I
    .end local v3    # "i":I
    :cond_2
    :goto_2
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public broadcastAlarmPending(I)V
    .locals 6
    .param p1, "recipientUid"    # I

    .line 169
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->access$000(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, v1, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 171
    .local v1, "newCount":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v2}, Lcom/android/server/am/BroadcastDispatcher;->access$100(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 174
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 175
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->access$100(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p1, v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v4}, Lcom/android/server/am/BroadcastDispatcher;->access$100(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 177
    .local v4, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher$1;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v5}, Lcom/android/server/am/BroadcastDispatcher;->access$200(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    goto :goto_1

    .line 174
    .end local v4    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "newCount":I
    .end local v2    # "numEntries":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
