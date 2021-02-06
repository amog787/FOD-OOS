.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayMagnifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z = false

.field private static final DEBUG_RECTANGLE_REQUESTED:Z = false

.field private static final DEBUG_ROTATION:Z = false

.field private static final DEBUG_VIEWPORT_WINDOW:Z = false

.field private static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayContext:Landroid/content/Context;

.field private mForceShowMagnifiableBounds:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "callbacks"    # Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 399
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 400
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 401
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 402
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    .line 421
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    .line 422
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 423
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 424
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 425
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    .line 426
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method


# virtual methods
.method public destroyLocked()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    .line 581
    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 591
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 577
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 565
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    const/4 v1, 0x0

    return-object v1

    .line 570
    :cond_0
    return-object v0
.end method

.method public isForceShowingMagnifiableBoundsLocked()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    return v0
.end method

.method public onAppWindowTransitionLocked(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "transition"    # I

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    .line 495
    .local v0, "magnifying":Z
    if-eqz v0, :cond_0

    .line 496
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 503
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 507
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 457
    .local v0, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    return-void

    .line 461
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 462
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 463
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 464
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 465
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 466
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 468
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 486
    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 476
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 9
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    .line 516
    .local v0, "magnifying":Z
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 517
    .local v1, "type":I
    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    if-nez v0, :cond_1

    .line 521
    goto :goto_0

    .line 523
    :cond_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7e4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7e8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7f3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7f6

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 544
    :cond_2
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 545
    .local v2, "magnifiedRegionBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 547
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 548
    .local v3, "touchableRegionBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 549
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {v4, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 550
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 551
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    .line 561
    .end local v2    # "magnifiedRegionBounds":Landroid/graphics/Rect;
    .end local v3    # "touchableRegionBounds":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setForceShowMagnifiableBoundsLocked(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 441
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 443
    return-void
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 438
    return-void
.end method

.method public showMagnificationBoundsIfNeeded()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    return-void
.end method
