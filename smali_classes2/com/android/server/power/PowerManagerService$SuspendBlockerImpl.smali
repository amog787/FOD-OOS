.class final Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/SuspendBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuspendBlockerImpl"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mReferenceCount:I

.field private final mTraceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .line 5145
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5146
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 5147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SuspendBlocker ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    .line 5148
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .line 5167
    monitor-enter p0

    .line 5168
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 5169
    if-ne v0, v1, :cond_1

    .line 5170
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$5300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5171
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    :cond_0
    const-wide/32 v0, 0x20000

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5174
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    .line 5176
    :cond_1
    monitor-exit p0

    .line 5177
    return-void

    .line 5176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5205
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5206
    .local v0, "sbToken":J
    monitor-enter p0

    .line 5207
    const-wide v2, 0x10900000001L

    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5208
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5209
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5210
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5211
    return-void

    .line 5209
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5153
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-eqz v0, :cond_0

    .line 5154
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" was finalized without being released!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 5157
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    .line 5158
    const-wide/32 v1, 0x20000

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5161
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5162
    nop

    .line 5163
    return-void

    .line 5161
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5162
    throw v0
.end method

.method public release()V
    .locals 4

    .line 5181
    monitor-enter p0

    .line 5182
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 5183
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5184
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$5300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5185
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing suspend blocker \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    .line 5188
    const-wide/32 v2, 0x20000

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_0

    .line 5189
    :cond_1
    if-gez v0, :cond_2

    .line 5190
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspend blocker \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" was released without being acquired!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5192
    iput v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 5194
    :cond_2
    :goto_0
    monitor-exit p0

    .line 5195
    return-void

    .line 5194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5199
    monitor-enter p0

    .line 5200
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ref count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 5201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
