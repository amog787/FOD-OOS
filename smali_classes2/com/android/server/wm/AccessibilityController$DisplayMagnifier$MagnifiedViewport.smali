.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedViewport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
    }
.end annotation


# instance fields
.field private final mBorderWidth:F

.field private final mCircularPath:Landroid/graphics/Path;

.field private final mDrawBorderInset:I

.field private mFullRedrawNeeded:Z

.field private final mHalfBorderWidth:I

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mOldMagnificationRegion:Landroid/graphics/Region;

.field private mTempLayer:I

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V
    .locals 5

    .line 513
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    .line 489
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 491
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    .line 493
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 495
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    .line 496
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 500
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    .line 514
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    .line 515
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    .line 517
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 518
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 519
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 521
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    .line 523
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 524
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    .line 525
    .local p1, "centerXY":I
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p1

    int-to-float v3, p1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 526
    .end local p1    # "centerXY":I
    goto :goto_0

    .line 527
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 531
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 484
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 484
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    return v0
.end method

.method private getLetterboxBounds(Lcom/android/server/wm/WindowState;)Landroid/graphics/Region;
    .locals 7
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 669
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 670
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_0

    .line 671
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    return-object v1

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 675
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 676
    .local v1, "letterboxInsets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 677
    .local v2, "screenWidth":I
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 678
    .local v3, "screenHeight":I
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v4

    .line 679
    .local v4, "nonLetterboxRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v5

    .line 680
    .local v5, "letterboxBounds":Landroid/graphics/Region;
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 681
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 682
    invoke-virtual {v5, v6, v6, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 683
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 684
    return-object v5
.end method

.method private populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 738
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    .line 739
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$DisplayMagnifier$MagnifiedViewport$ZNyFGy-UXiWV1D2yZGvH-9qN0AA;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$DisplayMagnifier$MagnifiedViewport$ZNyFGy-UXiWV1D2yZGvH-9qN0AA;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 747
    return-void
.end method


# virtual methods
.method public destroyWindow()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->releaseSurface()V

    .line 735
    return-void
.end method

.method public drawWindowIfNeededLocked()V
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->drawIfNeeded()V

    .line 731
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 535
    return-void
.end method

.method public getMagnificationSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 714
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 715
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 716
    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 717
    return-void
.end method

.method public isMagnifyingLocked()Z
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$populateWindowsOnScreenLocked$0$AccessibilityController$DisplayMagnifier$MagnifiedViewport(Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "outWindows"    # Landroid/util/SparseArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 740
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-nez v0, :cond_0

    .line 743
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    .line 744
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempLayer:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked()V
    .locals 4

    .line 692
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isForceShowingMagnifiableBoundsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 695
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 696
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 698
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 700
    .end local v0    # "delay":J
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->updateSize()V

    .line 702
    return-void
.end method

.method public recomputeBoundsLocked()V
    .locals 23

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/Display;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 554
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 555
    .local v1, "screenWidth":I
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;

    iget v8, v2, Landroid/graphics/Point;->y:I

    .line 557
    .local v8, "screenHeight":I
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 558
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v10

    .line 559
    .local v10, "availableBounds":Landroid/graphics/Region;
    invoke-virtual {v10, v9, v9, v1, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 561
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mCircularPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v10, v2, v10}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 565
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v11

    .line 566
    .local v11, "nonMagnifiedBounds":Landroid/graphics/Region;
    invoke-virtual {v11, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 568
    iget-object v12, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempWindowStates:Landroid/util/SparseArray;

    .line 569
    .local v12, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 570
    invoke-direct {v0, v12}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->populateWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 572
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 573
    .local v13, "visibleWindowCount":I
    add-int/lit8 v2, v13, -0x1

    move v14, v2

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_6

    .line 574
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 575
    .local v15, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7eb

    if-eq v2, v3, :cond_5

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 578
    goto/16 :goto_2

    .line 582
    :cond_1
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempMatrix:Landroid/graphics/Matrix;

    .line 583
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-static {v15, v7}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 584
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v6

    .line 585
    .local v6, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {v15, v6}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 586
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v5

    .line 587
    .local v5, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v6, v5}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 588
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mTempRectF:Landroid/graphics/RectF;

    .line 589
    .local v4, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 590
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    .line 591
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    .line 590
    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 592
    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 593
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v3

    .line 594
    .local v3, "windowBounds":Landroid/graphics/Region;
    iget v2, v4, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    move-object/from16 v16, v5

    .end local v5    # "touchableFrame":Landroid/graphics/Rect;
    .local v16, "touchableFrame":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object/from16 v17, v6

    .end local v6    # "touchableRegion":Landroid/graphics/Region;
    .local v17, "touchableRegion":Landroid/graphics/Region;
    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v3, v2, v9, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 597
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v9

    .line 598
    .local v9, "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 599
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v11, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 600
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v9, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 602
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 603
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 604
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v10, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 606
    :cond_2
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 607
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 611
    :goto_1
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutoutLw()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    invoke-direct {v0, v15}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getLetterboxBounds(Lcom/android/server/wm/WindowState;)Landroid/graphics/Region;

    move-result-object v2

    .line 613
    .local v2, "letterboxBounds":Landroid/graphics/Region;
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 614
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 618
    .end local v2    # "letterboxBounds":Landroid/graphics/Region;
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v6

    .line 619
    .local v6, "accountedBounds":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 620
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v11, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 621
    const/4 v5, 0x0

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, v6

    move-object/from16 v20, v3

    .end local v3    # "windowBounds":Landroid/graphics/Region;
    .local v20, "windowBounds":Landroid/graphics/Region;
    move v3, v5

    move-object/from16 v21, v4

    .end local v4    # "windowFrame":Landroid/graphics/RectF;
    .local v21, "windowFrame":Landroid/graphics/RectF;
    move/from16 v4, v18

    move v5, v1

    move-object/from16 v18, v6

    .end local v6    # "accountedBounds":Landroid/graphics/Region;
    .local v18, "accountedBounds":Landroid/graphics/Region;
    move v6, v8

    move-object/from16 v22, v7

    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .local v22, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 623
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Region;->isRect()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 624
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v2

    .line 625
    .local v2, "accountedFrame":Landroid/graphics/Rect;
    move-object/from16 v3, v18

    .end local v18    # "accountedBounds":Landroid/graphics/Region;
    .local v3, "accountedBounds":Landroid/graphics/Region;
    invoke-virtual {v3, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 626
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 627
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 628
    goto :goto_3

    .line 623
    .end local v2    # "accountedFrame":Landroid/graphics/Rect;
    .end local v3    # "accountedBounds":Landroid/graphics/Region;
    .restart local v18    # "accountedBounds":Landroid/graphics/Region;
    :cond_4
    move-object/from16 v3, v18

    .line 573
    .end local v9    # "portionOfWindowAlreadyAccountedFor":Landroid/graphics/Region;
    .end local v15    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v16    # "touchableFrame":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v18    # "accountedBounds":Landroid/graphics/Region;
    .end local v20    # "windowBounds":Landroid/graphics/Region;
    .end local v21    # "windowFrame":Landroid/graphics/RectF;
    .end local v22    # "matrix":Landroid/graphics/Matrix;
    :cond_5
    :goto_2
    add-int/lit8 v14, v14, -0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 633
    .end local v14    # "i":I
    :cond_6
    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 635
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    iget v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v5, v1, v4

    sub-int v6, v8, v4

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move v3, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 639
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    .line 640
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 641
    .local v2, "magnifiedChanged":Z
    if-eqz v2, :cond_8

    .line 642
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setBounds(Landroid/graphics/Region;)V

    .line 643
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;

    move-result-object v4

    .line 644
    .local v4, "dirtyRect":Landroid/graphics/Rect;
    iget-boolean v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    if-eqz v5, :cond_7

    .line 645
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 646
    iget v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    sub-int v6, v1, v5

    sub-int v7, v8, v5

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 649
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 651
    :cond_7
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;

    move-result-object v5

    .line 652
    .local v5, "dirtyRegion":Landroid/graphics/Region;
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 653
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 654
    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 655
    invoke-virtual {v5, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 656
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 659
    .end local v5    # "dirtyRegion":Landroid/graphics/Region;
    :goto_4
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 660
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    .line 661
    .local v5, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-static {v6}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 662
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v6}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 664
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 666
    .end local v4    # "dirtyRect":Landroid/graphics/Rect;
    .end local v5    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_8
    return-void
.end method

.method public setMagnifiedRegionBorderShownLocked(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 705
    if-eqz p1, :cond_0

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mOldMagnificationRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V

    .line 710
    return-void
.end method

.method public updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 538
    if-eqz p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 547
    nop

    .line 548
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isForceShowingMagnifiableBoundsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    .line 547
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 550
    :cond_3
    return-void
.end method
