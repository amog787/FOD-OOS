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
    .param p2, "name"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 263
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 266
    :goto_0
    const/4 v0, 0x0

    .line 267
    .local v0, "isReadyToWrite":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const/4 v2, 0x0

    .local v2, "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_1

    .line 271
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 272
    .restart local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    const/4 v0, 0x1

    .line 275
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_1

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 281
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    if-eqz v2, :cond_4

    .line 283
    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    .line 286
    :cond_3
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 289
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    .line 290
    .local v1, "writeQueueEmpty":Z
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 291
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z

    .line 295
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 296
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    goto :goto_2

    .line 297
    :catch_0
    move-exception v4

    .line 299
    .end local v1    # "writeQueueEmpty":Z
    :goto_2
    :try_start_3
    monitor-exit v3

    .line 300
    .end local v0    # "isReadyToWrite":Z
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_0

    .line 299
    .restart local v0    # "isReadyToWrite":Z
    .restart local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 281
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
