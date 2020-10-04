.class Lcom/android/server/wm/TaskSnapshotPersister$1;
.super Ljava/lang/Thread;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p2, "x0"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 248
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x0

    .local v1, "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_1

    .line 255
    .end local v1    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 256
    .restart local v1    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    .line 260
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    .line 263
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    .line 267
    .local v0, "writeQueueEmpty":Z
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 268
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3, v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z

    .line 272
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 273
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    goto :goto_2

    .line 274
    :catch_0
    move-exception v3

    .line 276
    .end local v0    # "writeQueueEmpty":Z
    :goto_2
    :try_start_3
    monitor-exit v2

    .line 277
    .end local v1    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_0

    .line 276
    .restart local v1    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 260
    .end local v1    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
