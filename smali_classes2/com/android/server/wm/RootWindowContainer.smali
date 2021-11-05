.class public Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;,
        Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;,
        Lcom/android/server/wm/RootWindowContainer$MyHandler;,
        Lcom/android/server/wm/RootWindowContainer$FindTaskResult;,
        Lcom/android/server/wm/RootWindowContainer$AnyTaskForIdMatchTaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;"
    }
.end annotation


# static fields
.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "WindowManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "WindowManager"

.field static final TAG_STATES:Ljava/lang/String; = "WindowManager"

.field static final TAG_TASKS:Ljava/lang/String; = "WindowManager"

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

.field mCurrentUser:I

.field private mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field mDefaultMinSizeOfResizeableTaskDp:I

.field private mDestroyAllActivitiesReason:Ljava/lang/String;

.field private final mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private mPowerHintSent:Z

.field private mScreenBrightnessOverride:F

.field mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mTaskLayersChanged:Z

.field private mTmpBoolean:Z

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field private mTmpRemoteException:Landroid/os/RemoteException;

.field private mTmpTaskLayerRank:I

.field final mTopFocusedAppByProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFocusedDisplayId:I

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field mWallpaperActionPending:Z

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 464
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 472
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 192
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 193
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 194
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 198
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 200
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 203
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 221
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 224
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 257
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 262
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    .line 276
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 279
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 286
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    .line 307
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 455
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 3244
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 473
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 474
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 475
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 476
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 477
    iput-object p0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 481
    invoke-static {p0}, Lcom/android/server/wm/OpWmInjector;->initRootWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V

    .line 483
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RootWindowContainer;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->destroyActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RootWindowContainer;
    .param p1, "x1"    # Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)V

    return-void
.end method

.method private applySurfaceChangesTransaction()V
    .locals 7

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1089
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1092
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1093
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1094
    .local v1, "defaultInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1095
    .local v2, "defaultDw":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1096
    .local v3, "defaultDh":I
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    .line 1097
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/Watermark;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1099
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    .line 1100
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1102
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_2

    .line 1103
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1104
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1103
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V

    .line 1107
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 1108
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 1109
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 1110
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction()V

    .line 1108
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1115
    .end local v5    # "j":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1116
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1117
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks()V
    .locals 4

    .line 3621
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3622
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3624
    .local v1, "minimalSize":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3626
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v1, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 3627
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I

    .line 3034
    if-nez p1, :cond_0

    .line 3035
    const/4 v0, 0x1

    return v0

    .line 3037
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 4
    .param p1, "surfacePlacer"    # Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1057
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1058
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1062
    .local v1, "curDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 1065
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_0

    .line 1066
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAppTransitionReady"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1071
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppTransitioning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 1079
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_1

    .line 1080
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAnimStopAndXitionLock"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1057
    .end local v1    # "curDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1085
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2781
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v0, p1, :cond_0

    .line 2782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2784
    :cond_0
    return-void
.end method

.method private destroyActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2792
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2794
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2794
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 2799
    return-void

    .line 2792
    :cond_2
    :goto_0
    return-void
.end method

.method private getStack(III)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 2507
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2508
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 2509
    const/4 v1, 0x0

    return-object v1

    .line 2511
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method private getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2515
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2516
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 2517
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2518
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 2519
    iget v2, p1, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    iput v2, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 2520
    iget-object v2, p1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityManager$StackInfo;->stackToken:Landroid/window/WindowContainerToken;

    .line 2521
    iget v2, p1, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    iput v2, v1, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 2522
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 2525
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput v4, v1, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 2526
    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2528
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDescendantTaskCount()I

    move-result v4

    .line 2529
    .local v4, "numTasks":I
    new-array v5, v4, [I

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 2530
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 2531
    new-array v5, v4, [Landroid/graphics/Rect;

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 2532
    new-array v5, v4, [I

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 2533
    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v3, v5, v3

    .line 2535
    .local v5, "currentIndex":[I
    sget-object v6, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JZALJLRYsvQWgNnzHdoTfj_f3QY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JZALJLRYsvQWgNnzHdoTfj_f3QY;

    const-class v7, Lcom/android/server/wm/Task;

    .line 2536
    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    .line 2535
    invoke-static {v6, v7, v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    .line 2538
    .local v6, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v6, v3}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2539
    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2541
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2542
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :cond_2
    iput-object v2, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 2543
    return-object v1
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

    .line 589
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 598
    return-void
.end method

.method private static handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 2844
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_0

    return-void

    .line 2845
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2846
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2845
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2848
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2850
    const-string v0, "handleAppCrashed"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2851
    return-void
.end method

.method private handleResizingWindows()V
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1124
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1125
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_0

    .line 1128
    goto :goto_1

    .line 1130
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 1131
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1123
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1133
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowingMode"    # I

    .line 3112
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    .line 3118
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3120
    return v2

    .line 3124
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3125
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p3, v1, :cond_1

    if-nez p3, :cond_2

    .line 3128
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 3130
    :cond_2
    return v2

    .line 3116
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeDream()Z

    move-result v0

    return v0

    .line 3115
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 3114
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 3113
    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$0ZupnQyxl7yZKgMmf2zwvykG50s(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public static synthetic lambda$5fbF65VSmaJkPHxEhceOGTat7JE(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->startActivityForAttachedApplicationIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JZALJLRYsvQWgNnzHdoTfj_f3QY(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$StackInfo;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->processTaskForStackInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$StackInfo;[I)V

    return-void
.end method

.method public static synthetic lambda$ONUnDkI6axONU1lRFnZMH5NkbZI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V

    return-void
.end method

.method public static synthetic lambda$SVJucJygDtyF-4eKB9wPXWaNBDM(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayerForActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic lambda$addStartingWindowsForVisibleActivities$10(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2741
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 2742
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2744
    :cond_0
    return-void
.end method

.method public static synthetic lambda$bRRfWu3QSW54eS51jCvFD02TPt8(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$canShowStrictModeViolation$6(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 731
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

.method static synthetic lambda$dumpActivities$14(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3713
    const-string v0, "  Resumed activities in task display areas (from top to bottom):"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    return-void
.end method

.method static synthetic lambda$dumpActivities$15(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3722
    const-string v0, "  Activities waiting to finish:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$16(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3726
    const-string v0, "  Activities waiting to stop:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpWindowsNoHeader$9(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # [I
    .param p3, "dumpAll"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1295
    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1296
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

    .line 1297
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

    .line 1298
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    .line 1300
    :cond_3
    return-void
.end method

.method public static synthetic lambda$fL0RxmEBMlnXFmjHLkBJ9jk9drs(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/util/ArrayList;
    .param p2, "objectId"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 590
    if-eqz p0, :cond_0

    .line 591
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_0
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 595
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$lockAllProfileTasks$12(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3463
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$8(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 1041
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$3(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 710
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    if-ne p0, v0, :cond_0

    .line 711
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 466
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 469
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 727
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "packages"    # Landroid/util/ArraySet;
    .param p1, "suspended"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 718
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method private static matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I
    .param p2, "compareIntentFilters"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "cls"    # Landroid/content/ComponentName;

    .line 2870
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2872
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2873
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2874
    return v0

    .line 2879
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2880
    return v0

    .line 2883
    :cond_2
    return v1

    .line 2870
    :cond_3
    :goto_0
    return v1
.end method

.method private prepareFreezingTaskBounds()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 703
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 706
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static processTaskForStackInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$StackInfo;[I)V
    .locals 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "info"    # Landroid/app/ActivityManager$StackInfo;
    .param p2, "currentIndex"    # [I

    .line 2548
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2549
    .local v1, "i":I
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput v3, v2, v1

    .line 2550
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2551
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2552
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2553
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "unknown"

    :goto_0
    aput-object v3, v2, v1

    .line 2554
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2555
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    aput v3, v2, v1

    .line 2556
    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 2557
    return-void
.end method

.method private rankTaskLayerForActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2765
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 2766
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v1, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    goto :goto_0

    .line 2768
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 2770
    :goto_0
    return-void
.end method

.method private removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)V
    .locals 2
    .param p1, "token"    # Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;

    .line 2728
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2730
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;->access$100(Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2731
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2732
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2733
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2734
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 2737
    :cond_0
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 689
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 690
    .local v0, "configChanged":Z
    :goto_0
    if-nez v0, :cond_1

    .line 691
    return-void

    .line 693
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 694
    return-void
.end method

.method private shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3235
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3236
    :cond_0
    const-string v0, "assist"

    if-ne p2, v0, :cond_1

    return v1

    .line 3241
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    return v0
.end method

.method private startActivityForAttachedApplicationIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "top"    # Lcom/android/server/wm/ActivityRecord;

    .line 2016
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_3

    iget v0, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v2, :cond_3

    iget-object v0, p2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 2017
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2022
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-ne p3, p1, :cond_1

    .line 2023
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 2022
    :goto_0
    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2024
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    :cond_2
    nop

    .line 2032
    return v1

    .line 2026
    :catch_0
    move-exception v1

    .line 2027
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2028
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2027
    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2029
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    .line 2030
    return v0

    .line 2018
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return v1
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 2625
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 2626
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 2627
    return-void
.end method

.method private static updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3333
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3334
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 3336
    :cond_0
    return-void
.end method


# virtual methods
.method addStartingWindowsForVisibleActivities()V
    .locals 1

    .line 2740
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$07q9Iva7qby1Cfkq4KztBB6CisE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$07q9Iva7qby1Cfkq4KztBB6CisE;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2745
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 12

    .line 3430
    const/4 v0, 0x1

    .line 3431
    .local v0, "pausing":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 3432
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3433
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 3434
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3435
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 3436
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3437
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3438
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_1

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3439
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_0

    .line 3440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allPausedActivitiesComplete: r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3440
    const-string v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    const/4 v0, 0x0

    goto :goto_3

    .line 3444
    :cond_0
    const/4 v8, 0x0

    return v8

    .line 3435
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3433
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3431
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3450
    .end local v1    # "displayNdx":I
    :cond_4
    return v0
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .line 3380
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 3382
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3383
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3385
    goto :goto_1

    .line 3390
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3391
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3392
    goto :goto_1

    .line 3394
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3395
    .local v4, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v5, :cond_4

    .line 3396
    :cond_2
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_3

    .line 3397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allResumedActivitiesIdle: stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not idle"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3397
    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 3380
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3404
    .end local v0    # "displayNdx":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 3405
    return v1
.end method

.method allResumedActivitiesVisible()Z
    .locals 9

    .line 3409
    const/4 v0, 0x0

    .line 3410
    .local v0, "foundResumed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 3411
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3412
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 3413
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3414
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 3415
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3416
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 3417
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_1

    .line 3418
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v8, :cond_0

    .line 3419
    const/4 v8, 0x0

    return v8

    .line 3421
    :cond_0
    const/4 v0, 0x1

    .line 3414
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3412
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3410
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3426
    .end local v1    # "displayNdx":I
    :cond_4
    return v0
.end method

.method anyTaskForId(I)Lcom/android/server/wm/Task;
    .locals 1
    .param p1, "id"    # I

    .line 3487
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(II)Lcom/android/server/wm/Task;
    .locals 2
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 3491
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;
    .locals 11
    .param p1, "id"    # I
    .param p2, "matchMode"    # I
    .param p3, "aOptions"    # Landroid/app/ActivityOptions;
    .param p4, "onTop"    # Z

    .line 3504
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3505
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not specify activity options for non-restore lookup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3509
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;

    const-class v2, Lcom/android/server/wm/Task;

    .line 3510
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3509
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 3511
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3512
    .local v9, "task":Lcom/android/server/wm/Task;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3514
    const/4 v2, 0x0

    if-eqz v9, :cond_4

    .line 3515
    if-eqz p3, :cond_3

    .line 3518
    nop

    .line 3519
    invoke-virtual {p0, v2, p3, v9, p4}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 3520
    .local v10, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eq v2, v10, :cond_3

    .line 3521
    if-eqz p4, :cond_2

    .line 3522
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v5, v0

    .line 3523
    .local v5, "reparentMode":I
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "anyTaskForId"

    move-object v2, v9

    move-object v3, v10

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3527
    .end local v5    # "reparentMode":I
    .end local v10    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    return-object v9

    .line 3531
    :cond_4
    if-nez p2, :cond_5

    .line 3532
    return-object v2

    .line 3537
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v3, " in recents"

    const-string v4, "WindowManager"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for task id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3540
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    .line 3541
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_7

    .line 3542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tDidn\'t find task id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    :cond_7
    return-object v2

    .line 3548
    :cond_8
    const/4 v3, 0x1

    if-ne p2, v3, :cond_9

    .line 3549
    return-object v0

    .line 3553
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3554
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore task id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " found in recents"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :cond_a
    return-object v2

    .line 3558
    :cond_b
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored task id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from in recents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    :cond_c
    return-object v0
.end method

.method applySleepTokens(Z)V
    .locals 12
    .param p1, "applyToStacks"    # Z

    .line 2414
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    .line 2416
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2417
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v3

    .line 2418
    .local v3, "displayShouldSleep":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2419
    goto/16 :goto_4

    .line 2421
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setIsSleeping(Z)V

    .line 2423
    if-nez p1, :cond_1

    .line 2424
    goto :goto_4

    .line 2428
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_7

    .line 2429
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2430
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_6

    .line 2435
    const/4 v7, 0x0

    .line 2437
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_0
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 2442
    nop

    .line 2444
    const/4 v8, 0x0

    if-eqz v3, :cond_2

    .line 2445
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_3

    .line 2453
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2454
    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v10, 0x1c

    invoke-virtual {v9, v10, v8, v8, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2458
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->awakeFromSleepingLocked()V

    .line 2459
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2460
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2462
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2463
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v9

    iget v11, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2464
    invoke-virtual {v9, v11}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2470
    invoke-virtual {v7, v10, v10}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2476
    :cond_5
    invoke-virtual {v7, v10, v8, v8}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_3

    .line 2438
    :catch_0
    move-exception v8

    .line 2439
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 2440
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 2441
    nop

    .line 2430
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2428
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2414
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "displayShouldSleep":Z
    .end local v4    # "tdaNdx":I
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 2482
    .end local v0    # "displayNdx":I
    :cond_8
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 11
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1982
    const/4 v0, 0x0

    .line 1983
    .local v0, "didSomething":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_4

    .line 1984
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    .line 1985
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z

    .line 1987
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1988
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "areaNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1989
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 1990
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "taskNdx":I
    :goto_2
    if-ltz v6, :cond_2

    .line 1991
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 1992
    .local v7, "rootTask":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 1993
    goto :goto_3

    .line 1995
    :cond_0
    sget-object v8, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;

    const-class v9, Lcom/android/server/wm/ActivityRecord;

    .line 1997
    invoke-static {v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v9

    .line 1998
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 1995
    invoke-static {v8, p0, v9, p1, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v8

    .line 1999
    .local v8, "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Function;)Z

    .line 2000
    invoke-interface {v8}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 2001
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    if-nez v9, :cond_1

    .line 1990
    .end local v7    # "rootTask":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2002
    .restart local v7    # "rootTask":Lcom/android/server/wm/ActivityStack;
    .restart local v8    # "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    :cond_1
    throw v9

    .line 1988
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "taskNdx":I
    .end local v7    # "rootTask":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2006
    .end local v4    # "areaNdx":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z

    or-int/2addr v0, v3

    .line 1983
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2008
    .end local v1    # "displayNdx":I
    :cond_4
    if-nez v0, :cond_5

    .line 2009
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2011
    :cond_5
    return v0
.end method

.method canShowStrictModeViolation(I)Z
    .locals 2
    .param p1, "pid"    # I

    .line 731
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 732
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 6
    .param p1, "homeInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "allowInstrumenting"    # Z

    .line 1782
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1786
    return v2

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1790
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1791
    .local v0, "app":Lcom/android/server/wm/WindowProcessController;
    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1793
    return v2

    .line 1796
    :cond_1
    const/4 v3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    goto :goto_0

    .line 1797
    :cond_2
    move v4, v3

    :goto_0
    nop

    .line 1798
    .local v4, "displayId":I
    if-eqz v4, :cond_7

    if-eq v4, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne v4, v3, :cond_3

    goto :goto_2

    .line 1804
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1805
    return v2

    .line 1808
    :cond_4
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v2

    .line 1810
    .local v3, "supportMultipleInstance":Z
    :goto_1
    if-nez v3, :cond_6

    .line 1812
    return v2

    .line 1815
    :cond_6
    return v1

    .line 1801
    .end local v3    # "supportMultipleInstance":Z
    :cond_7
    :goto_2
    return v1
.end method

.method cancelInitializingActivities()V
    .locals 6

    .line 3475
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3476
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3477
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3478
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 3479
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "sNdx":I
    :goto_2
    if-ltz v4, :cond_0

    .line 3480
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->cancelInitializingActivities()V

    .line 3479
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3477
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "sNdx":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3475
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "tdaNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3484
    .end local v0    # "displayNdx":I
    :cond_2
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 2
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2773
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2775
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2773
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2776
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2777
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2778
    return-void
.end method

.method closeSystemDialogActivities(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3226
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3232
    return-void
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 736
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 738
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method copyAnimToLayoutParams()Z
    .locals 4

    .line 1213
    const/4 v0, 0x0

    .line 1215
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1216
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1217
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1218
    const/4 v0, 0x1

    .line 1220
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 1221
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_0

    .line 1223
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1224
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1225
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_2

    .line 1226
    const/4 v0, 0x1

    .line 1230
    :cond_2
    :goto_0
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    .line 1231
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1234
    :cond_3
    return v0
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2716
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2717
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2721
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;I)V

    .line 2722
    .local v1, "token":Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    return-object v1

    .line 2718
    .end local v1    # "token":Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3663
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topDisplayFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3667
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3668
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3666
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3670
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3671
    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .line 3689
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v1, 0x0

    .line 3690
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 3691
    .local v2, "needSep":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v14, v1

    move v15, v2

    move v8, v3

    .end local v1    # "printed":Z
    .end local v2    # "needSep":Z
    .local v8, "displayNdx":I
    .local v14, "printed":Z
    .local v15, "needSep":Z
    :goto_0
    if-ltz v8, :cond_5

    .line 3692
    invoke-virtual {v0, v8}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    .line 3693
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v14, :cond_0

    .line 3694
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3696
    :cond_0
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3697
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    .local v10, "tdaNdx":I
    :goto_1
    if-ltz v10, :cond_3

    .line 3699
    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    .line 3700
    .local v11, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v12, v1

    .local v12, "sNdx":I
    :goto_2
    if-ltz v12, :cond_2

    .line 3701
    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 3702
    .local v16, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v15, :cond_1

    .line 3703
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3705
    :cond_1
    const/4 v7, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v15

    .line 3706
    or-int/2addr v14, v15

    .line 3700
    .end local v16    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 3698
    .end local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v12    # "sNdx":I
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 3709
    .end local v10    # "tdaNdx":I
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    .local v7, "tdaNdx":I
    :goto_3
    if-ltz v7, :cond_4

    .line 3710
    invoke-virtual {v9, v7}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    .line 3711
    .local v10, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    new-instance v6, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$wmhKg8x6RdcBlSmvGqN5AdCspCE;

    invoke-direct {v6, v13}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$wmhKg8x6RdcBlSmvGqN5AdCspCE;-><init>(Ljava/io/PrintWriter;)V

    const-string v5, "    Resumed: "

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move v4, v15

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 3709
    .end local v10    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 3691
    .end local v7    # "tdaNdx":I
    .end local v9    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3719
    .end local v8    # "displayNdx":I
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$XMlVddEBXNqtByCBmJZRPtOma00;

    invoke-direct {v11, v13}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$XMlVddEBXNqtByCBmJZRPtOma00;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 3723
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$H5SvrPMcF7h1Zjahh38JkkIAOF4;

    invoke-direct {v11, v13}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$H5SvrPMcF7h1Zjahh38JkkIAOF4;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Stop"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int/2addr v1, v14

    .line 3728
    .end local v14    # "printed":Z
    .restart local v1    # "printed":Z
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 1313
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    return-void

    .line 1317
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1318
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1320
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1321
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 1322
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    .line 1321
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1323
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const-wide v3, 0x20b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityStartController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1325
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1326
    return-void
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3678
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    .line 3680
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3681
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3682
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3680
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3685
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1261
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1264
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1265
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1266
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1264
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1268
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1269
    :cond_1
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    :goto_1
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    return-void

    .line 1281
    :cond_0
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1283
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1284
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1285
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1286
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1283
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1289
    .end local v1    # "displayNdx":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1290
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1304
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1305
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1308
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1274
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1275
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

    .line 1293
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1294
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1301
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 2041
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2042
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 2049
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2051
    return-void

    .line 2055
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2058
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2059
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2063
    .end local v0    # "displayNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 2064
    nop

    .line 2065
    return-void

    .line 2063
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 2064
    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .locals 6
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 1835
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1838
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1840
    return v1

    .line 1845
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1846
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 1847
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 1848
    nop

    .line 1849
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 1850
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1851
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 1848
    :goto_0
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v3

    .line 1857
    :cond_2
    if-eqz p1, :cond_3

    .line 1858
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V

    .line 1860
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    .line 1861
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1864
    :cond_4
    if-eqz v2, :cond_5

    .line 1866
    invoke-virtual {v2, v3, p1, p4, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0

    .line 1869
    :cond_5
    return v1
.end method

.method executeAppTransitionForAllDisplay()V
    .locals 3

    .line 2275
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2276
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2277
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2275
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2279
    .end local v0    # "displayNdx":I
    :cond_0
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 2854
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2855
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2856
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2858
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2860
    .local v7, "userId":I
    sget-object v1, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 2861
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 2862
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2860
    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 2863
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2864
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2865
    return-object v2
.end method

.method findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2673
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2674
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_1

    .line 2675
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2676
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_0

    if-lez v1, :cond_0

    .line 2677
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    return-object v2

    .line 2675
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2681
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2282
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for task of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->clear()V

    .line 2286
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2287
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 2289
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 2294
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2295
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 2296
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_4

    .line 2297
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2298
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-ne v5, p2, :cond_2

    .line 2299
    goto :goto_2

    .line 2302
    :cond_2
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 2304
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v6, v6, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v6, :cond_3

    .line 2305
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 2296
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2294
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2310
    .end local v2    # "displayNdx":I
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    const-string v0, "No task found"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 3317
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->process(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v0

    return v0
.end method

.method finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .locals 9
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2321
    const/4 v0, 0x0

    .line 2322
    .local v0, "finishedTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2323
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 2324
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 2325
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 2326
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2330
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_2
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2331
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2332
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 2333
    .local v8, "t":Lcom/android/server/wm/Task;
    if-eq v7, v1, :cond_0

    if-nez v0, :cond_1

    .line 2334
    :cond_0
    move-object v0, v8

    .line 2330
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "t":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2325
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "stackNdx":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2323
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2339
    .end local v2    # "displayNdx":I
    :cond_4
    if-eqz v0, :cond_5

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    :goto_3
    return v2
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 8
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3339
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3340
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3341
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    .line 3342
    .local v2, "numTaskContainers":I
    const/4 v3, 0x0

    .local v3, "tdaNdx":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 3343
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3344
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getStackCount()I

    move-result v5

    .line 3345
    .local v5, "numStacks":I
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_2
    if-ge v6, v5, :cond_0

    .line 3346
    invoke-virtual {v4, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3347
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7, p1}, Lcom/android/server/wm/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3345
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3342
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "numStacks":I
    .end local v6    # "stackNdx":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3339
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "numTaskContainers":I
    .end local v3    # "tdaNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3351
    .end local v0    # "displayNdx":I
    :cond_2
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

    .line 1359
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayPolicy;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1360
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1359
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1362
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

    .line 1353
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1353
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1356
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 624
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 625
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    .line 626
    return-object v2

    .line 622
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 629
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getAllStackInfos(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 2579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2580
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 2581
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2582
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2583
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 2584
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2585
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 2586
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 2587
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v6}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2583
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2581
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2591
    .end local v1    # "displayNdx":I
    :cond_2
    return-object v0

    .line 2593
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2594
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_4

    .line 2595
    return-object v0

    .line 2597
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_3
    if-ltz v2, :cond_6

    .line 2598
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2599
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "sNdx":I
    :goto_4
    if-ltz v4, :cond_5

    .line 2600
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2601
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2599
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 2597
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "sNdx":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2604
    .end local v2    # "tdaNdx":I
    :cond_6
    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1370
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1371
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 1372
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v2

    .line 1369
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1375
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultDisplay()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "userId"    # I

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3
    .param p1, "displayId"    # I

    .line 1454
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1455
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1456
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_0

    .line 1457
    return-object v1

    .line 1454
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1460
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .locals 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 1441
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1442
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1443
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    .line 1444
    .local v2, "isValid":Z
    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1445
    return-object v1

    .line 1441
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "isValid":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1449
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 3
    .param p1, "displayId"    # I

    .line 1469
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1470
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 1471
    return-object v0

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1475
    return-object v2

    .line 1477
    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1478
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_2

    .line 1480
    return-object v2

    .line 1483
    :cond_2
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    move-object v0, v2

    .line 1484
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1485
    return-object v0
.end method

.method getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V
    .locals 3
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1379
    .local p2, "outContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p2, :cond_0

    .line 1380
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1383
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1384
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->isAnyNonToastWindowVisibleForPid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1385
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1388
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "displayId"    # I

    .line 2692
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2693
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2697
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 2694
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDisplayUiContext(I)Landroid/content/Context;
    .locals 1
    .param p1, "displayId"    # I

    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1391
    :goto_0
    return-object v0
.end method

.method getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpVisibleStacksOnly"    # Z
    .param p3, "dumpFocusedStackOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 3635
    if-eqz p3, :cond_1

    .line 3636
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3637
    .local v0, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 3638
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 3640
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 3643
    .end local v0    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3644
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    .line 3645
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 3646
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 3647
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 3648
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 3649
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_4

    .line 3650
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3651
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3652
    :cond_2
    invoke-virtual {v7, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3649
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3647
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3645
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3657
    .end local v2    # "displayNdx":I
    :cond_6
    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "onTop"    # Z

    .line 2898
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;
    .locals 21
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "onTop"    # Z
    .param p5, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p6, "realCallingPid"    # I
    .param p7, "realCallingUid"    # I

    .line 2918
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    const/4 v0, -0x1

    .line 2919
    .local v0, "taskId":I
    const/4 v1, -0x1

    .line 2920
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2923
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v8, :cond_1

    .line 2924
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    .line 2925
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    .line 2926
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 2927
    .local v3, "daToken":Landroid/window/WindowContainerToken;
    if-eqz v3, :cond_0

    .line 2928
    invoke-virtual {v3}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    move v13, v0

    move v14, v1

    goto :goto_1

    .line 2923
    .end local v3    # "daToken":Landroid/window/WindowContainerToken;
    :cond_1
    move v13, v0

    move v14, v1

    .line 2933
    .end local v0    # "taskId":I
    .end local v1    # "displayId":I
    .local v13, "taskId":I
    .local v14, "displayId":I
    :goto_1
    const/4 v0, -0x1

    if-eq v13, v0, :cond_2

    .line 2935
    invoke-virtual {v8, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2936
    const/4 v1, 0x2

    move/from16 v15, p4

    invoke-virtual {v6, v13, v1, v8, v15}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2938
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8, v13}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2939
    if-eqz v1, :cond_3

    .line 2940
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2933
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2
    move/from16 v15, p4

    .line 2944
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v5

    .line 2945
    .local v5, "activityType":I
    const/16 v16, 0x0

    .line 2948
    .local v16, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v10, :cond_4

    iget-object v1, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_4

    .line 2949
    iget-object v2, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2952
    :cond_4
    if-nez v2, :cond_5

    if-eq v14, v0, :cond_5

    .line 2953
    invoke-virtual {v6, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2954
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_5

    .line 2955
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    .line 2959
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5
    move-object v4, v2

    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_2
    const/16 v17, 0x0

    if-eqz v4, :cond_b

    .line 2960
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    .line 2961
    .local v3, "tdaDisplayId":I
    if-eqz v11, :cond_6

    if-lez v12, :cond_6

    if-eqz v7, :cond_6

    iget-object v0, v6, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2963
    invoke-virtual {v0, v3, v11, v12, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move/from16 v0, v17

    :goto_3
    move/from16 v18, v0

    .line 2965
    .local v18, "canLaunchOnDisplayFromStartRequest":Z
    if-nez v18, :cond_8

    invoke-direct {v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v11, v4

    move/from16 v20, v5

    goto :goto_5

    .line 2966
    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    .line 2967
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move/from16 v19, v3

    .end local v3    # "tdaDisplayId":I
    .local v19, "tdaDisplayId":I
    move-object/from16 v3, p3

    move-object v11, v4

    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v11, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v4, p2

    move/from16 v20, v5

    .end local v5    # "activityType":I
    .local v20, "activityType":I
    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->getValidLaunchStackInTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2969
    .local v0, "result":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_a

    .line 2970
    return-object v0

    .line 2966
    .end local v0    # "result":Lcom/android/server/wm/ActivityStack;
    .end local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v19    # "tdaDisplayId":I
    .end local v20    # "activityType":I
    .restart local v3    # "tdaDisplayId":I
    .restart local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "activityType":I
    :cond_9
    move/from16 v19, v3

    move-object v11, v4

    move/from16 v20, v5

    .line 2974
    .end local v3    # "tdaDisplayId":I
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "activityType":I
    .restart local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v19    # "tdaDisplayId":I
    .restart local v20    # "activityType":I
    :cond_a
    iget-object v0, v11, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    .line 2975
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v20

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 2977
    if-eqz v16, :cond_c

    .line 2978
    return-object v16

    .line 2959
    .end local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v18    # "canLaunchOnDisplayFromStartRequest":Z
    .end local v19    # "tdaDisplayId":I
    .end local v20    # "activityType":I
    .restart local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "activityType":I
    :cond_b
    move-object v11, v4

    move/from16 v20, v5

    .line 2985
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "activityType":I
    .restart local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v20    # "activityType":I
    :cond_c
    :goto_5
    const/4 v0, 0x0

    .line 2986
    .local v0, "container":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v9, :cond_d

    .line 2987
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 2989
    :cond_d
    if-nez v16, :cond_e

    if-eqz v7, :cond_e

    .line 2990
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_6

    .line 2992
    :cond_e
    move-object/from16 v5, v16

    .end local v16    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_6
    if-eqz v10, :cond_f

    iget v1, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    move/from16 v17, v1

    goto :goto_7

    .line 2993
    :cond_f
    nop

    :goto_7
    move/from16 v1, v17

    .line 2994
    .local v1, "windowingMode":I
    if-eqz v5, :cond_14

    .line 2995
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2996
    if-eqz v0, :cond_13

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v6, v7, v2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2997
    if-nez v1, :cond_10

    .line 2998
    move/from16 v4, v20

    .end local v20    # "activityType":I
    .local v4, "activityType":I
    invoke-virtual {v0, v7, v8, v9, v4}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I

    move-result v1

    goto :goto_8

    .line 2997
    .end local v4    # "activityType":I
    .restart local v20    # "activityType":I
    :cond_10
    move/from16 v4, v20

    .line 3004
    .end local v20    # "activityType":I
    .restart local v4    # "activityType":I
    :goto_8
    invoke-virtual {v5, v1, v4}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-nez v2, :cond_12

    iget-boolean v2, v5, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_11

    goto :goto_9

    .line 3007
    :cond_11
    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    .line 3008
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, v5, :cond_15

    .line 3009
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v9, v2, :cond_15

    .line 3015
    return-object v5

    .line 3005
    :cond_12
    :goto_9
    return-object v5

    .line 2996
    .end local v4    # "activityType":I
    .restart local v20    # "activityType":I
    :cond_13
    move/from16 v4, v20

    .end local v20    # "activityType":I
    .restart local v4    # "activityType":I
    goto :goto_a

    .line 2994
    .end local v4    # "activityType":I
    .restart local v20    # "activityType":I
    :cond_14
    move/from16 v4, v20

    .line 3020
    .end local v20    # "activityType":I
    .restart local v4    # "activityType":I
    :cond_15
    :goto_a
    if-eqz v0, :cond_17

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3021
    invoke-direct {v6, v7, v2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    move-object/from16 v16, v0

    move/from16 v17, v1

    goto :goto_c

    .line 3022
    :cond_17
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3023
    if-nez v1, :cond_18

    .line 3024
    invoke-virtual {v0, v7, v8, v9, v4}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I

    move-result v1

    move-object/from16 v16, v0

    move/from16 v17, v1

    goto :goto_c

    .line 3023
    :cond_18
    move-object/from16 v16, v0

    move/from16 v17, v1

    .line 3029
    .end local v0    # "container":Lcom/android/server/wm/TaskDisplayArea;
    .end local v1    # "windowingMode":I
    .local v16, "container":Lcom/android/server/wm/TaskDisplayArea;
    .local v17, "windowingMode":I
    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v18, v4

    .end local v4    # "activityType":I
    .local v18, "activityType":I
    move-object/from16 v19, v5

    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v19, "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 1330
    const-string v0, "ROOT"

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 3164
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3165
    .local v0, "preferredDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v0, :cond_0

    .line 3168
    iget v1, p1, Lcom/android/server/wm/ActivityStack;->mPrevDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3169
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3171
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3173
    .local v1, "preferredFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 3174
    return-object v1

    .line 3176
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3180
    return-object v3

    .line 3184
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 3185
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 3186
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, v5, :cond_3

    .line 3188
    goto :goto_1

    .line 3190
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 3191
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3192
    .local v5, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_4

    .line 3193
    return-object v5

    .line 3184
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3197
    .end local v2    # "i":I
    :cond_5
    return-object v3
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getRunningTasks(ILjava/util/List;ZIZZLandroid/util/ArraySet;)V
    .locals 10
    .param p1, "maxNum"    # I
    .param p3, "filterOnlyVisibleRecents"    # Z
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z
    .param p6, "crossUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;ZIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3571
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local p7, "profileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p0

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ZLcom/android/server/wm/RootWindowContainer;IZZLandroid/util/ArraySet;)V

    .line 3573
    return-void
.end method

.method protected getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I

    .line 2485
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2486
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2487
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2488
    return-object v1

    .line 2485
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2491
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2496
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2497
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2498
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2499
    return-object v1

    .line 2496
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2502
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .line 2560
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2561
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 2562
    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 2564
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2568
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2569
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getStackInfo(III)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 2573
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getStack(III)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2574
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1908
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1909
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 1910
    return-object v1

    .line 1907
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1913
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 522
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 523
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

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 8

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1918
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1919
    return-object v1

    .line 1921
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1922
    .local v2, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_1

    .line 1923
    return-object v2

    .line 1927
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1928
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1929
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "tdaNdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1930
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 1931
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    nop

    .line 1932
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1933
    .local v7, "resumedActivityOnTaskContainer":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_2

    .line 1934
    return-object v7

    .line 1929
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "resumedActivityOnTaskContainer":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1927
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "tdaNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1938
    .end local v3    # "i":I
    :cond_4
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1881
    .local v1, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "dNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 1882
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 1883
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1884
    nop

    .line 1885
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 1887
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_2

    .line 1888
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 1890
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1891
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1892
    .local v8, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_1

    .line 1893
    if-ne v7, v1, :cond_0

    .line 1894
    const/4 v9, 0x0

    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1896
    :cond_0
    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1887
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1883
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1881
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1903
    .end local v2    # "dNdx":I
    :cond_4
    return-object v0
.end method

.method getValidLaunchStackInTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 3053
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3054
    return-object v1

    .line 3060
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p3, :cond_5

    .line 3062
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3063
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 3064
    .local v2, "attachedTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_0
    if-eqz v2, :cond_4

    if-ne v2, p1, :cond_3

    goto :goto_1

    .line 3069
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3070
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3071
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 3072
    return-object v1

    .line 3065
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 3077
    .end local v2    # "attachedTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_5
    if-eqz p5, :cond_6

    .line 3081
    iget v2, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .local v2, "windowingMode":I
    goto :goto_3

    .line 3083
    .end local v2    # "windowingMode":I
    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    goto :goto_2

    .line 3084
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    :goto_2
    nop

    .line 3086
    .restart local v2    # "windowingMode":I
    :goto_3
    nop

    .line 3087
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    .line 3086
    invoke-virtual {p1, v2, p2, p3, v3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v2

    .line 3090
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_4
    if-ltz v3, :cond_9

    .line 3091
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3092
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v4, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3093
    return-object v4

    .line 3090
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 3099
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3100
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eq p1, v3, :cond_b

    .line 3102
    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    if-eqz v1, :cond_a

    .line 3103
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    .line 3104
    .local v1, "activityType":I
    :goto_5
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 3107
    .end local v1    # "activityType":I
    :cond_b
    return-object v1
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 636
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    .line 637
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v2, :cond_0

    .line 638
    return-object v2

    .line 634
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .locals 4
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 646
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 647
    return-object v0

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 651
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 652
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 653
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1

    .line 654
    return-object v2

    .line 650
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "current":Lcom/android/server/wm/WindowToken;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 658
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

    .line 577
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 580
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 581
    const/4 p2, 0x0

    .line 583
    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 585
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 586
    return-void
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 2837
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2838
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2837
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2839
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2840
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2841
    return-void
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 3201
    const/4 v0, 0x0

    .line 3202
    .local v0, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3203
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3204
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 3205
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3206
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 3213
    :try_start_0
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3214
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, p1}, Lcom/android/server/wm/ActivityStack;->handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v7

    .line 3217
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_3

    .line 3215
    :catch_0
    move-exception v6

    .line 3216
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3206
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3204
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3202
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3222
    .end local v1    # "displayNdx":I
    :cond_2
    return v0
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 23
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .line 1143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1144
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1145
    .local v3, "attrFlags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    .line 1146
    .local v4, "onScreen":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    .line 1147
    .local v5, "canBeSeen":Z
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1148
    .local v6, "privateflags":I
    const/4 v7, 0x0

    .line 1150
    .local v7, "displayHasContent":Z
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v8, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    iget-boolean v13, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .local v13, "protoLogParam1":Z
    move v14, v4

    .local v14, "protoLogParam2":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v15

    .local v15, "protoLogParam3":Z
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v9, v10, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .local v9, "protoLogParam4":J
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v11, v18

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v17, 0x1

    aput-object v20, v11, v17

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v16, 0x2

    aput-object v20, v11, v16

    const/16 v20, 0x3

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v11, v20

    move/from16 v20, v7

    move-object/from16 v19, v8

    move-wide/from16 v21, v9

    const v7, -0x1cb99646

    const/16 v8, 0x1fc

    const/4 v9, 0x0

    .end local v7    # "displayHasContent":Z
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam4":J
    .local v19, "protoLogParam0":Ljava/lang/String;
    .local v20, "displayHasContent":Z
    .local v21, "protoLogParam4":J
    invoke-static {v12, v7, v8, v9, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v13    # "protoLogParam1":Z
    .end local v14    # "protoLogParam2":Z
    .end local v15    # "protoLogParam3":Z
    .end local v19    # "protoLogParam0":Ljava/lang/String;
    .end local v20    # "displayHasContent":Z
    .end local v21    # "protoLogParam4":J
    .restart local v7    # "displayHasContent":Z
    :cond_0
    move/from16 v20, v7

    .line 1154
    .end local v7    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :goto_0
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 1155
    if-nez p3, :cond_1

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 1156
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 1157
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v7, :cond_1

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .local v7, "protoLogParam0":J
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0xd346f16

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v13, v12}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    .end local v7    # "protoLogParam0":J
    :cond_1
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    .line 1162
    and-int/lit16 v7, v3, 0x80

    if-eqz v7, :cond_2

    .line 1163
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1164
    iput-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 1165
    :cond_2
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v7, :cond_3

    .line 1166
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v7, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0x7c7d62da

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v13, 0x1

    aput-object v8, v11, v13

    const/4 v13, 0x0

    invoke-static {v9, v10, v12, v13, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    iget v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1172
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1173
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1176
    :cond_4
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1179
    .local v7, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1180
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_7

    iget-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_7

    .line 1184
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1185
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1187
    :cond_6
    const/4 v9, 0x1

    .end local v20    # "displayHasContent":Z
    .local v9, "displayHasContent":Z
    goto :goto_2

    .line 1188
    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_7
    if-eqz v8, :cond_9

    iget-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_8

    if-eqz p2, :cond_9

    const/16 v9, 0x7d9

    if-ne v7, v9, :cond_9

    .line 1192
    :cond_8
    const/4 v9, 0x1

    .end local v20    # "displayHasContent":Z
    .restart local v9    # "displayHasContent":Z
    goto :goto_2

    .line 1194
    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_9
    move/from16 v9, v20

    .end local v20    # "displayHasContent":Z
    .restart local v9    # "displayHasContent":Z
    :goto_2
    const/high16 v10, 0x40000

    and-int/2addr v10, v6

    if-eqz v10, :cond_a

    .line 1195
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 1199
    .end local v7    # "type":I
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_a
    move v7, v9

    goto :goto_3

    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_b
    move/from16 v7, v20

    .end local v20    # "displayHasContent":Z
    .local v7, "displayHasContent":Z
    :goto_3
    return v7
.end method

.method hasAwakeDisplay()Z
    .locals 4

    .line 2887
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2888
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2889
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2890
    return v1

    .line 2887
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2893
    .end local v0    # "displayNdx":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .locals 5
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 755
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 756
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 757
    .local v3, "pendingChanges":I
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_0

    .line 758
    iget v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 760
    :cond_0
    if-eqz v3, :cond_1

    .line 761
    const/4 v0, 0x1

    .line 755
    .end local v3    # "pendingChanges":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method invalidateTaskLayers()V
    .locals 1

    .line 2748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2749
    return-void
.end method

.method isAnyNonToastWindowVisibleForUid(I)Z
    .locals 3
    .param p1, "callingUid"    # I

    .line 607
    sget-object v0, Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;

    const-class v1, Lcom/android/server/wm/WindowState;

    .line 609
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 607
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 611
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 612
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 613
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3563
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3564
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method isLayoutNeeded()Z
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 567
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 568
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 569
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    const/4 v3, 0x1

    return v3

    .line 567
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "displayNdx":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isOnTop()Z
    .locals 1

    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1942
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$closeSystemDialogActivities$11$RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3227
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 3228
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3229
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 3231
    :cond_1
    return-void
.end method

.method public synthetic lambda$lockAllProfileTasks$13$RootWindowContainer(ILcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 3463
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$8fHeC-iaZRx__ipVxj-w37jaOP4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$8fHeC-iaZRx__ipVxj-w37jaOP4;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V

    .line 3468
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 456
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 458
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 462
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$reclaimSomeSurfaceMemory$7$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    return-void

    .line 794
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 795
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 798
    :cond_1
    return-void
.end method

.method lockAllProfileTasks(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3460
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3462
    :try_start_0
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$V90N3j-z12nE_INoLosHQUl2p80;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$V90N3j-z12nE_INoLosHQUl2p80;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3470
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3471
    nop

    .line 3472
    return-void

    .line 3470
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3471
    throw v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2208
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2210
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2213
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v8, v1

    .line 2214
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    move-object v9, v1

    .line 2218
    .local v9, "pinnedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v9, :cond_0

    .line 2219
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 2224
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2226
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_1

    move v1, v11

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    move v12, v1

    .line 2228
    .local v12, "singleActivity":Z
    if-eqz v12, :cond_2

    .line 2229
    move-object v1, v8

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_1

    .line 2233
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2238
    .restart local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, v8, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2244
    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    .line 2249
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    .line 2250
    .local v2, "intermediateWindowingMode":I
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v0, :cond_3

    .line 2253
    invoke-virtual {v1, v0, v11}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2258
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setWindowingMode(I)V

    .line 2259
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 2263
    iput-boolean v10, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "intermediateWindowingMode":I
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "pinnedStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "singleActivity":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2266
    nop

    .line 2268
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v10, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2271
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    .line 2272
    return-void

    .line 2265
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2266
    throw v1
.end method

.method moveStackToDisplay(IIZ)V
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 2167
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2168
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 2173
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStackCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not move stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to single task instance display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    return-void

    .line 2180
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->moveStackToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2181
    return-void

    .line 2169
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStackToDisplay: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveStackToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "onTop"    # Z

    .line 2135
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2136
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_3

    .line 2141
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2142
    .local v1, "currentTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_2

    .line 2147
    if-eqz p2, :cond_1

    .line 2152
    if-eq v1, p2, :cond_0

    .line 2156
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2158
    return-void

    .line 2153
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to its current taskDisplayArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2148
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveStackToTaskDisplayArea: Unknown taskDisplayArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2143
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveStackToTaskDisplayArea: stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not attached to any task display area."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2137
    .end local v1    # "currentTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStackToTaskDisplayArea: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveTopStackActivityToPinnedStack(I)Z
    .locals 6
    .param p1, "stackId"    # I

    .line 2184
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2185
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_2

    .line 2190
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2191
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v1, :cond_0

    .line 2192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    return v2

    .line 2197
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    return v2

    .line 2203
    :cond_1
    const-string v2, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2204
    const/4 v2, 0x1

    return v2

    .line 2186
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTopStackActivityToPinnedStack: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 536
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 698
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 699
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 700
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 2609
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display added displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2611
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2612
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1

    .line 2613
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2618
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2619
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 2621
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2622
    return-void

    .line 2621
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 2648
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display changed displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2650
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2651
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    .line 2652
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged()V

    .line 2654
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2655
    return-void

    .line 2654
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 2631
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display removed displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    if-eqz p1, :cond_2

    .line 2636
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2637
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2638
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1

    .line 2639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2642
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 2643
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2644
    return-void

    .line 2643
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2633
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onSettingsRetrieved()V
    .locals 8

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 543
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 544
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 545
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 547
    .local v3, "changed":Z
    if-nez v3, :cond_0

    .line 548
    goto :goto_1

    .line 551
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 556
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 558
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 557
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 559
    .local v4, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 543
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "changed":Z
    .end local v4    # "newConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "displayNdx":I
    :cond_2
    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method performSurfacePlacement()V
    .locals 3

    .line 842
    const-wide/16 v0, 0x20

    const-string v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 847
    nop

    .line 848
    return-void

    .line 846
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 847
    throw v2
.end method

.method performSurfacePlacementNoTrace()V
    .locals 17

    .line 853
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

    .line 854
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 860
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 865
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 866
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 867
    iget-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 868
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 866
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    .end local v0    # "displayNdx":I
    :cond_2
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 872
    const/high16 v9, 0x7fc00000    # Float.NaN

    iput v9, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 873
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 874
    iput-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 875
    iput-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 876
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 879
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 880
    .local v10, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 882
    .local v12, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_3
    const-wide/16 v13, 0x20

    const-string v0, "applySurfaceChanges"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 885
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 887
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 892
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 891
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 888
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 889
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v15, "Unhandled exception in Window Manager"

    invoke-static {v5, v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 892
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 896
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 898
    invoke-direct {v1, v12}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 901
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 902
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 903
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_5

    .line 904
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 907
    :cond_5
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_3
    if-ge v2, v7, :cond_8

    .line 908
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 909
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v13, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v13, :cond_7

    .line 910
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v13, :cond_6

    const-string v13, "Wallpaper may change!  Adjusting"

    invoke-static {v5, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_6
    iget v13, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 912
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_7

    .line 913
    iget v13, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v14, "WallpaperMayChange"

    invoke-virtual {v12, v14, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 907
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 919
    .end local v2    # "displayNdx":I
    :cond_8
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_9

    .line 920
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 921
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 925
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 926
    iget v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v2, v11

    iput v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 927
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_a

    iget v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v13, "mLayoutNeeded"

    invoke-virtual {v12, v13, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 931
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 933
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_b

    .line 934
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .local v2, "protoLogParam0":Z
    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v14, -0x27ba2454

    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v13, v14, v4, v8, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 938
    .end local v2    # "protoLogParam0":Z
    :cond_b
    iget-boolean v2, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_d

    .line 939
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_c

    .line 940
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v6, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 941
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 942
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 944
    :cond_c
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 948
    :cond_d
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 949
    .local v2, "i":I
    if-lez v2, :cond_11

    .line 951
    :cond_e
    add-int/lit8 v2, v2, -0x1

    .line 952
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 953
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 954
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 955
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v14, v4, :cond_f

    .line 956
    invoke-virtual {v13, v8}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 958
    :cond_f
    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v14, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 959
    iget v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 961
    :cond_10
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 962
    iget-object v14, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 963
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-gtz v2, :cond_e

    .line 964
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 968
    :cond_11
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_4
    if-ge v4, v7, :cond_12

    .line 969
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 970
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 968
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 973
    .end local v4    # "displayNdx":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "displayNdx":I
    :goto_5
    if-ge v4, v7, :cond_14

    .line 974
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 975
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v14, :cond_13

    .line 976
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 973
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 980
    .end local v4    # "displayNdx":I
    :cond_14
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 981
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_17

    .line 983
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const/4 v13, 0x0

    cmpg-float v13, v4, v13

    if-ltz v13, :cond_16

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v4, v13

    if-lez v13, :cond_15

    goto :goto_6

    .line 984
    :cond_15
    move v9, v4

    goto :goto_7

    :cond_16
    :goto_6
    nop

    :goto_7
    move v4, v9

    .line 985
    .local v4, "brightnessOverride":F
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    .line 988
    .local v9, "brightnessFloatAsIntBits":I
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v11, v9, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 989
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 990
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 993
    .end local v4    # "brightnessOverride":F
    .end local v9    # "brightnessFloatAsIntBits":I
    :cond_17
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v4, :cond_18

    .line 994
    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 995
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v4, 0x6

    .line 997
    iget-boolean v9, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 995
    invoke-virtual {v3, v4, v9}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1000
    :cond_18
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_1a

    .line 1001
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_19

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x41c0358b

    move-object v9, v8

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v6, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1005
    :cond_1a
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v3, :cond_1c

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v3, :cond_1c

    .line 1008
    :cond_1b
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 1011
    :cond_1c
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1012
    .local v3, "N":I
    if-lez v3, :cond_20

    .line 1013
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v4, v4

    if-ge v4, v3, :cond_1d

    .line 1014
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v6, v3, 0xa

    new-array v6, v6, [Lcom/android/server/wm/WindowState;

    iput-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 1016
    :cond_1d
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1017
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1018
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v4, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_1f

    .line 1020
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v6, v6, v2

    .line 1021
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 1022
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1023
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_1e

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 1024
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1028
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    .local v6, "j":I
    :goto_9
    if-ltz v6, :cond_20

    .line 1029
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 1030
    .local v8, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8, v11}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1028
    .end local v8    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 1035
    .end local v4    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v6    # "j":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleCompleteDeferredRemoval()Z

    .line 1037
    sget-object v4, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1045
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1047
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1050
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingTaskInfoChanges()V

    .line 1052
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v4, :cond_21

    const-string v4, "performSurfacePlacementInner exit"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_21
    return-void

    .line 891
    .end local v0    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v2    # "i":I
    .end local v3    # "N":I
    :goto_a
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 892
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_22

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_22
    throw v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "includingParents"    # Z

    .line 2687
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2688
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2689
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 180
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method prepareForShutdown()V
    .locals 3

    .line 2710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2711
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 2710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2713
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method putStacksToSleep(ZZ)Z
    .locals 8
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 2804
    const/4 v0, 0x1

    .line 2805
    .local v0, "allSleep":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 2806
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2807
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2808
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2809
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_3

    .line 2813
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2814
    goto :goto_3

    .line 2816
    :cond_0
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 2820
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v7, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v7, :cond_1

    .line 2821
    invoke-static {v6}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->handleSleepStack(Lcom/android/server/wm/ActivityStack;)V

    .line 2825
    :cond_1
    if-eqz p1, :cond_2

    .line 2826
    invoke-virtual {v6, p2}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v7

    and-int/2addr v0, v7

    goto :goto_3

    .line 2828
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 2809
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2807
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2805
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2833
    .end local v1    # "displayNdx":I
    :cond_5
    return v0
.end method

.method rankTaskLayersIfNeeded()V
    .locals 2

    .line 2752
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_0

    .line 2753
    return-void

    .line 2755
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2756
    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 2757
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2759
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2757
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2760
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2761
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2762
    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 16
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    .line 770
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 771
    .local v4, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v5, 0x0

    .line 772
    .local v5, "leakedSurface":Z
    const/4 v6, 0x0

    .line 773
    .local v6, "killedApps":Z
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v8, p2

    invoke-static {v0, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 780
    .local v9, "callingIdentity":J
    :try_start_0
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v7, v0

    .line 782
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 783
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v5, v11

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    .end local v0    # "displayNdx":I
    :cond_0
    const/4 v11, 0x0

    if-nez v5, :cond_5

    .line 787
    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v12, v0

    .line 789
    .local v12, "pidCandidates":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    move v13, v6

    move v6, v0

    .local v6, "displayNdx":I
    .local v13, "killedApps":Z
    :goto_1
    if-ge v6, v7, :cond_4

    .line 790
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;

    invoke-direct {v14, v1, v12}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 800
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 801
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v14, v0

    .line 802
    .local v14, "pids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v15, v14

    if-ge v0, v15, :cond_1

    .line 803
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 806
    .end local v0    # "i":I
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v11, p3

    :try_start_3
    invoke-interface {v0, v14, v15, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 807
    const/4 v0, 0x1

    move v13, v0

    .line 810
    :cond_2
    goto :goto_3

    .line 835
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v14    # "pids":[I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 809
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .restart local v14    # "pids":[I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v11, p3

    goto :goto_3

    .line 800
    .end local v14    # "pids":[I
    :cond_3
    move/from16 v11, p3

    .line 789
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 835
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :catchall_1
    move-exception v0

    move/from16 v11, p3

    :goto_4
    move v6, v13

    goto :goto_a

    .line 789
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v11, p3

    move v6, v13

    goto :goto_5

    .line 786
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v13    # "killedApps":Z
    .local v6, "killedApps":Z
    :cond_5
    move/from16 v11, p3

    .line 815
    :goto_5
    const/4 v12, 0x1

    if-nez v5, :cond_7

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    goto :goto_9

    .line 818
    :cond_7
    :goto_6
    :try_start_4
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz v4, :cond_9

    .line 821
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v13, 0x17d51a79

    const/4 v14, 0x0

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v15, v12

    invoke-static {v3, v13, v12, v14, v15}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    .line 823
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 824
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a

    .line 825
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    .line 820
    :cond_9
    const/4 v12, 0x0

    .line 830
    :cond_a
    :goto_8
    :try_start_5
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 832
    goto :goto_9

    .line 831
    :catch_2
    move-exception v0

    .line 835
    .end local v7    # "numDisplays":I
    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    nop

    .line 838
    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    const/4 v12, 0x1

    :cond_c
    return v12

    .line 835
    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v11, p3

    :goto_a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    throw v0
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1340
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1341
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1345
    :cond_0
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 180
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .locals 6

    .line 741
    const-string v0, "removeReplacedWindows"

    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x5a4f608f

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 744
    const v1, 0x54da4e01

    :try_start_0
    sget-object v4, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 747
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 749
    :cond_1
    return-void

    .line 746
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 747
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 748
    :cond_2
    throw v4
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 2
    .param p1, "windowingModes"    # [I

    .line 3358
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3359
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeStacksInWindowingModes([I)V

    .line 3358
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3361
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 2
    .param p1, "activityTypes"    # [I

    .line 3364
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3365
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeStacksWithActivityTypes([I)V

    .line 3364
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3367
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2111
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2112
    return-void
.end method

.method resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "homeIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1700
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1, p2, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1702
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1706
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 1704
    .end local v0    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1707
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 3137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3138
    .local v0, "activityType":I
    :goto_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 3139
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    .line 3141
    :cond_1
    if-eqz v0, :cond_2

    .line 3142
    return v0

    .line 3144
    :cond_2
    if-eqz p2, :cond_3

    .line 3145
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 3147
    :cond_3
    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "homeIntent"    # Landroid/content/Intent;

    .line 1608
    const/16 v0, 0x400

    .line 1609
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1610
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1612
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v3, 0x400

    if-eqz v1, :cond_0

    .line 1614
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 1616
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1617
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1618
    .local v4, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1619
    invoke-interface {v5, p2, v4, v3, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1620
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1621
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1626
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1624
    :catch_0
    move-exception v3

    .line 1628
    :goto_1
    if-nez v2, :cond_2

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No home screen found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "WindowManager"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1630
    const/4 v3, 0x0

    return-object v3

    .line 1633
    :cond_2
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    .line 1634
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1635
    return-object v2
.end method

.method resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1641
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p2, v0, :cond_6

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1647
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1648
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1649
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1651
    const/4 v1, 0x0

    goto :goto_2

    .line 1655
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1656
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 1657
    .local v3, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1658
    .local v4, "size":I
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1659
    .local v5, "targetName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1660
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 1661
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1664
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1665
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1666
    goto :goto_1

    .line 1660
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1669
    .end local v6    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-lez v4, :cond_3

    .line 1671
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1676
    .end local v3    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "size":I
    .end local v5    # "targetName":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1677
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1678
    const/4 v1, 0x0

    .line 1683
    :cond_4
    if-nez v1, :cond_5

    .line 1684
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1685
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1687
    :cond_5
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1642
    .end local v0    # "homeIntent":Landroid/content/Intent;
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resolveSecondaryHomeActivity: Should not be default task container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeFocusedStacksTopActivities()Z
    .locals 1

    .line 2343
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 10
    .param p1, "targetStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    .line 2349
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2350
    const/4 v0, 0x0

    return v0

    .line 2353
    :cond_0
    const/4 v0, 0x0

    .line 2354
    .local v0, "result":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 2356
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 2359
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_b

    .line 2360
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2361
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 2362
    .local v3, "resumedOnDisplay":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_8

    .line 2363
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2364
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_7

    .line 2365
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2366
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 2367
    .local v8, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v8, :cond_3

    .line 2368
    goto :goto_3

    .line 2370
    :cond_3
    if-ne v7, p1, :cond_4

    .line 2375
    or-int/2addr v3, v0

    .line 2376
    goto :goto_3

    .line 2378
    :cond_4
    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2381
    invoke-virtual {v7, p3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2386
    iget v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v9, :cond_6

    .line 2387
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v9, v8}, Lcom/android/server/wm/OpQuickReplyInjector;->resumeDefaultTopActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3

    .line 2391
    :cond_5
    invoke-virtual {v8, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 2364
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2362
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2395
    .end local v4    # "tdaNdx":I
    :cond_8
    if-nez v3, :cond_a

    .line 2400
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2401
    .local v4, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_9

    .line 2402
    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_4

    .line 2403
    :cond_9
    if-nez p1, :cond_a

    .line 2404
    const/4 v5, 0x0

    .line 2405
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 2404
    const-string v7, "no-focusable-task"

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2359
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "resumedOnDisplay":Z
    .end local v4    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2410
    .end local v1    # "displayNdx":I
    :cond_b
    return v0
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 8
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1712
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1714
    const/4 v0, 0x0

    return v0

    .line 1717
    :cond_0
    if-nez p3, :cond_1

    .line 1718
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    .line 1721
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1722
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resumeHomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1725
    .local v7, "myReason":Ljava/lang/String;
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    .line 1726
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1727
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 1729
    :cond_2
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v7

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result v0

    return v0
.end method

.method scheduleAnimation()V
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1336
    return-void
.end method

.method scheduleDestroyAllActivities(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 2787
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    .line 2788
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2789
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .line 3614
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 3615
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 3616
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mPowerHintSent:Z

    .line 3618
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 12
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3576
    move v0, p1

    .line 3578
    .local v0, "sendHint":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3580
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    move v0, v3

    .line 3583
    :cond_2
    if-nez v0, :cond_a

    .line 3586
    const/4 v3, 0x1

    .line 3587
    .local v3, "noResumedActivities":Z
    const/4 v4, 0x1

    .line 3588
    .local v4, "allFocusedProcessesDiffer":Z
    const/4 v5, 0x0

    .local v5, "displayNdx":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3589
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 3590
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "tdaNdx":I
    :goto_3
    if-ltz v7, :cond_6

    .line 3591
    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 3592
    .local v8, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 3594
    .local v9, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v9, :cond_3

    const/4 v10, 0x0

    goto :goto_4

    :cond_3
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3596
    .local v10, "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :goto_4
    if-nez v10, :cond_4

    move v11, v2

    goto :goto_5

    :cond_4
    move v11, v1

    :goto_5
    and-int/2addr v3, v11

    .line 3597
    if-eqz v10, :cond_5

    .line 3598
    iget-object v11, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v2

    and-int/2addr v4, v11

    .line 3590
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v9    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 3588
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "tdaNdx":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3603
    .end local v5    # "displayNdx":I
    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    move v0, v1

    .line 3606
    .end local v3    # "noResumedActivities":Z
    .end local v4    # "allFocusedProcessesDiffer":Z
    :cond_a
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_b

    .line 3607
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 3608
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mPowerHintSent:Z

    .line 3610
    :cond_b
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 2701
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2702
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2706
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2707
    return-void

    .line 2703
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 668
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 669
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 670
    .local v1, "configChanged":Z
    :goto_0
    if-nez v1, :cond_1

    .line 671
    return-void

    .line 674
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 676
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 684
    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    .line 686
    return-void
.end method

.method setSecureSurfaceState(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 709
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$PVkFhpirHJygWitQFpVhFHaEX4o;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$PVkFhpirHJygWitQFpVhFHaEX4o;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 714
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 1396
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1397
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1398
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1399
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1402
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1403
    aget-object v2, v0, v1

    .line 1404
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    .line 1405
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1406
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_0

    .line 1407
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1402
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    .end local v1    # "displayNdx":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->calculateDefaultMinimalSizeOfResizeableTasks()V

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1413
    .local v1, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    .line 1414
    const v2, 0x7fffffff

    iget-object v3, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    .line 1416
    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 5
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p1, :cond_7

    .line 1742
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1743
    return v0

    .line 1746
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v1, :cond_1

    .line 1748
    return v0

    .line 1751
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1752
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1751
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1754
    .local v1, "deviceProvisioned":Z
    :goto_0
    if-nez v1, :cond_3

    .line 1756
    return v0

    .line 1759
    :cond_3
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1761
    return v0

    .line 1764
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1765
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 1770
    :cond_5
    return v2

    .line 1767
    :cond_6
    :goto_1
    return v0

    .line 1740
    .end local v1    # "deviceProvisioned":Z
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHomeOnAllDisplays(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1493
    const/4 v0, 0x0

    .line 1494
    .local v0, "homeStarted":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1495
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1496
    .local v2, "displayId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1494
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1498
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 1515
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "allowInstrumenting"    # Z
    .param p5, "fromHomeKey"    # Z

    .line 1522
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1524
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move p3, v1

    .line 1527
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1528
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 1529
    .local v1, "result":Z
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tcNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1530
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1531
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, v9

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1529
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1534
    .end local v2    # "tcNdx":I
    :cond_2
    return v1
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1503
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1504
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1505
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1506
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1507
    iget v4, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    .line 1504
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1502
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "tdaNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1512
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "allowInstrumenting"    # Z
    .param p5, "fromHomeKey"    # Z

    .line 1551
    if-nez p3, :cond_1

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1553
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_0

    .line 1554
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_0
    move-object p3, v1

    .line 1557
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    .line 1558
    .local v0, "homeIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1559
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne p3, v2, :cond_2

    .line 1560
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1561
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1564
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1565
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/android/server/wm/OpOtaWizardInjector;->updateOtaWizardHomeIntent(Landroid/content/Intent;Landroid/content/Context;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1567
    .local v3, "newInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_3

    .line 1568
    move-object v1, v3

    .line 1569
    move-object v0, v2

    goto :goto_1

    .line 1572
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "newInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1573
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v2

    .line 1574
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 1575
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    goto :goto_2

    .line 1572
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    :cond_3
    :goto_1
    nop

    .line 1577
    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez v0, :cond_4

    goto :goto_3

    .line 1581
    :cond_4
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1582
    return v2

    .line 1586
    :cond_5
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1587
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1589
    const/4 v3, 0x1

    if-eqz p5, :cond_6

    .line 1590
    const-string v4, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1591
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v5, "startHomeActivity"

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 1595
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1597
    .local v2, "myReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1599
    return v3

    .line 1578
    .end local v2    # "myReason":Ljava/lang/String;
    :cond_7
    :goto_3
    return v2
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2069
    .local v0, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 2070
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2072
    .local v1, "focusStackId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2073
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    .line 2078
    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->removeStacksInWindowingModes([I)V

    .line 2080
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2081
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 2083
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2084
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "displayNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2085
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 2086
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "tdaNdx":I
    :goto_2
    if-ltz v5, :cond_3

    .line 2087
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 2088
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "sNdx":I
    :goto_3
    if-ltz v7, :cond_2

    .line 2089
    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2090
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v8, p1}, Lcom/android/server/wm/ActivityStack;->switchUser(I)V

    .line 2088
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2086
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "sNdx":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2084
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "tdaNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2095
    .end local v3    # "displayNdx":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2096
    .local v2, "restoreStackId":I
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2097
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_5

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2100
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 2101
    .local v4, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2102
    const-string v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_4

    .line 2105
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    const-string v7, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 2107
    :goto_4
    return v4
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3371
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3372
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 3373
    return-object v1

    .line 3370
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3376
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3322
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3323
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3324
    .local v1, "userId":I
    sget-object v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$fL0RxmEBMlnXFmjHLkBJ9jk9drs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$fL0RxmEBMlnXFmjHLkBJ9jk9drs;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 3326
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3324
    invoke-static {v2, v3, p1, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3327
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3328
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3329
    return-void
.end method

.method updateAppOpsState()V
    .locals 2

    .line 725
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 728
    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .locals 11
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "changed":Z
    const/4 v1, -0x1

    .line 489
    .local v1, "topFocusedDisplayId":I
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    const/4 v4, -0x1

    if-ltz v2, :cond_3

    .line 490
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 491
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v6

    or-int/2addr v0, v6

    .line 492
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 493
    .local v6, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_2

    .line 494
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 495
    .local v7, "pidOfNewFocus":I
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 496
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_0
    if-ne v1, v4, :cond_1

    .line 499
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 501
    .end local v7    # "pidOfNewFocus":I
    :cond_1
    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_1

    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 489
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "newFocus":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 508
    .end local v2    # "i":I
    :cond_3
    if-ne v1, v4, :cond_4

    .line 509
    const/4 v1, 0x0

    .line 511
    :cond_4
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq v2, v1, :cond_5

    .line 512
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 513
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 514
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 515
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v2, :cond_5

    int-to-long v4, v1

    .local v4, "protoLogParam0":J
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x28f59d81

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v6, v3, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 518
    .end local v4    # "protoLogParam0":J
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

    .line 717
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 722
    return-void
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1952
    const/4 v0, 0x0

    .line 1953
    .local v0, "fgApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1954
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1955
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1956
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1957
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 1958
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1959
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1960
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1961
    .local v7, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_0

    .line 1962
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3

    .line 1963
    :cond_0
    iget-object v8, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_2

    .line 1964
    iget-object v8, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3

    .line 1957
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1955
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1953
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1973
    .end local v1    # "displayNdx":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v0, :cond_5

    iget-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v2, :cond_5

    .line 1976
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1977
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 1979
    :cond_5
    return-void
.end method

.method updateRotationUnchecked()Z
    .locals 3

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    const/4 v0, 0x1

    .line 1204
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1209
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method updateUIDsPresentOnDisplay()V
    .locals 5

    .line 2659
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2661
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2663
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2664
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2665
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 2664
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2660
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2669
    .end local v0    # "displayNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 2670
    return-void
.end method

.method updateUserStack(ILcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2119
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_1

    .line 2120
    if-nez p2, :cond_0

    .line 2121
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2124
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2126
    :cond_1
    return-void
.end method
