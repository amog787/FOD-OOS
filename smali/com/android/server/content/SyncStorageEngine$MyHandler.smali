.class Lcom/android/server/content/SyncStorageEngine$MyHandler;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 571
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {v0}, Lcom/android/server/content/SyncStorageEngine;->access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {v1}, Lcom/android/server/content/SyncStorageEngine;->access$200(Lcom/android/server/content/SyncStorageEngine;)V

    .line 580
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 581
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {v0}, Lcom/android/server/content/SyncStorageEngine;->access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 583
    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {v1}, Lcom/android/server/content/SyncStorageEngine;->access$300(Lcom/android/server/content/SyncStorageEngine;)V

    .line 584
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 586
    :cond_1
    :goto_0
    return-void
.end method
