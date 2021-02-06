.class Lcom/android/server/wm/TaskPositioningController;
.super Ljava/lang/Object;
.source "TaskPositioningController.java"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityTaskManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private mInputSurface:Landroid/view/SurfaceControl;

.field private mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Landroid/app/IActivityTaskManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "activityManager"    # Landroid/app/IActivityTaskManager;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 68
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 69
    iput-object p3, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 72
    return-void
.end method

.method private cleanUpTaskPositioner()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 232
    .local v0, "positioner":Lcom/android/server/wm/TaskPositioner;
    if-nez v0, :cond_0

    .line 233
    return-void

    .line 238
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 239
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    .line 240
    return-void
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "preserveOrientation"    # Z
    .param p4, "startX"    # F
    .param p5, "startY"    # F

    .line 166
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPositioningLocked: win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preserveOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 175
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_2

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPositioningLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has no input channel,  probably being removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v0

    .line 181
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 182
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_3

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPositioningLocked: Invalid display content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v0

    .line 186
    :cond_3
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 188
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 189
    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    .line 195
    move-object v3, p1

    .line 196
    .local v3, "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v4, p1, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, v5, :cond_4

    .line 198
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 200
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v6, v6, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 202
    const-string v4, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 204
    return v0

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFF)V

    .line 208
    const/4 v0, 0x1

    return v0

    .line 172
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    :cond_6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPositioningLocked: Bad window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v0
.end method


# virtual methods
.method finishTaskPositioning()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method public finishTaskPositioning(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 215
    :cond_0
    return-void
.end method

.method getDragWindowHandleLocked()Landroid/view/InputWindowHandle;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;-><init>(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method hideInputSurface(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 80
    :cond_0
    return-void
.end method

.method isPositioningLocked()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$finishTaskPositioning$1$TaskPositioningController()V
    .locals 2

    .line 221
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "finishPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 224
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$handleTapOutsideTask$0$TaskPositioningController(IILcom/android/server/wm/DisplayContent;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->sIsDownAtGestureButtonRegion:Z

    .line 137
    invoke-static {p1, p2}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->sIsDownAtGestureButtonRegion:Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureButton: skip handleTapOutsideTask x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 144
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 145
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    const/4 v4, 0x1

    .line 152
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v5

    int-to-float v6, p1

    int-to-float v7, p2

    .line 151
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 156
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 160
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_3
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showInputSurface(I)V
    .locals 8
    .param p1, "displayId"    # I

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 87
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 90
    const-string v2, "Drag and Drop Input Consumer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 91
    const-string v2, "TaskPositioningController.showInputSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getDragWindowHandleLocked()Landroid/view/InputWindowHandle;

    move-result-object v1

    .line 96
    .local v1, "h":Landroid/view/InputWindowHandle;
    if-nez v1, :cond_2

    .line 97
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 104
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    const v4, 0x7fffffff

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 106
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 107
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 108
    .local v3, "p":Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 110
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 112
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 113
    return-void

    .line 84
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "h":Landroid/view/InputWindowHandle;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "p":Landroid/graphics/Point;
    :cond_3
    :goto_0
    return-void
.end method

.method startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .local v6, "win":Lcom/android/server/wm/WindowState;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move v9, p2

    move v10, p3

    :try_start_1
    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 125
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 129
    const/4 v0, 0x1

    return v0

    .line 125
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .restart local v0    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
