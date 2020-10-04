.class Lcom/android/server/wm/RecentTasks$1;
.super Ljava/lang/Object;
.source "RecentTasks.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/RecentTasks;

    .line 216
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPointerEvent$0$RecentTasks$1(IIILjava/lang/Object;)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "nonArg"    # Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 229
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v1}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 230
    .local v1, "rac":Lcom/android/server/wm/RootActivityContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 231
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/DisplayContent;->pointWithinAppWindow(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v3}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 233
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 234
    .local v4, "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/TaskRecord;)V

    .line 236
    .end local v1    # "rac":Lcom/android/server/wm/RootActivityContainer;
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->access$000(Lcom/android/server/wm/RecentTasks;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 224
    .local v0, "displayId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 225
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 226
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v3}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;-><init>(Lcom/android/server/wm/RecentTasks$1;III)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v4

    .line 237
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v4

    .line 226
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void

    .line 221
    .end local v0    # "displayId":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    :goto_0
    return-void
.end method
