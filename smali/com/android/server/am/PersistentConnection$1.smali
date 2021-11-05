.class Lcom/android/server/am/PersistentConnection$1;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/android/server/am/PersistentConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PersistentConnection;

    .line 118
    .local p0, "this":Lcom/android/server/am/PersistentConnection$1;, "Lcom/android/server/am/PersistentConnection$1;"
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 161
    .local p0, "this":Lcom/android/server/am/PersistentConnection$1;, "Lcom/android/server/am/PersistentConnection$1;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 165
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but not bound, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 170
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$1208(Lcom/android/server/am/PersistentConnection;)I

    .line 174
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->scheduleRebindLocked()V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 121
    .local p0, "this":Lcom/android/server/am/PersistentConnection$1;, "Lcom/android/server/am/PersistentConnection$1;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$100(Lcom/android/server/am/PersistentConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 127
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but not bound, ignore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 131
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$508(Lcom/android/server/am/PersistentConnection;)I

    .line 135
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/am/PersistentConnection;->access$602(Lcom/android/server/am/PersistentConnection;Z)Z

    .line 136
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v2}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/am/PersistentConnection;->access$702(Lcom/android/server/am/PersistentConnection;J)J

    .line 137
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-virtual {v2, p2}, Lcom/android/server/am/PersistentConnection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/PersistentConnection;->access$802(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$900(Lcom/android/server/am/PersistentConnection;)V

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 145
    .local p0, "this":Lcom/android/server/am/PersistentConnection$1;, "Lcom/android/server/am/PersistentConnection$1;"
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v0}, Lcom/android/server/am/PersistentConnection;->access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    .line 147
    invoke-static {v3}, Lcom/android/server/am/PersistentConnection;->access$400(Lcom/android/server/am/PersistentConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$1008(Lcom/android/server/am/PersistentConnection;)I

    .line 151
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection$1;->this$0:Lcom/android/server/am/PersistentConnection;

    invoke-static {v1}, Lcom/android/server/am/PersistentConnection;->access$1100(Lcom/android/server/am/PersistentConnection;)V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
