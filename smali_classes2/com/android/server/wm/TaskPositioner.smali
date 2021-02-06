.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field mClientCallback:Landroid/os/IBinder;

.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragEnded:Z

.field mDragWindowHandle:Landroid/view/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field mWindow:Lcom/android/server/wm/WindowState;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 199
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 474
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 506
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 510
    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    return-object v0
.end method

.method private endDragLocked()V
    .locals 2

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 394
    return-void
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .locals 0
    .param p0, "factory"    # Lcom/android/server/wm/TaskPositioner$Factory;

    .line 502
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 503
    return-void
.end method

.method private updateDraggedBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 446
    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "stackBounds"    # Landroid/graphics/Rect;

    .line 477
    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 478
    .local v0, "offsetX":I
    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 479
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 481
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v2, v3

    .line 482
    .local v2, "maxLeft":I
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    .line 486
    .local v3, "minLeft":I
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 487
    .local v4, "minTop":I
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr v5, v6

    .line 489
    .local v5, "maxTop":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 490
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    .line 491
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 489
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 493
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWindowDragBounds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 516
    return-void
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$startDrag$0$TaskPositioner(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 383
    return-void
.end method

.method notifyMoveLocked(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 399
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMoveLocked: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 406
    return v1

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 416
    float-to-int v0, p1

    .line 417
    .local v0, "nX":I
    float-to-int v2, p2

    .line 418
    .local v2, "nY":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 421
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 422
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 425
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 426
    return v1
.end method

.method register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 212
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "Registering task positioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "Task positioner already registered"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 221
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 222
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 223
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 224
    const/4 v3, 0x1

    aget-object v4, v0, v3

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 225
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 227
    new-instance v4, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 228
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 229
    invoke-virtual {v7}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 231
    new-instance v4, Landroid/view/InputApplicationHandle;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-direct {v4, v5}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 232
    iput-object v1, v4, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    const-wide v5, 0x12a05f200L

    iput-wide v5, v4, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 236
    new-instance v4, Landroid/view/InputWindowHandle;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 237
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 238
    iput-object v1, v4, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/16 v4, 0x7e0

    iput v4, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 242
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-wide v5, v1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v3, v1, Landroid/view/InputWindowHandle;->visible:Z

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v3, v1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 247
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 248
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->paused:Z

    .line 249
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 255
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 259
    .local v1, "displayBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 260
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 261
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameTop:I

    .line 262
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameRight:I

    .line 263
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 266
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x2f2cdacf

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->pause()V

    .line 270
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskPositioningController;->showInputSurface(I)V

    .line 272
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 273
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v4, 0x30

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 274
    const/16 v4, 0x20

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 275
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 277
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 280
    :try_start_0
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 281
    invoke-interface {v4, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 287
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 288
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 289
    return-void

    .line 282
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 285
    return-void
.end method

.method resizeDrag(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 437
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget-boolean v9, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(Landroid/graphics/Rect;)V

    .line 440
    return-void
.end method

.method startDrag(ZZFF)V
    .locals 5
    .param p1, "resize"    # Z
    .param p2, "preserveOrientation"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .line 333
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDrag: win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preserveOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 342
    .local v0, "startBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 345
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 346
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 347
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 349
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 350
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    .line 351
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 353
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_2

    .line 354
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 356
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v3, p4, v3

    if-gez v3, :cond_3

    .line 357
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 359
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v3, p4, v3

    if-lez v3, :cond_4

    .line 360
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 362
    :cond_4
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 369
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v3, v4, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 370
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 375
    iget-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v1, :cond_8

    .line 376
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 388
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .line 498
    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .locals 5

    .line 292
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "Unregistering task positioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    .line 297
    const-string v0, "Task positioner not registered"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskPositioningController;->hideInputSurface(I)V

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 308
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 309
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 311
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 312
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 313
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 316
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 319
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x54cdeb55

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 321
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    .line 323
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 325
    :cond_3
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 326
    return-void
.end method
