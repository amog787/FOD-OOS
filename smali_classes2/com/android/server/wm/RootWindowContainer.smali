.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mScreenBrightness:F

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field final mTopFocusedAppByProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFocusedDisplayId:I

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 103
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 104
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 108
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 110
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 113
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 138
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 140
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 158
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-static {p0}, Lcom/android/server/wm/OpWmInjector;->initRootWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V

    .line 164
    return-void
.end method

.method private applySurfaceChangesTransaction(Z)V
    .locals 7
    .param p1, "recoveringMemory"    # Z

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 852
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 855
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 856
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 857
    .local v1, "defaultInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 858
    .local v2, "defaultDw":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 859
    .local v3, "defaultDh":I
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    .line 860
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 862
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    .line 863
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 865
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_2

    .line 866
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 867
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    .line 866
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 869
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_3

    .line 870
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 871
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    .line 870
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 874
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 875
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 876
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 877
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)V

    .line 875
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 882
    .end local v5    # "j":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 883
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 884
    return-void
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 4
    .param p1, "surfacePlacer"    # Lcom/android/server/wm/WindowSurfacePlacer;

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 821
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 825
    .local v1, "curDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 828
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_0

    .line 829
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAppTransitionReady"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 834
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppAnimating()Z

    move-result v2

    if-nez v2, :cond_1

    .line 841
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 842
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_1

    .line 843
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAnimStopAndXitionLock"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 820
    .end local v1    # "curDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 848
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "objectId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 314
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 323
    return-void
.end method

.method private handleResizingWindows()V
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 891
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 892
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_0

    .line 895
    goto :goto_1

    .line 897
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 898
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 890
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 900
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic lambda$canShowStrictModeViolation$7(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 461
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dumpWindowsNoHeader$10(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # [I
    .param p3, "dumpAll"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1069
    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1070
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "    "

    invoke-virtual {p4, p1, v3, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1072
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    .line 1074
    :cond_3
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/util/ArrayList;
    .param p2, "objectId"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 315
    if-eqz p0, :cond_0

    .line 316
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 320
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$isAnyNonToastWindowVisibleForUid$3(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "callingUid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$9(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 802
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 803
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 804
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 805
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$4(IZLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "disabled"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 440
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 441
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 443
    :cond_0
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 151
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$6(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 456
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 457
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$5(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "packages"    # Landroid/util/ArraySet;
    .param p1, "suspended"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 448
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 451
    :cond_0
    return-void
.end method

.method static synthetic lambda$writeToProto$11(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1103
    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1104
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 422
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    .local v0, "configChanged":Z
    :goto_0
    if-nez v0, :cond_1

    .line 410
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 413
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .locals 1
    .param p0, "value"    # F

    .line 1008
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .locals 2
    .param p1, "pid"    # I

    .line 461
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-3EhML4qLwBt5KlZ9KF4rJB08Ac;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-3EhML4qLwBt5KlZ9KF4rJB08Ac;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 462
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 466
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 468
    return-void
.end method

.method copyAnimToLayoutParams()Z
    .locals 4

    .line 983
    const/4 v0, 0x0

    .line 985
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 986
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 987
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 988
    const/4 v0, 0x1

    .line 990
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 991
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_0

    .line 993
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 994
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 995
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_2

    .line 996
    const/4 v0, 0x1

    .line 1000
    :cond_2
    :goto_0
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    .line 1001
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1004
    :cond_3
    return v0
.end method

.method createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;
    .locals 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "activityDisplay"    # Lcom/android/server/wm/ActivityDisplay;

    .line 231
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 236
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 238
    .local v1, "existing":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 239
    iput-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 240
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 241
    return-object v1

    .line 244
    :cond_0
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, p1, v3, p2}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityDisplay;)V

    .line 246
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 249
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 251
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 253
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 252
    invoke-virtual {v3, v0, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 254
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 257
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 259
    return-object v2
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1035
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1038
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1040
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    const-string v4, "  "

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1038
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1042
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1043
    :cond_1
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    :goto_1
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    return-void

    .line 1055
    :cond_0
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1057
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1058
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1059
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1057
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    .end local v1    # "displayNdx":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1064
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1078
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1079
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1082
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1048
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1049
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1067
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1068
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1075
    return-void
.end method

.method forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayPolicy;",
            ">;)V"
        }
    .end annotation

    .line 1153
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayPolicy;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1153
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1156
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method forAllDisplays(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;)V"
        }
    .end annotation

    .line 1147
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1147
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1150
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 344
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 345
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_0

    .line 346
    return-object v2

    .line 342
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 1163
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1165
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 1166
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v2

    .line 1163
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1169
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3
    .param p1, "displayId"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 223
    .local v1, "current":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 224
    return-object v1

    .line 221
    .end local v1    # "current":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 1111
    const-string v0, "ROOT"

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 430
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 431
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_0

    .line 432
    return-object v2

    .line 428
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 210
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 211
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 356
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    .line 357
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v2, :cond_0

    .line 358
    return-object v2

    .line 354
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .locals 4
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 366
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 367
    return-object v0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 371
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 372
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 373
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1

    .line 374
    return-object v2

    .line 370
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "current":Lcom/android/server/wm/WindowToken;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 302
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 305
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 306
    const/4 p2, 0x0

    .line 308
    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 310
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 311
    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .line 910
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 911
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 912
    .local v1, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    .line 913
    .local v2, "onScreen":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 914
    .local v3, "canBeSeen":Z
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 915
    .local v4, "privateflags":I
    const/4 v5, 0x0

    .line 917
    .local v5, "displayHasContent":Z
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    const-string v7, "DebugKeepScreenOn"

    if-eqz v6, :cond_0

    .line 918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNotObscuredLocked w: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", w.mHasSurface: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isOnScreen(): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isDisplayedLw(): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.mAttrs.userActivityTimeout: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 918
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 925
    if-nez p3, :cond_1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-ltz v6, :cond_1

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_1

    .line 926
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 927
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_1

    .line 928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserActivityTimeout set to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "WindowManager"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    .line 933
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_2

    .line 934
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 935
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 936
    :cond_2
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_3

    .line 937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNotObscuredLocked: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was holding screen wakelock but no longer has FLAG_KEEP_SCREEN_ON!!! called by"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    .line 939
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 937
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 942
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 945
    :cond_4
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 948
    .local v6, "type":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 949
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget-boolean v9, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_7

    .line 953
    const/16 v9, 0x7e7

    if-eq v6, v9, :cond_5

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_6

    .line 954
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 956
    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    .line 957
    :cond_7
    if-eqz v7, :cond_9

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_8

    if-eqz p2, :cond_9

    const/16 v9, 0x7d9

    if-ne v6, v9, :cond_9

    .line 961
    :cond_8
    const/4 v5, 0x1

    .line 963
    :cond_9
    :goto_1
    const/high16 v9, 0x40000

    and-int/2addr v9, v4

    if-eqz v9, :cond_a

    .line 964
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 968
    .end local v6    # "type":I
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_a
    return v5
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .locals 6
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 482
    const/4 v0, 0x0

    .line 484
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 485
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 486
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 487
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 488
    .local v4, "pendingChanges":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_0

    .line 489
    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 491
    :cond_0
    if-eqz v4, :cond_1

    .line 492
    const/4 v0, 0x1

    .line 485
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "pendingChanges":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method isAnyNonToastWindowVisibleForUid(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 330
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$IlD1lD49ui7gQmU2NkxgnXIhlOo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$IlD1lD49ui7gQmU2NkxgnXIhlOo;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method isLayoutNeeded()Z
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 292
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 294
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const/4 v3, 0x1

    return v3

    .line 292
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "displayNdx":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$new$0$RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 141
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 147
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$reclaimSomeSurfaceMemory$8$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 528
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 531
    :cond_1
    return-void
.end method

.method onChildPositionChanged()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 218
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 417
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 418
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    return-void
.end method

.method onSettingsRetrieved()V
    .locals 8

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 267
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 269
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 271
    .local v3, "changed":Z
    if-nez v3, :cond_0

    .line 272
    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 281
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 283
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 282
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 284
    .local v4, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 267
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "changed":Z
    .end local v4    # "newConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "displayNdx":I
    :cond_2
    return-void
.end method

.method performSurfacePlacement(Z)V
    .locals 3
    .param p1, "recoveringMemory"    # Z

    .line 575
    const-wide/16 v0, 0x20

    const-string v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 577
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 580
    nop

    .line 581
    return-void

    .line 579
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method performSurfacePlacementNoTrace(Z)V
    .locals 16
    .param p1, "recoveringMemory"    # Z

    .line 586
    move-object/from16 v1, p0

    const-string v2, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    const-string v3, "performLayoutAndPlaceSurfaces"

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/4 v4, 0x3

    const-string v5, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 593
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 598
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 599
    .local v4, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 600
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 601
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v7, v6}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 599
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "displayNdx":I
    :cond_2
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 605
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 606
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 607
    iput-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 608
    iput-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 609
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 612
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 613
    .local v8, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 615
    .local v10, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_3
    const-wide/16 v11, 0x20

    const-string v0, "applySurfaceChanges"

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 618
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 620
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 625
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 626
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 624
    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 621
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 622
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v13, "Unhandled exception in Window Manager"

    invoke-static {v5, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 625
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 626
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 629
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 631
    invoke-direct {v1, v10}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 634
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 635
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 636
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_5

    .line 637
    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 640
    :cond_5
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_3
    if-ge v2, v4, :cond_8

    .line 641
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 642
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v11, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v11, :cond_7

    .line 643
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v11, :cond_6

    const-string v11, "Wallpaper may change!  Adjusting"

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_6
    iget v11, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 645
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v11, :cond_7

    .line 646
    iget v11, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v12, "WallpaperMayChange"

    invoke-virtual {v10, v12, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 640
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 652
    .end local v2    # "displayNdx":I
    :cond_8
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_9

    .line 653
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 654
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 658
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 659
    iget v2, v8, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v2, v9

    iput v2, v8, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 660
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_a

    iget v2, v8, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v11, "mLayoutNeeded"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 664
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 666
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "With display frozen, orientationChangeComplete="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_b
    iget-boolean v2, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    const/4 v11, -0x1

    if-eqz v2, :cond_13

    .line 681
    const/4 v2, 0x1

    .line 682
    .local v2, "canSkipWaitForSetRotation":Z
    const/4 v12, 0x0

    .line 683
    .local v12, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v13, v13, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    if-eq v13, v11, :cond_f

    .line 684
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v14, v14, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 685
    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v12

    .line 686
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v13, v13, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v13}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 687
    .local v13, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getOldRotation()I

    move-result v14

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v15

    if-eq v14, v15, :cond_c

    move v14, v9

    goto :goto_4

    :cond_c
    move v14, v6

    .line 688
    .local v14, "isRotationChanged":Z
    :goto_4
    if-eqz v12, :cond_e

    .line 689
    invoke-interface {v12}, Lcom/android/server/wm/IScreenRotationAnimation;->hasSetRotation()Z

    move-result v15

    if-nez v15, :cond_e

    if-nez v14, :cond_d

    goto :goto_5

    :cond_d
    move v15, v6

    goto :goto_6

    :cond_e
    :goto_5
    move v15, v9

    :goto_6
    move v2, v15

    .line 691
    .end local v13    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "isRotationChanged":Z
    :cond_f
    if-eqz v2, :cond_12

    .line 692
    if-eqz v12, :cond_10

    .line 694
    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->finishWaitForSetRotation()V

    .line 696
    :cond_10
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v13, v13, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v13, :cond_11

    .line 697
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v6, v13, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 698
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 699
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 701
    :cond_11
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    goto :goto_7

    .line 703
    :cond_12
    if-eqz v12, :cond_13

    .line 705
    invoke-static {v12}, Lcom/android/server/wm/OpWmInjector;->startWaitForSetRotation(Lcom/android/server/wm/IScreenRotationAnimation;)V

    .line 712
    .end local v2    # "canSkipWaitForSetRotation":Z
    .end local v12    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :cond_13
    :goto_7
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 713
    .local v2, "i":I
    if-lez v2, :cond_17

    .line 715
    :cond_14
    add-int/2addr v2, v11

    .line 716
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    .line 717
    .local v12, "win":Lcom/android/server/wm/WindowState;
    iput-boolean v6, v12, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 718
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 719
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v14, v12, :cond_15

    .line 720
    invoke-virtual {v13, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 722
    :cond_15
    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v14, v12}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 723
    iget v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 725
    :cond_16
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 726
    iget-object v14, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 727
    .end local v12    # "win":Lcom/android/server/wm/WindowState;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-gtz v2, :cond_14

    .line 728
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 732
    :cond_17
    const/4 v7, 0x0

    .local v7, "displayNdx":I
    :goto_8
    if-ge v7, v4, :cond_18

    .line 733
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    .line 734
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 732
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 737
    .end local v7    # "displayNdx":I
    :cond_18
    const/4 v7, 0x0

    .restart local v7    # "displayNdx":I
    :goto_9
    if-ge v7, v4, :cond_1a

    .line 738
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    .line 739
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v13, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v13, :cond_19

    .line 740
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 737
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 744
    .end local v7    # "displayNdx":I
    :cond_1a
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v7, v12}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 745
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v7, :cond_1d

    .line 746
    iget v7, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v12, 0x0

    cmpg-float v12, v7, v12

    if-ltz v12, :cond_1c

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_1b

    goto :goto_a

    .line 747
    :cond_1b
    invoke-static {v7}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v11

    goto :goto_b

    :cond_1c
    :goto_a
    nop

    :goto_b
    move v7, v11

    .line 751
    .local v7, "brightness":I
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 752
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v11, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 755
    .end local v7    # "brightness":I
    :cond_1d
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v6, :cond_1e

    .line 756
    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 757
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x6

    .line 759
    iget-boolean v7, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 757
    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 762
    :cond_1e
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_20

    .line 763
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_1f

    const-string v3, "Performing post-rotate rotation"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 767
    :cond_20
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v3, :cond_21

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v3, :cond_22

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_22

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v3, :cond_22

    .line 770
    :cond_21
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 773
    :cond_22
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 774
    .local v3, "N":I
    if-lez v3, :cond_26

    .line 775
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v6, v6

    if-ge v6, v3, :cond_23

    .line 776
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v7, v3, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 778
    :cond_23
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 779
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 780
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v6, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v3, :cond_25

    .line 782
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v7, v7, v2

    .line 783
    .local v7, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 784
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    .line 785
    .local v11, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v11, :cond_24

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    .line 786
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    .end local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 790
    :cond_25
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    .local v7, "j":I
    :goto_d
    if-ltz v7, :cond_26

    .line 791
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 792
    .local v11, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v11, v9}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 790
    .end local v11    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    .line 797
    .end local v6    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v7    # "j":I
    :cond_26
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    .local v6, "displayNdx":I
    :goto_e
    if-ltz v6, :cond_27

    .line 798
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    .line 797
    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    .line 801
    .end local v6    # "displayNdx":I
    :cond_27
    sget-object v6, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$7XcqfZjQLAbjpIyed3iDnVtZro4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$7XcqfZjQLAbjpIyed3iDnVtZro4;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 809
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 811
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 813
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v6, :cond_28

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performSurfacePlacementInner exit: animating="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 815
    invoke-virtual {v7}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 813
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_28
    return-void

    .line 624
    .end local v0    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v2    # "i":I
    .end local v3    # "N":I
    :goto_f
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 625
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 626
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_29

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    throw v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent;

    .line 1124
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1125
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "includingParents"    # Z

    .line 1116
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1117
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootActivityContainer;->onChildPositionChanged(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1120
    :cond_0
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 91
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 17
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    .line 501
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 502
    .local v4, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v5, 0x0

    .line 503
    .local v5, "leakedSurface":Z
    const/4 v6, 0x0

    .line 505
    .local v6, "killedApps":Z
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v0, v8

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 506
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v0, v9

    const/4 v7, 0x2

    aput-object p2, v0, v7

    .line 505
    const/16 v7, 0x7918

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 513
    .local v10, "callingIdentity":J
    :try_start_0
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v7, v0

    .line 515
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 516
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v12

    or-int/2addr v5, v12

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "displayNdx":I
    :cond_0
    if-nez v5, :cond_5

    .line 520
    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v12, v0

    .line 522
    .local v12, "pidCandidates":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    move v13, v6

    move v6, v0

    .local v6, "displayNdx":I
    .local v13, "killedApps":Z
    :goto_1
    if-ge v6, v7, :cond_4

    .line 523
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$yUm1jRpi8w1ifmlGbgy1F1iTxu4;

    invoke-direct {v14, v1, v12}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$yUm1jRpi8w1ifmlGbgy1F1iTxu4;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 533
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 534
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v14, v0

    .line 535
    .local v14, "pids":[I
    move v0, v8

    .local v0, "i":I
    :goto_2
    array-length v15, v14

    if-ge v0, v15, :cond_1

    .line 536
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 539
    .end local v0    # "i":I
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v9, p3

    :try_start_3
    invoke-interface {v0, v14, v15, v9}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 540
    const/4 v0, 0x1

    move v13, v0

    .line 543
    :cond_2
    goto :goto_3

    .line 568
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v14    # "pids":[I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 542
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .restart local v14    # "pids":[I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v9, p3

    goto :goto_3

    .line 533
    .end local v14    # "pids":[I
    :cond_3
    move/from16 v9, p3

    .line 522
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto :goto_1

    .line 568
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :catchall_1
    move-exception v0

    move/from16 v9, p3

    :goto_4
    move v6, v13

    goto :goto_9

    .line 522
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v9, p3

    move v6, v13

    goto :goto_5

    .line 519
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v13    # "killedApps":Z
    .local v6, "killedApps":Z
    :cond_5
    move/from16 v9, p3

    .line 548
    :goto_5
    if-nez v5, :cond_6

    if-eqz v6, :cond_a

    .line 551
    :cond_6
    :try_start_4
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-eqz v4, :cond_9

    .line 554
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "RECOVER DESTROY"

    invoke-static {v0, v3, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 556
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 557
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    .line 558
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 563
    :cond_9
    :try_start_5
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 565
    goto :goto_6

    .line 564
    :catch_2
    move-exception v0

    .line 568
    .end local v7    # "numDisplays":I
    :cond_a
    :goto_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    nop

    .line 571
    if-nez v5, :cond_c

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v16, v8

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v16, 0x1

    :goto_8
    return v16

    .line 568
    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move/from16 v9, p3

    :goto_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1134
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1135
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1139
    :cond_0
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 91
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .locals 5

    .line 471
    const-string v0, "<<< CLOSE TRANSACTION removeReplacedWindows"

    const-string v1, "removeReplacedWindows"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_0

    const-string v2, ">>> OPEN TRANSACTION removeReplacedWindows"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 474
    :try_start_0
    sget-object v2, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 477
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_1

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    return-void

    .line 476
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 477
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v2
.end method

.method scheduleAnimation()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1130
    return-void
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 388
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 389
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 390
    .local v1, "configChanged":Z
    :goto_0
    if-nez v1, :cond_1

    .line 391
    return-void

    .line 394
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 396
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    .line 399
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 403
    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    .line 405
    return-void
.end method

.method setRootActivityContainer(Lcom/android/server/wm/RootActivityContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/android/server/wm/RootActivityContainer;

    .line 167
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootActivityContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method setSecureSurfaceState(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z

    .line 439
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vMW2dyMvZQ0PDhptvNKN5WXpK_w;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vMW2dyMvZQ0PDhptvNKN5WXpK_w;-><init>(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 444
    return-void
.end method

.method updateAppOpsState()V
    .locals 2

    .line 455
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$auMc5HUrsvttHP3CYY9dttuuvi8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$auMc5HUrsvttHP3CYY9dttuuvi8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 458
    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .locals 10
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "changed":Z
    const/4 v1, -0x1

    .line 177
    .local v1, "topFocusedDisplayId":I
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ltz v2, :cond_3

    .line 178
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 179
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v5

    or-int/2addr v0, v5

    .line 180
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 181
    .local v5, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_2

    .line 182
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    .line 183
    .local v6, "pidOfNewFocus":I
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 184
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    if-ne v1, v3, :cond_1

    .line 187
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 189
    .end local v6    # "pidOfNewFocus":I
    :cond_1
    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_1

    iget-object v3, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 177
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "newFocus":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 197
    const/4 v1, 0x0

    .line 199
    :cond_4
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq v2, v1, :cond_5

    .line 200
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 203
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New topFocusedDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    return v0
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .locals 2
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 447
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 452
    return-void
.end method

.method updateRotationUnchecked()Z
    .locals 4

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 974
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 975
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 976
    const/4 v0, 0x1

    .line 973
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 979
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 1088
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    return-void

    .line 1092
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1093
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1094
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_1

    .line 1095
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1096
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1097
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1098
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/DisplayContent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1096
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1101
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    if-nez p4, :cond_2

    .line 1102
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1106
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1107
    return-void
.end method
