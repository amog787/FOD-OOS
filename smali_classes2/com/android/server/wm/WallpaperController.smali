.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLastWallpaperZoomOut:F

.field private final mMaxWallpaperScale:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mShouldUpdateZoom:Z

.field private mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 79
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 81
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 82
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 83
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 84
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 86
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 87
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 105
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 122
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$1;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 124
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 247
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WallpaperController$0Scukj2yhz26p26xa_96t0qdaCE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$0Scukj2yhz26p26xa_96t0qdaCE;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    .line 255
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 256
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 257
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 258
    const v1, 0x10500c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 259
    return-void
.end method

.method private canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "wallpaperWindowState"    # Lcom/android/server/wm/WindowState;

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 817
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 818
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    return v2

    .line 823
    :cond_1
    if-nez p1, :cond_3

    .line 824
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_2

    .line 825
    const-string v0, "No visible wallpaper to screenshot"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_2
    return v2

    .line 829
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private computeLastWallpaperZoomOut()V
    .locals 3

    .line 884
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    if-eqz v0, :cond_0

    .line 885
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    .line 889
    :cond_0
    return-void
.end method

.method private findWallpaperTarget()V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 573
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 585
    :cond_1
    return-void
.end method

.method private getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 4

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 861
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 862
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    new-instance v3, Lcom/android/server/wm/-$$Lambda$WallpaperController$_ZznVu8nX-g34s30xj77tgadyZA;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$_ZznVu8nX-g34s30xj77tgadyZA;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 860
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 872
    .end local v0    # "curTokenNdx":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 588
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .line 288
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallpaper vis: target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "prevWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 643
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 504
    .local v0, "target":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_b

    .line 505
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 506
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_0

    .line 507
    :cond_0
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 508
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 510
    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 511
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_1

    .line 512
    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 513
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 515
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 516
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_4

    .line 517
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 518
    :cond_4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_5

    .line 519
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 521
    :cond_5
    :goto_2
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_6

    .line 522
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 523
    :cond_6
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_7

    .line 524
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 526
    :cond_7
    :goto_3
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    .line 527
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_4

    .line 528
    :cond_8
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_9

    .line 529
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 531
    :cond_9
    :goto_4
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    .line 532
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    .line 533
    :cond_a
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    .line 534
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 538
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_6
    if-ltz v1, :cond_c

    .line 539
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 538
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 541
    .end local v1    # "curTokenNdx":I
    :cond_c
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 677
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 679
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    .line 680
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 677
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 682
    .end local v0    # "curTokenNdx":I
    :cond_0
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 10
    .param p1, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 595
    iget-object v0, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 597
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-eq v1, v0, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    goto/16 :goto_5

    .line 619
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New wallpaper target: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prevTarget: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 625
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 626
    .local v1, "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 628
    if-eqz v0, :cond_f

    if-nez v1, :cond_3

    goto/16 :goto_4

    .line 634
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 635
    .local v2, "oldAnim":Z
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    .line 636
    .local v4, "foundAnim":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New animation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " old animation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_4
    if-eqz v4, :cond_e

    if-nez v2, :cond_5

    goto/16 :goto_3

    .line 643
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$WallpaperController$BBasRkLKZIyG7orBtnzZo0qYk68;

    invoke-direct {v6, v1}, Lcom/android/server/wm/-$$Lambda$WallpaperController$BBasRkLKZIyG7orBtnzZo0qYk68;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_6

    .line 644
    return-void

    .line 647
    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v5, :cond_7

    move v5, v6

    goto :goto_0

    :cond_7
    move v5, v7

    .line 649
    .local v5, "newTargetHidden":Z
    :goto_0
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    move v6, v7

    .line 652
    .local v6, "oldTargetHidden":Z
    :goto_1
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animating wallpapers: old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hidden="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " new: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_9
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 658
    if-eqz v5, :cond_b

    if-nez v6, :cond_b

    .line 659
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_a

    const-string v7, "Old wallpaper still the target."

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_a
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 663
    :cond_b
    if-ne v5, v6, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 664
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 665
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 666
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 670
    :cond_c
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 673
    :cond_d
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 674
    return-void

    .line 640
    .end local v5    # "newTargetHidden":Z
    .end local v6    # "oldTargetHidden":Z
    :cond_e
    :goto_3
    return-void

    .line 629
    .end local v2    # "oldAnim":Z
    .end local v4    # "foundAnim":Z
    :cond_f
    :goto_4
    return-void

    .line 600
    .end local v1    # "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_10
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_11

    .line 601
    return-void

    .line 605
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_13

    .line 606
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_12

    const-string v1, "No longer animating wallpaper targets!"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_12
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 608
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 610
    :cond_13
    return-void
.end method

.method private zoomOutToScale(F)F
    .locals 3
    .param p1, "zoom"    # F

    .line 892
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    return-void
.end method

.method adjustWallpaperWindows()V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 689
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 695
    .local v0, "visible":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_1

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper visibility: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " at display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 697
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    if-eqz v0, :cond_5

    .line 701
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 703
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 706
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 707
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 708
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 710
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_4

    .line 711
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 713
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_5

    .line 714
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 718
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    .line 720
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New wallpaper: target="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " prev="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_6
    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 783
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 784
    .local v0, "adjust":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 785
    const/4 v0, 0x1

    goto :goto_1

    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 788
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 789
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    const/4 v0, 0x1

    .line 791
    goto :goto_1

    .line 787
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 796
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 799
    :cond_3
    return-void
.end method

.method canScreenshotWallpaper()Z
    .locals 1

    .line 812
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    .line 544
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 545
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 896
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 897
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 901
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 902
    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 903
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_2

    .line 905
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    const-string v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 907
    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 909
    :cond_2
    return-void
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 315
    :cond_0
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 327
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 334
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 335
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 336
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    .line 337
    .local v3, "isAnimatingWithRecentsComponent":Z
    :goto_0
    const-string v4, "WindowManager"

    if-eqz v3, :cond_5

    .line 338
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideWallpapers skip for recents animating target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_4
    return-void

    .line 346
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v5, p1, :cond_6

    move v1, v2

    .line 347
    .local v1, "wasDeferred":Z
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 348
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 349
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    const-string v6, "hideWallpapers"

    invoke-virtual {v2, v1, v6}, Lcom/android/server/wm/WallpaperWindowToken;->hideWallpaperToken(ZLjava/lang/String;)V

    .line 350
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hiding wallpaper "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " prev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    .line 353
    const-string v8, "  "

    invoke-static {v7, v8}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 356
    .end local v5    # "i":I
    :cond_8
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0
.end method

.method isWallpaperVisible()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getTopVisibleWallpaper$3$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 863
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 864
    .local v0, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 865
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 866
    const/4 v1, 0x1

    return v1

    .line 868
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$new$0$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .locals 13
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 125
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 130
    :cond_1
    return v2

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 134
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x3

    const-string v5, "WindowManager"

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 135
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping hidden and not animating token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    return v2

    .line 141
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v6, "Win "

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": isOnScreen="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDrawState="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 152
    :cond_6
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 154
    .local v0, "animatingContainer":Lcom/android/server/wm/WindowContainer;
    :goto_0
    if-eqz v0, :cond_8

    .line 155
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 156
    invoke-static {v7}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v0, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_8

    .line 167
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/server/wm/OpScreenCompatInjector;->isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result v7

    if-nez v7, :cond_8

    move v7, v3

    goto :goto_1

    :cond_8
    move v7, v2

    .line 171
    .local v7, "keyguardGoingAwayWithWallpaper":Z
    :goto_1
    const/4 v8, 0x0

    .line 172
    .local v8, "needsShowWhenLockedWallpaper":Z
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x80000

    and-int/2addr v9, v10

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 173
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 174
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 177
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v9}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_9

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 178
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    move v9, v2

    goto :goto_3

    :cond_a
    :goto_2
    move v9, v3

    :goto_3
    move v8, v9

    .line 183
    :cond_b
    if-nez v8, :cond_d

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_d

    .line 184
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v9, v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 185
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 186
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v10

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 187
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 188
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 189
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 190
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 191
    const-string v1, "Keep the wallpaper as target if changing focus"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v8, 0x1

    .line 196
    :cond_d
    if-nez v7, :cond_e

    if-eqz v8, :cond_10

    .line 205
    :cond_e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7d5

    if-ne v1, v9, :cond_f

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v9, "com.android.server.telecom"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 206
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_10

    .line 207
    const-string v1, "Skip showing wallpaper when start toast by telecom"

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 210
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 215
    :cond_10
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 216
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 217
    .local v1, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_11

    .line 218
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 219
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v9

    if-eqz v9, :cond_11

    move v9, v3

    goto :goto_5

    :cond_11
    move v9, v2

    .line 220
    .local v9, "animationWallpaper":Z
    :goto_5
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    if-nez v10, :cond_13

    if-eqz v9, :cond_12

    goto :goto_6

    :cond_12
    move v10, v2

    goto :goto_7

    :cond_13
    :goto_6
    move v10, v3

    .line 222
    .local v10, "hasWallpaper":Z
    :goto_7
    if-eqz v1, :cond_14

    .line 223
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_14

    move v11, v3

    goto :goto_8

    :cond_14
    move v11, v2

    .line 224
    .local v11, "isRecentsTransitionTarget":Z
    :goto_8
    if-eqz v11, :cond_16

    .line 225
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found recents animation wallpaper target: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 227
    return v3

    .line 228
    :cond_16
    if-eqz v10, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v12

    if-eqz v12, :cond_1a

    iget-object v12, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v12, p1, :cond_17

    .line 229
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 230
    :cond_17
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found wallpaper target: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 232
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_19

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 235
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": token animating, looking behind."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_19
    return v3

    .line 241
    :cond_1a
    return v2
.end method

.method public synthetic lambda$new$1$WallpaperController(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 248
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 249
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 252
    :cond_0
    return-void
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 3

    .line 725
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 726
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 727
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "WindowManager"

    const-string v2, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 736
    :cond_1
    return v1

    .line 738
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 807
    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 6

    .line 838
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 839
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 840
    return-object v2

    .line 843
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 844
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 846
    nop

    .line 847
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 846
    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    .line 849
    .local v3, "wallpaperBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v3, :cond_1

    .line 850
    const-string v4, "WindowManager"

    const-string v5, "Failed to screenshot wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-object v2

    .line 853
    :cond_1
    nop

    .line 854
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 853
    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 487
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_2

    .line 488
    :cond_0
    move/from16 v2, p7

    .line 489
    .local v2, "doWait":Z
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "curTokenNdx":I
    :goto_0
    if-ltz v3, :cond_1

    .line 490
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 491
    .local v4, "token":Lcom/android/server/wm/WallpaperWindowToken;
    move-object v5, v4

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 489
    .end local v4    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 494
    .end local v3    # "curTokenNdx":I
    :cond_1
    nop

    .line 499
    .end local v2    # "doWait":Z
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "shouldZoom"    # Z

    .line 471
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_0

    .line 472
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 475
    :cond_0
    return-void
.end method

.method setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "zoom"    # F

    .line 463
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 468
    :cond_0
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 478
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    .line 479
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 480
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 481
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 483
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .line 453
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 455
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 456
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 457
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 458
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 460
    :cond_1
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 283
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 285
    .end local v0    # "curTokenNdx":I
    :cond_0
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .locals 26
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 359
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 360
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v11, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 361
    .local v11, "dw":I
    iget v12, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 363
    .local v12, "dh":I
    const/4 v0, 0x0

    .line 364
    .local v0, "xOffset":I
    const/4 v3, 0x0

    .line 365
    .local v3, "yOffset":I
    const/4 v4, 0x0

    .line 368
    .local v4, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    move v13, v5

    .line 369
    .local v13, "defaultWallpaperX":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    move v5, v13

    :goto_1
    move v14, v5

    .line 370
    .local v14, "wpx":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    :goto_2
    move v15, v5

    .line 371
    .local v15, "wpxs":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    sub-int v8, v5, v11

    .line 372
    .local v8, "availw":I
    const/high16 v16, 0x3f000000    # 0.5f

    if-lez v8, :cond_3

    int-to-float v5, v8

    mul-float/2addr v5, v14

    add-float v5, v5, v16

    float-to-int v5, v5

    neg-int v5, v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 373
    .local v5, "offset":I
    :goto_3
    iget v6, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v9, -0x80000000

    if-eq v6, v9, :cond_4

    .line 374
    add-int/2addr v5, v6

    .line 376
    :cond_4
    move v6, v5

    .line 378
    .end local v0    # "xOffset":I
    .local v6, "xOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_5

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_6

    .line 379
    :cond_5
    iput v14, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 380
    iput v15, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 381
    const/4 v4, 0x1

    .line 384
    :cond_6
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v20, v0, v7

    if-ltz v20, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v0, v16

    :goto_4
    move/from16 v20, v0

    .line 385
    .local v20, "wpy":F
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_8

    goto :goto_5

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    :goto_5
    move v7, v0

    .line 386
    .local v7, "wpys":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v9

    sub-int v9, v0, v12

    .line 387
    .local v9, "availh":I
    if-lez v9, :cond_9

    int-to-float v0, v9

    move-object/from16 v21, v10

    move/from16 v10, v20

    .end local v20    # "wpy":F
    .local v10, "wpy":F
    .local v21, "displayInfo":Landroid/view/DisplayInfo;
    mul-float/2addr v0, v10

    add-float v0, v0, v16

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_6

    .end local v21    # "displayInfo":Landroid/view/DisplayInfo;
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "wpy":F
    :cond_9
    move-object/from16 v21, v10

    move/from16 v10, v20

    .end local v20    # "wpy":F
    .local v10, "wpy":F
    .restart local v21    # "displayInfo":Landroid/view/DisplayInfo;
    const/4 v0, 0x0

    .line 388
    .end local v5    # "offset":I
    .local v0, "offset":I
    :goto_6
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    move/from16 v16, v3

    const/high16 v3, -0x80000000

    .end local v3    # "yOffset":I
    .local v16, "yOffset":I
    if-eq v5, v3, :cond_a

    .line 389
    add-int/2addr v0, v5

    move/from16 v17, v0

    goto :goto_7

    .line 388
    :cond_a
    move/from16 v17, v0

    .line 391
    .end local v0    # "offset":I
    .local v17, "offset":I
    :goto_7
    move/from16 v5, v17

    .line 393
    .end local v16    # "yOffset":I
    .local v5, "yOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_b

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_c

    .line 394
    :cond_b
    iput v10, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 395
    iput v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 396
    const/4 v4, 0x1

    .line 399
    :cond_c
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    .line 400
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 401
    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_8

    .line 399
    :cond_d
    move/from16 v16, v4

    .line 404
    .end local v4    # "rawChanged":Z
    .local v16, "rawChanged":Z
    :goto_8
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 405
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v3, :cond_e

    .line 406
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-direct {v1, v3}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v3

    goto :goto_9

    :cond_e
    const/high16 v3, 0x3f800000    # 1.0f

    .line 404
    :goto_9
    invoke-virtual {v0, v6, v5, v3}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(IIF)Z

    move-result v18

    .line 408
    .local v18, "changed":Z
    if-eqz v16, :cond_15

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    .line 411
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    const-string v4, "WindowManager"

    if-eqz v0, :cond_f

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report new wp offset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " zoom="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_f
    if-eqz p2, :cond_10

    .line 416
    iput-object v2, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    .line 444
    :catch_0
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    goto/16 :goto_c

    .line 418
    :cond_10
    :goto_a
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    move/from16 v19, v5

    .end local v5    # "yOffset":I
    .local v19, "yOffset":I
    :try_start_3
    iget v5, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    move/from16 v20, v6

    .end local v6    # "xOffset":I
    .local v20, "xOffset":I
    :try_start_4
    iget v6, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    move/from16 v22, v7

    .end local v7    # "wpys":F
    .local v22, "wpys":F
    :try_start_5
    iget v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v23, v8

    .end local v8    # "availw":I
    .local v23, "availw":I
    :try_start_6
    iget v8, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v24, v10

    move-object v10, v4

    .end local v10    # "wpy":F
    .local v24, "wpy":F
    move v4, v0

    move/from16 v25, v9

    .end local v9    # "availh":I
    .local v25, "availh":I
    move/from16 v9, p2

    :try_start_7
    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 423
    if-eqz p2, :cond_14

    .line 424
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_14

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 426
    .local v3, "start":J
    iget-wide v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_13

    .line 429
    const-wide/16 v5, 0x96

    :try_start_8
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_11

    const-string v0, "Waiting for offset complete..."

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 433
    goto :goto_b

    .line 432
    :catch_1
    move-exception v0

    .line 434
    :goto_b
    :try_start_9
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_12

    const-string v0, "Offset complete!"

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_12
    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_13

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput-wide v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 441
    :cond_13
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 445
    .end local v3    # "start":J
    :cond_14
    goto :goto_c

    .line 444
    :catch_2
    move-exception v0

    goto :goto_c

    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_3
    move-exception v0

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_c

    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_4
    move-exception v0

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_c

    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_5
    move-exception v0

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_c

    .end local v20    # "xOffset":I
    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v6    # "xOffset":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_6
    move-exception v0

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v6    # "xOffset":I
    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v20    # "xOffset":I
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_c

    .end local v19    # "yOffset":I
    .end local v20    # "xOffset":I
    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v5    # "yOffset":I
    .restart local v6    # "xOffset":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_7
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v5    # "yOffset":I
    .end local v6    # "xOffset":I
    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v19    # "yOffset":I
    .restart local v20    # "xOffset":I
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_c

    .line 408
    .end local v19    # "yOffset":I
    .end local v20    # "xOffset":I
    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v5    # "yOffset":I
    .restart local v6    # "xOffset":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :cond_15
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .line 448
    .end local v5    # "yOffset":I
    .end local v6    # "xOffset":I
    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v19    # "yOffset":I
    .restart local v20    # "xOffset":I
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    :goto_c
    return v18
.end method

.method updateWallpaperVisibility()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 304
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 306
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperVisibility(Z)V

    .line 304
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 308
    .end local v1    # "curTokenNdx":I
    :cond_0
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 549
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 551
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 553
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 557
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 561
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 9

    .line 742
    const/4 v0, 0x1

    .line 743
    .local v0, "transitionReady":Z
    const/4 v1, 0x1

    .line 744
    .local v1, "wallpaperReady":Z
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 745
    .local v2, "curTokenIndex":I
    :goto_0
    const/16 v4, 0x27

    if-ltz v2, :cond_3

    if-eqz v1, :cond_3

    .line 746
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 747
    .local v5, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 749
    const/4 v1, 0x0

    .line 750
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 752
    const/4 v0, 0x0

    .line 754
    :cond_0
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_1

    .line 755
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 756
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 757
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 758
    invoke-virtual {v6, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    .line 757
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 762
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_3

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "WindowManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 745
    .end local v5    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 770
    .end local v2    # "curTokenIndex":I
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 771
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 772
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 775
    :cond_4
    return v0
.end method
