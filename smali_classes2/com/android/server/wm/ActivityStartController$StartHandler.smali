.class final Lcom/android/server/wm/ActivityStartController$StartHandler;
.super Landroid/os/Handler;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStartController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController$StartHandler;->this$0:Lcom/android/server/wm/ActivityStartController;

    .line 104
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController$StartHandler;->this$0:Lcom/android/server/wm/ActivityStartController;

    invoke-static {v0}, Lcom/android/server/wm/ActivityStartController;->access$000(Lcom/android/server/wm/ActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 112
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController$StartHandler;->this$0:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 116
    :goto_0
    return-void

    .line 113
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
