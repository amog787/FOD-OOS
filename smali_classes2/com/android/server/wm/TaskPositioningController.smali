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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerSerivce.mWindowMap"
        }
    .end annotation
.end field

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field private mTransferTouchFromToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Landroid/app/IActivityTaskManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "activityManager"    # Landroid/app/IActivityTaskManager;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
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
    return-void
.end method

.method private cleanUpTaskPositioner()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 217
    .local v0, "positioner":Lcom/android/server/wm/TaskPositioner;
    if-nez v0, :cond_0

    .line 218
    return-void

    .line 223
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 224
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    .line 225
    return-void
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "preserveOrientation"    # Z
    .param p4, "startX"    # F
    .param p5, "startY"    # F

    .line 158
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 159
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

    .line 163
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 167
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_2

    .line 168
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

    .line 170
    return v0

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 174
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_3

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPositioningLocked: Invalid display content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v0

    .line 178
    :cond_3
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 186
    move-object v0, p1

    .line 187
    .local v0, "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v1, p1, :cond_4

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v3, :cond_4

    .line 189
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 191
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTransferTouchFromToken:Landroid/os/IBinder;

    .line 192
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    .line 194
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskPositioner;->startDrag(Lcom/android/server/wm/WindowState;ZZFF)V

    .line 195
    const/4 v1, 0x1

    return v1

    .line 164
    .end local v0    # "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPositioningLocked: Bad window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0
.end method


# virtual methods
.method finishTaskPositioning()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public finishTaskPositioning(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 202
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

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;-><init>(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method hideInputSurface(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"    # I

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 78
    :cond_0
    return-void
.end method

.method isPositioningLocked()Z
    .locals 1

    .line 58
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

    .line 206
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "finishPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 209
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 212
    return-void

    .line 211
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

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->sIsDownAtGestureButtonRegion:Z

    .line 134
    invoke-static {p1, p2}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->sIsDownAtGestureButtonRegion:Z

    .line 136
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

    .line 137
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 141
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 142
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    const/4 v4, 0x1

    .line 144
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v5

    int-to-float v6, p1

    int-to-float v7, p2

    .line 143
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 148
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 152
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showInputSurface(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"    # I

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 85
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 88
    const-string v2, "Drag and Drop Input Consumer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getDragWindowHandleLocked()Landroid/view/InputWindowHandle;

    move-result-object v1

    .line 92
    .local v1, "h":Landroid/view/InputWindowHandle;
    if-nez v1, :cond_2

    .line 93
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 100
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 102
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 103
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 104
    .local v3, "p":Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 106
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 108
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTransferTouchFromToken:Landroid/os/IBinder;

    iget-object v5, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 109
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTransferTouchFromToken:Landroid/os/IBinder;

    .line 110
    return-void

    .line 82
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

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
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

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 122
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 124
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 126
    const/4 v0, 0x1

    return v0

    .line 122
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
