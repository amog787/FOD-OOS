.class Lcom/android/server/wm/TaskSnapshotSurface$1;
.super Landroid/os/Handler;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 500
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 508
    .local v0, "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 509
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z

    move-result v2

    .line 510
    .local v2, "hasDrawn":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 511
    if-eqz v2, :cond_1

    .line 512
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 516
    .end local v0    # "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v2    # "hasDrawn":Z
    :cond_1
    :goto_0
    return-void

    .line 510
    .restart local v0    # "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
