.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;,
        Lcom/android/server/wm/TaskPositioner$CtrlType;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityTaskManager;

.field mClientCallback:Landroid/os/IBinder;

.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragEnded:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDragWindowHandle:Landroid/view/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field mTask:Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 234
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/IActivityTaskManager;)V

    .line 235
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/IActivityTaskManager;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "activityManager"    # Landroid/app/IActivityTaskManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 228
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 229
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mActivityManager:Landroid/app/IActivityTaskManager;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/app/IActivityTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mActivityManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 60
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 632
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 664
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 668
    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    return-object v0
.end method

.method private endDragLocked()V
    .locals 2

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 436
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 437
    return-void
.end method

.method private notifyMoveLocked(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 441
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 442
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

    .line 445
    :cond_0
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 448
    return v1

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 455
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 456
    .local v0, "stableBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 457
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 459
    float-to-int v2, p1

    .line 460
    .local v2, "nX":I
    float-to-int v3, p2

    .line 461
    .local v3, "nY":I
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 464
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 465
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 468
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 469
    return v1
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .locals 0
    .param p0, "factory"    # Lcom/android/server/wm/TaskPositioner$Factory;

    .line 660
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 661
    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "stackBounds"    # Landroid/graphics/Rect;

    .line 635
    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 636
    .local v0, "offsetX":I
    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 637
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 639
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v2, v3

    .line 640
    .local v2, "maxLeft":I
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    .line 644
    .local v3, "minLeft":I
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 645
    .local v4, "minTop":I
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr v5, v6

    .line 647
    .local v5, "maxTop":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 648
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    .line 649
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 647
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 651
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

    .line 653
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 674
    return-void
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$startDrag$0$TaskPositioner(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mActivityManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 426
    :goto_0
    return-void
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .locals 11
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 248
    .local v0, "display":Landroid/view/Display;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "Registering task positioner"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 253
    const-string v1, "Task positioner already registered"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 257
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 259
    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 260
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 261
    const/4 v4, 0x1

    aget-object v5, v1, v4

    iput-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 262
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 264
    new-instance v5, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 265
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 266
    invoke-virtual {v9}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v9

    invoke-direct {v5, p0, v6, v8, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 268
    new-instance v5, Landroid/view/InputApplicationHandle;

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    invoke-direct {v5, v6}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 269
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    iput-object v2, v5, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 270
    const-wide v8, 0x12a05f200L

    iput-wide v8, v5, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 273
    new-instance v6, Landroid/view/InputWindowHandle;

    .line 274
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    invoke-direct {v6, v5, v7, v10}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 275
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v2, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 276
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v6}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 277
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v6

    iput v6, v5, Landroid/view/InputWindowHandle;->layer:I

    .line 278
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v3, v5, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 279
    const/16 v6, 0x7e0

    iput v6, v5, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 280
    iput-wide v8, v5, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 282
    iput-boolean v4, v5, Landroid/view/InputWindowHandle;->visible:Z

    .line 283
    iput-boolean v3, v5, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 284
    iput-boolean v4, v5, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 285
    iput-boolean v3, v5, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 286
    iput-boolean v3, v5, Landroid/view/InputWindowHandle;->paused:Z

    .line 287
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iput v6, v5, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 288
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iput v6, v5, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 289
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v3, v5, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 290
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 293
    iget-object v5, v5, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->setEmpty()V

    .line 296
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v3, v5, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 297
    iput v3, v5, Landroid/view/InputWindowHandle;->frameTop:I

    .line 298
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 299
    .local v5, "p":Landroid/graphics/Point;
    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iput v7, v6, Landroid/view/InputWindowHandle;->frameRight:I

    .line 301
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v7, v5, Landroid/graphics/Point;->y:I

    iput v7, v6, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 304
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_2

    .line 305
    const-string v6, "Pausing rotation during re-position"

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->pauseRotationLocked()V

    .line 310
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 312
    const/16 v2, 0x64

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 313
    const/16 v2, 0x30

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 314
    const/16 v2, 0x20

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 315
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 317
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 318
    return-void
.end method

.method resizeDrag(FF)V
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 484
    move-object/from16 v7, p0

    iget v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 485
    .local v8, "deltaX":I
    iget v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 486
    .local v9, "deltaY":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 487
    .local v10, "left":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 488
    .local v11, "top":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v12, v0, Landroid/graphics/Rect;->right:I

    .line 489
    .local v12, "right":I
    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 494
    .local v13, "bottom":I
    iget-boolean v0, v7, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    const v1, 0x3f99999a    # 1.2f

    if-nez v0, :cond_0

    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 496
    :cond_0
    iget-boolean v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x3f555555

    :goto_0
    move v14, v0

    .line 498
    .local v14, "minAspect":F
    sub-int v0, v12, v10

    .line 499
    .local v0, "width":I
    sub-int v2, v13, v11

    .line 500
    .local v2, "height":I
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    .line 501
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v4, v0, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 502
    :cond_2
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 503
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int v4, v0, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 505
    :cond_3
    :goto_1
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_4

    .line 506
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v4, v2, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 507
    :cond_4
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 508
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int v4, v2, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 512
    :cond_5
    :goto_2
    int-to-float v3, v0

    int-to-float v4, v2

    div-float v15, v3, v4

    .line 513
    .local v15, "aspect":F
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_6

    cmpg-float v3, v15, v1

    if-ltz v3, :cond_7

    :cond_6
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v3, :cond_11

    float-to-double v3, v15

    const-wide v5, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v3, v3, v5

    if-lez v3, :cond_11

    .line 521
    :cond_7
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_a

    .line 523
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v4, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 524
    .local v3, "width1":I
    int-to-float v4, v3

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 525
    .local v4, "height1":I
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v4, v5, :cond_8

    .line 527
    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 528
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v6, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    move/from16 v16, v3

    .end local v3    # "width1":I
    .local v16, "width1":I
    int-to-float v3, v4

    mul-float/2addr v3, v1

    .line 529
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 528
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v16, v3

    .end local v16    # "width1":I
    .restart local v3    # "width1":I
    goto :goto_3

    .line 525
    :cond_8
    move/from16 v16, v3

    .line 532
    .end local v3    # "width1":I
    .restart local v16    # "width1":I
    :goto_3
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 533
    .local v3, "height2":I
    int-to-float v5, v3

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 534
    .local v5, "width2":I
    iget v6, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v5, v6, :cond_9

    .line 536
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 537
    iget v6, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v1, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move/from16 v18, v3

    .end local v3    # "height2":I
    .local v18, "height2":I
    int-to-float v3, v5

    const v17, 0x3f99999a    # 1.2f

    div-float v3, v3, v17

    .line 538
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 537
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v18, v3

    .end local v18    # "height2":I
    .restart local v3    # "height2":I
    goto/16 :goto_5

    .line 534
    :cond_9
    move/from16 v18, v3

    .end local v3    # "height2":I
    .restart local v18    # "height2":I
    goto/16 :goto_5

    .line 542
    .end local v4    # "height1":I
    .end local v5    # "width2":I
    .end local v16    # "width1":I
    .end local v18    # "height2":I
    :cond_a
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 543
    .local v1, "width1":I
    int-to-float v3, v1

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 544
    .local v3, "height1":I
    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v3, v4, :cond_b

    .line 546
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 547
    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v3

    const v16, 0x3f99999a    # 1.2f

    div-float v6, v6, v16

    .line 548
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 547
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v1

    move v4, v3

    goto :goto_4

    .line 544
    :cond_b
    move/from16 v16, v1

    move v4, v3

    .line 551
    .end local v1    # "width1":I
    .end local v3    # "height1":I
    .restart local v4    # "height1":I
    .restart local v16    # "width1":I
    :goto_4
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 552
    .local v3, "height2":I
    int-to-float v1, v3

    const v5, 0x3f99999a    # 1.2f

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 553
    .restart local v5    # "width2":I
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v5, v1, :cond_c

    .line 555
    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 556
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v6, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v3

    .end local v3    # "height2":I
    .restart local v18    # "height2":I
    int-to-float v3, v5

    const v17, 0x3f99999a    # 1.2f

    mul-float v3, v3, v17

    .line 557
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 556
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v18, v3

    .end local v18    # "height2":I
    .restart local v3    # "height2":I
    goto :goto_5

    .line 553
    :cond_c
    move/from16 v18, v3

    .line 563
    .end local v3    # "height2":I
    .restart local v18    # "height2":I
    :goto_5
    sub-int v1, v12, v10

    if-gt v0, v1, :cond_e

    sub-int v1, v13, v11

    if-le v2, v1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v1, 0x1

    .line 564
    .local v1, "grows":Z
    :goto_7
    mul-int v3, v16, v4

    mul-int v6, v5, v18

    if-le v3, v6, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    if-ne v1, v3, :cond_10

    .line 565
    move/from16 v0, v16

    .line 566
    move v2, v4

    move/from16 v17, v2

    goto :goto_9

    .line 568
    :cond_10
    move v0, v5

    .line 569
    move/from16 v2, v18

    move/from16 v16, v0

    move/from16 v17, v2

    goto :goto_9

    .line 574
    .end local v1    # "grows":Z
    .end local v4    # "height1":I
    .end local v5    # "width2":I
    .end local v16    # "width1":I
    .end local v18    # "height2":I
    :cond_11
    move/from16 v16, v0

    move/from16 v17, v2

    .end local v0    # "width":I
    .end local v2    # "height":I
    .local v16, "width":I
    .local v17, "height":I
    :goto_9
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    .line 575
    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "preserveOrientation"    # Z
    .param p4, "startX"    # F
    .param p5, "startY"    # F

    .line 357
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDrag: win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preserveOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    nop

    .line 370
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 375
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    .line 376
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 368
    return-void
.end method

.method protected startDrag(ZZFFLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "resize"    # Z
    .param p2, "preserveOrientation"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "startBounds"    # Landroid/graphics/Rect;

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 381
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 382
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 383
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 385
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 386
    iget v2, p5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    .line 387
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 389
    :cond_0
    iget v2, p5, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1

    .line 390
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 392
    :cond_1
    iget v2, p5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_2

    .line 393
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 395
    :cond_2
    iget v2, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-lez v2, :cond_3

    .line 396
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 398
    :cond_3
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 405
    :cond_5
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v2, v3, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 411
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_7

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 413
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 414
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 431
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 432
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .line 656
    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .locals 4

    .line 321
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "Unregistering task positioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    .line 326
    const-string v0, "Task positioner not registered"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 334
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 335
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 336
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 337
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 339
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 340
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 341
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 344
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 347
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_2

    .line 348
    const-string v2, "Resuming rotation after re-position"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->resumeRotationLocked()V

    .line 351
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 353
    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "newWidth"    # I
    .param p6, "newHeight"    # I

    .line 590
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 591
    sub-int p1, p3, p5

    goto :goto_0

    .line 593
    :cond_0
    add-int p3, p1, p5

    .line 595
    :goto_0
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 596
    sub-int p2, p4, p6

    goto :goto_1

    .line 598
    :cond_1
    add-int p4, p2, p6

    .line 601
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 604
    return-void
.end method
