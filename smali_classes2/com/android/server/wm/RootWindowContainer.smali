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

    .line 457
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 185
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 186
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 187
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 191
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 193
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 196
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 214
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 250
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 255
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    .line 269
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 272
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 279
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    .line 300
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 448
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 3212
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 466
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 467
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 468
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 469
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 470
    iput-object p0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 474
    invoke-static {p0}, Lcom/android/server/wm/OpWmInjector;->initRootWindowContainer(Lcom/android/server/wm/RootWindowContainer;)V

    .line 476
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RootWindowContainer;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->destroyActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RootWindowContainer;
    .param p1, "x1"    # Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)V

    return-void
.end method

.method private applySurfaceChangesTransaction()V
    .locals 7

    .line 1081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1082
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1086
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1087
    .local v1, "defaultInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1088
    .local v2, "defaultDw":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1089
    .local v3, "defaultDh":I
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    .line 1090
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/Watermark;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1092
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    .line 1093
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1095
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_2

    .line 1096
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1097
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1096
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V

    .line 1100
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 1101
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 1102
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 1103
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction()V

    .line 1101
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1108
    .end local v5    # "j":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1109
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1110
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks()V
    .locals 4

    .line 3613
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3614
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3616
    .local v1, "minimalSize":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3618
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v1, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 3619
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I

    .line 3002
    if-nez p1, :cond_0

    .line 3003
    const/4 v0, 0x1

    return v0

    .line 3005
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 4
    .param p1, "surfacePlacer"    # Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1051
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1055
    .local v1, "curDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 1058
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_0

    .line 1059
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAppTransitionReady"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1064
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppTransitioning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 1072
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_1

    .line 1073
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAnimStopAndXitionLock"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1050
    .end local v1    # "curDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1078
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private static clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2757
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v0, p1, :cond_0

    .line 2758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2760
    :cond_0
    return-void
.end method

.method private destroyActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2768
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2770
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

    .line 2771
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
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

    .line 2770
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 2775
    return-void

    .line 2768
    :cond_2
    :goto_0
    return-void
.end method

.method private getStack(III)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 2483
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2484
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 2485
    const/4 v1, 0x0

    return-object v1

    .line 2487
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method private getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2491
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2492
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 2493
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2494
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 2495
    iget v2, p1, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    iput v2, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 2496
    iget-object v2, p1, Lcom/android/server/wm/ActivityStack;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityManager$StackInfo;->stackToken:Landroid/window/WindowContainerToken;

    .line 2497
    iget v2, p1, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    iput v2, v1, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 2498
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 2501
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput v4, v1, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 2502
    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2504
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDescendantTaskCount()I

    move-result v4

    .line 2505
    .local v4, "numTasks":I
    new-array v5, v4, [I

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 2506
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 2507
    new-array v5, v4, [Landroid/graphics/Rect;

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 2508
    new-array v5, v4, [I

    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 2509
    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v3, v5, v3

    .line 2511
    .local v5, "currentIndex":[I
    sget-object v6, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JZALJLRYsvQWgNnzHdoTfj_f3QY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JZALJLRYsvQWgNnzHdoTfj_f3QY;

    const-class v7, Lcom/android/server/wm/Task;

    .line 2512
    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    .line 2511
    invoke-static {v6, v7, v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    .line 2514
    .local v6, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v6, v3}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2515
    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2517
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2518
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :cond_2
    iput-object v2, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 2519
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

    .line 582
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 591
    return-void
.end method

.method private static handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .locals 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 2812
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_0

    return-void

    .line 2813
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2814
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2813
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2816
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2818
    const-string v0, "handleAppCrashed"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2819
    return-void
.end method

.method private handleResizingWindows()V
    .locals 3

    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1117
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1118
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_0

    .line 1121
    goto :goto_1

    .line 1123
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 1124
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1116
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1126
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowingMode"    # I

    .line 3080
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

    .line 3086
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3088
    return v2

    .line 3092
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3093
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p3, v1, :cond_1

    if-nez p3, :cond_2

    .line 3096
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 3098
    :cond_2
    return v2

    .line 3084
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeDream()Z

    move-result v0

    return v0

    .line 3083
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 3082
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 3081
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

.method public static synthetic lambda$JVx5SVc0AsTnwnLxXYLgV6AKHPg(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->taskTopActivityIsUser(Lcom/android/server/wm/Task;I)V

    return-void
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

    .line 2717
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 2718
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2720
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

    .line 724
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

.method static synthetic lambda$dumpActivities$12(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3705
    const-string v0, "  Resumed activities in task display areas (from top to bottom):"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    return-void
.end method

.method static synthetic lambda$dumpActivities$13(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3714
    const-string v0, "  Activities waiting to finish:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$14(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3718
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

    .line 1288
    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
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

    .line 1290
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

    .line 1291
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    .line 1293
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

    .line 583
    if-eqz p0, :cond_0

    .line 584
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 588
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$8(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 1034
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$3(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 703
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    if-ne p0, v0, :cond_0

    .line 704
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 706
    :cond_0
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 459
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 462
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 719
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 720
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "packages"    # Landroid/util/ArraySet;
    .param p1, "suspended"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 711
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 714
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

    .line 2838
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2840
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2841
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2842
    return v0

    .line 2847
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2848
    return v0

    .line 2851
    :cond_2
    return v1

    .line 2838
    :cond_3
    :goto_0
    return v1
.end method

.method private prepareFreezingTaskBounds()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 696
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 699
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static processTaskForStackInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$StackInfo;[I)V
    .locals 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "info"    # Landroid/app/ActivityManager$StackInfo;
    .param p2, "currentIndex"    # [I

    .line 2524
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2525
    .local v1, "i":I
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput v3, v2, v1

    .line 2526
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2527
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2528
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2529
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "unknown"

    :goto_0
    aput-object v3, v2, v1

    .line 2530
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2531
    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    aput v3, v2, v1

    .line 2532
    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 2533
    return-void
.end method

.method private rankTaskLayerForActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2741
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 2742
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v1, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    goto :goto_0

    .line 2744
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 2746
    :goto_0
    return-void
.end method

.method private removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)V
    .locals 2
    .param p1, "token"    # Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;

    .line 2704
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2706
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;->access$100(Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2707
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2708
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2709
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2710
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 2713
    :cond_0
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 682
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 683
    .local v0, "configChanged":Z
    :goto_0
    if-nez v0, :cond_1

    .line 684
    return-void

    .line 686
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 687
    return-void
.end method

.method private shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3203
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3204
    :cond_0
    const-string v0, "assist"

    if-ne p2, v0, :cond_1

    return v1

    .line 3209
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

    .line 2004
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

    .line 2005
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2010
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-ne p3, p1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2012
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :cond_2
    nop

    .line 2020
    return v1

    .line 2014
    :catch_0
    move-exception v1

    .line 2015
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2016
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2015
    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2017
    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    .line 2018
    return v0

    .line 2006
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return v1
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 2601
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 2602
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 2603
    return-void
.end method

.method private taskTopActivityIsUser(Lcom/android/server/wm/Task;I)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "userId"    # I

    .line 3453
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3454
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3459
    .local v1, "resultTo":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v2, p2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v2, p2, :cond_3

    .line 3461
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V

    .line 3464
    :cond_3
    return-void
.end method

.method private static updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3301
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3302
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 3304
    :cond_0
    return-void
.end method


# virtual methods
.method addStartingWindowsForVisibleActivities()V
    .locals 1

    .line 2716
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$07q9Iva7qby1Cfkq4KztBB6CisE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$07q9Iva7qby1Cfkq4KztBB6CisE;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2721
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 12

    .line 3398
    const/4 v0, 0x1

    .line 3399
    .local v0, "pausing":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 3400
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3401
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 3402
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3403
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 3404
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3405
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3406
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_1

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3407
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_0

    .line 3408
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allPausedActivitiesComplete: r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3409
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3408
    const-string v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    const/4 v0, 0x0

    goto :goto_3

    .line 3412
    :cond_0
    const/4 v8, 0x0

    return v8

    .line 3403
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3401
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3399
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3418
    .end local v1    # "displayNdx":I
    :cond_4
    return v0
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .line 3348
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 3350
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3351
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3353
    goto :goto_1

    .line 3358
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3359
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->hasActivity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3360
    goto :goto_1

    .line 3362
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3363
    .local v4, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v5, :cond_4

    .line 3364
    :cond_2
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_3

    .line 3365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allResumedActivitiesIdle: stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3366
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

    .line 3365
    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 3348
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3372
    .end local v0    # "displayNdx":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 3373
    return v1
.end method

.method allResumedActivitiesVisible()Z
    .locals 9

    .line 3377
    const/4 v0, 0x0

    .line 3378
    .local v0, "foundResumed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 3379
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3380
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 3381
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3382
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 3383
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3384
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 3385
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_1

    .line 3386
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v8, :cond_0

    .line 3387
    const/4 v8, 0x0

    return v8

    .line 3389
    :cond_0
    const/4 v0, 0x1

    .line 3382
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3380
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3378
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3394
    .end local v1    # "displayNdx":I
    :cond_4
    return v0
.end method

.method anyTaskForId(I)Lcom/android/server/wm/Task;
    .locals 1
    .param p1, "id"    # I

    .line 3479
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(II)Lcom/android/server/wm/Task;
    .locals 2
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 3483
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

    .line 3496
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3497
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not specify activity options for non-restore lookup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3501
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY;

    const-class v2, Lcom/android/server/wm/Task;

    .line 3502
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3501
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 3503
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3504
    .local v9, "task":Lcom/android/server/wm/Task;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3506
    const/4 v2, 0x0

    if-eqz v9, :cond_4

    .line 3507
    if-eqz p3, :cond_3

    .line 3510
    nop

    .line 3511
    invoke-virtual {p0, v2, p3, v9, p4}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 3512
    .local v10, "launchStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eq v2, v10, :cond_3

    .line 3513
    if-eqz p4, :cond_2

    .line 3514
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v5, v0

    .line 3515
    .local v5, "reparentMode":I
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "anyTaskForId"

    move-object v2, v9

    move-object v3, v10

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3519
    .end local v5    # "reparentMode":I
    .end local v10    # "launchStack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    return-object v9

    .line 3523
    :cond_4
    if-nez p2, :cond_5

    .line 3524
    return-object v2

    .line 3529
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

    .line 3530
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3532
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    .line 3533
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_7

    .line 3534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tDidn\'t find task id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :cond_7
    return-object v2

    .line 3540
    :cond_8
    const/4 v3, 0x1

    if-ne p2, v3, :cond_9

    .line 3541
    return-object v0

    .line 3545
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    if-nez v3, :cond_b

    .line 3546
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

    .line 3548
    :cond_a
    return-object v2

    .line 3550
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

    .line 3551
    :cond_c
    return-object v0
.end method

.method applySleepTokens(Z)V
    .locals 12
    .param p1, "applyToStacks"    # Z

    .line 2402
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    .line 2404
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2405
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v3

    .line 2406
    .local v3, "displayShouldSleep":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2407
    goto :goto_4

    .line 2409
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setIsSleeping(Z)V

    .line 2411
    if-nez p1, :cond_1

    .line 2412
    goto :goto_4

    .line 2416
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_7

    .line 2417
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2418
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_6

    .line 2419
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2420
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v8, 0x0

    if-eqz v3, :cond_2

    .line 2421
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_3

    .line 2429
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2430
    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v10, 0x1c

    invoke-virtual {v9, v10, v8, v8, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2434
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->awakeFromSleepingLocked()V

    .line 2435
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2436
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2438
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2439
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v9

    iget v11, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2440
    invoke-virtual {v9, v11}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2446
    invoke-virtual {v7, v10, v10}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2452
    :cond_5
    invoke-virtual {v7, v10, v8, v8}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2418
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2416
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2402
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "displayShouldSleep":Z
    .end local v4    # "tdaNdx":I
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2458
    .end local v0    # "displayNdx":I
    :cond_8
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 1976
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1977
    .local v1, "didSomething":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    .line 1978
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 1979
    .local v5, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1980
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v6, :cond_0

    .line 1981
    goto :goto_1

    .line 1984
    :cond_0
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    .line 1985
    iput-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z

    .line 1986
    sget-object v3, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 1988
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1986
    invoke-static {v3, p0, v4, p1, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v3

    .line 1989
    .local v3, "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1990
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1991
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    if-nez v4, :cond_1

    .line 1994
    iget-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z

    or-int/2addr v1, v4

    .line 1977
    .end local v3    # "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1992
    .restart local v3    # "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    throw v4

    .line 1996
    .end local v2    # "displayNdx":I
    .end local v3    # "c":Lcom/android/internal/util/function/pooled/PooledFunction;
    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    if-nez v1, :cond_3

    .line 1997
    invoke-virtual {p0, v3, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1999
    :cond_3
    return v1
.end method

.method canShowStrictModeViolation(I)Z
    .locals 2
    .param p1, "pid"    # I

    .line 724
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 725
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

    .line 1775
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1779
    return v2

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1783
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1784
    .local v0, "app":Lcom/android/server/wm/WindowProcessController;
    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1786
    return v2

    .line 1789
    :cond_1
    const/4 v3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    goto :goto_0

    .line 1790
    :cond_2
    move v4, v3

    :goto_0
    nop

    .line 1791
    .local v4, "displayId":I
    if-eqz v4, :cond_7

    if-eq v4, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne v4, v3, :cond_3

    goto :goto_2

    .line 1797
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1798
    return v2

    .line 1801
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

    .line 1803
    .local v3, "supportMultipleInstance":Z
    :goto_1
    if-nez v3, :cond_6

    .line 1805
    return v2

    .line 1808
    :cond_6
    return v1

    .line 1794
    .end local v3    # "supportMultipleInstance":Z
    :cond_7
    :goto_2
    return v1
.end method

.method cancelInitializingActivities()V
    .locals 6

    .line 3467
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3468
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3469
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3470
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 3471
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "sNdx":I
    :goto_2
    if-ltz v4, :cond_0

    .line 3472
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->cancelInitializingActivities()V

    .line 3471
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3469
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "sNdx":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3467
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "tdaNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3476
    .end local v0    # "displayNdx":I
    :cond_2
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 2
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2749
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2751
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2749
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2752
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2753
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2754
    return-void
.end method

.method closeSystemDialogActivities(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3194
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3200
    return-void
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 729
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 731
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method copyAnimToLayoutParams()Z
    .locals 4

    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1209
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1210
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1211
    const/4 v0, 0x1

    .line 1213
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 1214
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_0

    .line 1216
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1217
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1218
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_2

    .line 1219
    const/4 v0, 0x1

    .line 1223
    :cond_2
    :goto_0
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    .line 1224
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1227
    :cond_3
    return v0
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2692
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2693
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2697
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;I)V

    .line 2698
    .local v1, "token":Lcom/android/server/wm/RootWindowContainer$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    return-object v1

    .line 2694
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

    .line 3655
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3656
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3657
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

    .line 3658
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3659
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3660
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3658
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3662
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3663
    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .line 3681
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v1, 0x0

    .line 3682
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 3683
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

    .line 3684
    invoke-virtual {v0, v8}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    .line 3685
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v14, :cond_0

    .line 3686
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3688
    :cond_0
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3689
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    .local v10, "tdaNdx":I
    :goto_1
    if-ltz v10, :cond_3

    .line 3691
    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    .line 3692
    .local v11, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v12, v1

    .local v12, "sNdx":I
    :goto_2
    if-ltz v12, :cond_2

    .line 3693
    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 3694
    .local v16, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v15, :cond_1

    .line 3695
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3697
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

    .line 3698
    or-int/2addr v14, v15

    .line 3692
    .end local v16    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 3690
    .end local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v12    # "sNdx":I
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 3701
    .end local v10    # "tdaNdx":I
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    .local v7, "tdaNdx":I
    :goto_3
    if-ltz v7, :cond_4

    .line 3702
    invoke-virtual {v9, v7}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    .line 3703
    .local v10, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    new-instance v6, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$D5wXhix5kSu0ovRlUusQHDpJjyo;

    invoke-direct {v6, v13}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$D5wXhix5kSu0ovRlUusQHDpJjyo;-><init>(Ljava/io/PrintWriter;)V

    const-string v5, "    Resumed: "

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move v4, v15

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 3701
    .end local v10    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 3683
    .end local v7    # "tdaNdx":I
    .end local v9    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3711
    .end local v8    # "displayNdx":I
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$4_P7sOzhQfja_16d53dY683U8rc;

    invoke-direct {v11, v13}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$4_P7sOzhQfja_16d53dY683U8rc;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int/2addr v14, v1

    .line 3715
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$wmhKg8x6RdcBlSmvGqN5AdCspCE;

    invoke-direct {v11, v13}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$wmhKg8x6RdcBlSmvGqN5AdCspCE;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Stop"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int/2addr v1, v14

    .line 3720
    .end local v14    # "printed":Z
    .restart local v1    # "printed":Z
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 1306
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    return-void

    .line 1310
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1311
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1313
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1314
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 1315
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    .line 1314
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1316
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const-wide v3, 0x20b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityStartController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1318
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1319
    return-void
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3670
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    .line 3672
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3673
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3674
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3672
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3677
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1254
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1257
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1259
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1257
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1262
    :cond_1
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    :goto_1
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    return-void

    .line 1274
    :cond_0
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1276
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1277
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1278
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1279
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1276
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1282
    .end local v1    # "displayNdx":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1283
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1297
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1298
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1301
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1267
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1268
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

    .line 1286
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1287
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1294
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 2029
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2030
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 2037
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    return-void

    .line 2043
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2046
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2047
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2051
    .end local v0    # "displayNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 2052
    nop

    .line 2053
    return-void

    .line 2051
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 2052
    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .locals 6
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 1828
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1831
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1833
    return v1

    .line 1838
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1839
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 1840
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_2

    .line 1841
    nop

    .line 1842
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 1843
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1844
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 1841
    :goto_0
    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v3

    .line 1850
    :cond_2
    if-eqz p1, :cond_3

    .line 1851
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V

    .line 1853
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    .line 1854
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1857
    :cond_4
    if-eqz v2, :cond_5

    .line 1859
    invoke-virtual {v2, v3, p1, p4, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0

    .line 1862
    :cond_5
    return v1
.end method

.method executeAppTransitionForAllDisplay()V
    .locals 3

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2264
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2265
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2263
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2267
    .end local v0    # "displayNdx":I
    :cond_0
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 2822
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2823
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2824
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2826
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2828
    .local v7, "userId":I
    sget-object v1, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 2829
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 2830
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2828
    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 2831
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2832
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2833
    return-object v2
.end method

.method findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2649
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2650
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_1

    .line 2651
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2652
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_0

    if-lez v1, :cond_0

    .line 2653
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    return-object v2

    .line 2651
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2657
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

    .line 2270
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

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->clear()V

    .line 2274
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2275
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 2277
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_1

    .line 2278
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 2282
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2283
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 2284
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_4

    .line 2285
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2286
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-ne v5, p2, :cond_2

    .line 2287
    goto :goto_2

    .line 2290
    :cond_2
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 2292
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v6, v6, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v6, :cond_3

    .line 2293
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 2284
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2282
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2298
    .end local v2    # "displayNdx":I
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    const-string v0, "No task found"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
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

    .line 3285
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

    .line 2309
    const/4 v0, 0x0

    .line 2310
    .local v0, "finishedTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2311
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 2312
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 2313
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 2314
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2318
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_2
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2319
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2320
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 2321
    .local v8, "t":Lcom/android/server/wm/Task;
    if-eq v7, v1, :cond_0

    if-nez v0, :cond_1

    .line 2322
    :cond_0
    move-object v0, v8

    .line 2318
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "t":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2313
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "stackNdx":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2311
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2327
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

    .line 3307
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3308
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3309
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    .line 3310
    .local v2, "numTaskContainers":I
    const/4 v3, 0x0

    .local v3, "tdaNdx":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 3311
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3312
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getStackCount()I

    move-result v5

    .line 3313
    .local v5, "numStacks":I
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_2
    if-ge v6, v5, :cond_0

    .line 3314
    invoke-virtual {v4, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3315
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7, p1}, Lcom/android/server/wm/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3313
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3310
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "numStacks":I
    .end local v6    # "stackNdx":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3307
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "numTaskContainers":I
    .end local v3    # "tdaNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3319
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

    .line 1352
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayPolicy;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1352
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1355
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

    .line 1346
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1347
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1346
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1349
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 617
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 618
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    .line 619
    return-object v2

    .line 615
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 622
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

    .line 2555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2556
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 2557
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2558
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2559
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 2560
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2561
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 2562
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 2563
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v6}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2561
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2559
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2557
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2567
    .end local v1    # "displayNdx":I
    :cond_2
    return-object v0

    .line 2569
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2570
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_4

    .line 2571
    return-object v0

    .line 2573
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_3
    if-ltz v2, :cond_6

    .line 2574
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2575
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "sNdx":I
    :goto_4
    if-ltz v4, :cond_5

    .line 2576
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2577
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 2573
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "sNdx":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2580
    .end local v2    # "tdaNdx":I
    :cond_6
    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 1362
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1364
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 1365
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v2

    .line 1362
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1368
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultDisplay()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "userId"    # I

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3
    .param p1, "displayId"    # I

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1448
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1449
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_0

    .line 1450
    return-object v1

    .line 1447
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1453
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .locals 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1435
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1436
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    .line 1437
    .local v2, "isValid":Z
    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1438
    return-object v1

    .line 1434
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "isValid":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1442
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 3
    .param p1, "displayId"    # I

    .line 1462
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1463
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 1464
    return-object v0

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1468
    return-object v2

    .line 1470
    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1471
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_2

    .line 1473
    return-object v2

    .line 1476
    :cond_2
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    move-object v0, v2

    .line 1477
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1478
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

    .line 1372
    .local p2, "outContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p2, :cond_0

    .line 1373
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1377
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->isAnyNonToastWindowVisibleForPid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1381
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "displayId"    # I

    .line 2668
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2669
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 2670
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

    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1384
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

    .line 3627
    if-eqz p3, :cond_1

    .line 3628
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3629
    .local v0, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 3630
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 3632
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 3635
    .end local v0    # "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3636
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    .line 3637
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 3638
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 3639
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 3640
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 3641
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_4

    .line 3642
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3643
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3644
    :cond_2
    invoke-virtual {v7, p1}, Lcom/android/server/wm/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3641
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3639
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3637
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3649
    .end local v2    # "displayNdx":I
    :cond_6
    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 173
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

    .line 2866
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

    .line 2886
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    const/4 v0, -0x1

    .line 2887
    .local v0, "taskId":I
    const/4 v1, -0x1

    .line 2888
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2891
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v8, :cond_1

    .line 2892
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    .line 2893
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 2895
    .local v3, "daToken":Landroid/window/WindowContainerToken;
    if-eqz v3, :cond_0

    .line 2896
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

    .line 2891
    .end local v3    # "daToken":Landroid/window/WindowContainerToken;
    :cond_1
    move v13, v0

    move v14, v1

    .line 2901
    .end local v0    # "taskId":I
    .end local v1    # "displayId":I
    .local v13, "taskId":I
    .local v14, "displayId":I
    :goto_1
    const/4 v0, -0x1

    if-eq v13, v0, :cond_2

    .line 2903
    invoke-virtual {v8, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2904
    const/4 v1, 0x2

    move/from16 v15, p4

    invoke-virtual {v6, v13, v1, v8, v15}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2906
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8, v13}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2907
    if-eqz v1, :cond_3

    .line 2908
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2901
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2
    move/from16 v15, p4

    .line 2912
    :cond_3
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v5

    .line 2913
    .local v5, "activityType":I
    const/16 v16, 0x0

    .line 2916
    .local v16, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v10, :cond_4

    iget-object v1, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_4

    .line 2917
    iget-object v2, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2920
    :cond_4
    if-nez v2, :cond_5

    if-eq v14, v0, :cond_5

    .line 2921
    invoke-virtual {v6, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2922
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_5

    .line 2923
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    .line 2927
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5
    move-object v4, v2

    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_2
    const/16 v17, 0x0

    if-eqz v4, :cond_b

    .line 2928
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    .line 2929
    .local v3, "tdaDisplayId":I
    if-eqz v11, :cond_6

    if-lez v12, :cond_6

    if-eqz v7, :cond_6

    iget-object v0, v6, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2931
    invoke-virtual {v0, v3, v11, v12, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move/from16 v0, v17

    :goto_3
    move/from16 v18, v0

    .line 2933
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

    .line 2934
    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    .line 2935
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

    .line 2937
    .local v0, "result":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_a

    .line 2938
    return-object v0

    .line 2934
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

    .line 2942
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

    .line 2943
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v20

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 2945
    if-eqz v16, :cond_c

    .line 2946
    return-object v16

    .line 2927
    .end local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v18    # "canLaunchOnDisplayFromStartRequest":Z
    .end local v19    # "tdaDisplayId":I
    .end local v20    # "activityType":I
    .restart local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "activityType":I
    :cond_b
    move-object v11, v4

    move/from16 v20, v5

    .line 2953
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "activityType":I
    .restart local v11    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v20    # "activityType":I
    :cond_c
    :goto_5
    const/4 v0, 0x0

    .line 2954
    .local v0, "container":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v9, :cond_d

    .line 2955
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 2957
    :cond_d
    if-nez v16, :cond_e

    if-eqz v7, :cond_e

    .line 2958
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_6

    .line 2960
    :cond_e
    move-object/from16 v5, v16

    .end local v16    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_6
    if-eqz v10, :cond_f

    iget v1, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    move/from16 v17, v1

    goto :goto_7

    .line 2961
    :cond_f
    nop

    :goto_7
    move/from16 v1, v17

    .line 2962
    .local v1, "windowingMode":I
    if-eqz v5, :cond_14

    .line 2963
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2964
    if-eqz v0, :cond_13

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v6, v7, v2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2965
    if-nez v1, :cond_10

    .line 2966
    move/from16 v4, v20

    .end local v20    # "activityType":I
    .local v4, "activityType":I
    invoke-virtual {v0, v7, v8, v9, v4}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I

    move-result v1

    goto :goto_8

    .line 2965
    .end local v4    # "activityType":I
    .restart local v20    # "activityType":I
    :cond_10
    move/from16 v4, v20

    .line 2972
    .end local v20    # "activityType":I
    .restart local v4    # "activityType":I
    :goto_8
    invoke-virtual {v5, v1, v4}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-nez v2, :cond_12

    iget-boolean v2, v5, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_11

    goto :goto_9

    .line 2975
    :cond_11
    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    .line 2976
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, v5, :cond_15

    .line 2977
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v9, v2, :cond_15

    .line 2983
    return-object v5

    .line 2973
    :cond_12
    :goto_9
    return-object v5

    .line 2964
    .end local v4    # "activityType":I
    .restart local v20    # "activityType":I
    :cond_13
    move/from16 v4, v20

    .end local v20    # "activityType":I
    .restart local v4    # "activityType":I
    goto :goto_a

    .line 2962
    .end local v4    # "activityType":I
    .restart local v20    # "activityType":I
    :cond_14
    move/from16 v4, v20

    .line 2988
    .end local v20    # "activityType":I
    .restart local v4    # "activityType":I
    :cond_15
    :goto_a
    if-eqz v0, :cond_17

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2989
    invoke-direct {v6, v7, v2}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    move-object/from16 v16, v0

    move/from16 v17, v1

    goto :goto_c

    .line 2990
    :cond_17
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2991
    if-nez v1, :cond_18

    .line 2992
    invoke-virtual {v0, v7, v8, v9, v4}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I

    move-result v1

    move-object/from16 v16, v0

    move/from16 v17, v1

    goto :goto_c

    .line 2991
    :cond_18
    move-object/from16 v16, v0

    move/from16 v17, v1

    .line 2997
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

    .line 1323
    const-string v0, "ROOT"

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 3132
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3133
    .local v0, "preferredDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v0, :cond_0

    .line 3136
    iget v1, p1, Lcom/android/server/wm/ActivityStack;->mPrevDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3137
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3139
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3141
    .local v1, "preferredFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1

    .line 3142
    return-object v1

    .line 3144
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3148
    return-object v3

    .line 3152
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 3153
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 3154
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, v5, :cond_3

    .line 3156
    goto :goto_1

    .line 3158
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 3159
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3160
    .local v5, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_4

    .line 3161
    return-object v5

    .line 3152
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3165
    .end local v2    # "i":I
    :cond_5
    return-object v3
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 173
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

    .line 3563
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

    .line 3565
    return-void
.end method

.method protected getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2462
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2463
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2464
    return-object v1

    .line 2461
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2467
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2472
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2473
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2474
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2475
    return-object v1

    .line 2472
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2478
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .line 2536
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2537
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 2538
    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getStackInfo(Lcom/android/server/wm/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 2540
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2545
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

    .line 2549
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getStack(III)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2550
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

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 1900
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1901
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1902
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 1903
    return-object v1

    .line 1900
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1906
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 515
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 516
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

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1911
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1912
    return-object v1

    .line 1914
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1915
    .local v2, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_1

    .line 1916
    return-object v2

    .line 1920
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1921
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1922
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "tdaNdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1923
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 1924
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    nop

    .line 1925
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1926
    .local v7, "resumedActivityOnTaskContainer":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_2

    .line 1927
    return-object v7

    .line 1922
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "resumedActivityOnTaskContainer":Lcom/android/server/wm/ActivityRecord;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1920
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "tdaNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1931
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

    .line 1871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1872
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1874
    .local v1, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "dNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 1875
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 1876
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 1877
    nop

    .line 1878
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 1880
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_2

    .line 1881
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 1883
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1884
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1885
    .local v8, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_1

    .line 1886
    if-ne v7, v1, :cond_0

    .line 1887
    const/4 v9, 0x0

    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1889
    :cond_0
    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1876
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1874
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "tdaNdx":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1896
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

    .line 3021
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3022
    return-object v1

    .line 3028
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p3, :cond_5

    .line 3030
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3031
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 3032
    .local v2, "attachedTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_0
    if-eqz v2, :cond_4

    if-ne v2, p1, :cond_3

    goto :goto_1

    .line 3037
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3038
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3039
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 3040
    return-object v1

    .line 3033
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 3045
    .end local v2    # "attachedTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_5
    if-eqz p5, :cond_6

    .line 3049
    iget v2, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .local v2, "windowingMode":I
    goto :goto_3

    .line 3051
    .end local v2    # "windowingMode":I
    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    goto :goto_2

    .line 3052
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    :goto_2
    nop

    .line 3054
    .restart local v2    # "windowingMode":I
    :goto_3
    nop

    .line 3055
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    .line 3054
    invoke-virtual {p1, v2, p2, p3, v3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v2

    .line 3058
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_4
    if-ltz v3, :cond_9

    .line 3059
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3060
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v4, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->isValidLaunchStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3061
    return-object v4

    .line 3058
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 3067
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3068
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eq p1, v3, :cond_b

    .line 3070
    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    if-eqz v1, :cond_a

    .line 3071
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    .line 3072
    .local v1, "activityType":I
    :goto_5
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 3075
    .end local v1    # "activityType":I
    :cond_b
    return-object v1
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 629
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    .line 630
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v2, :cond_0

    .line 631
    return-object v2

    .line 627
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 634
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .locals 4
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 639
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 640
    return-object v0

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 644
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 645
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 646
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1

    .line 647
    return-object v2

    .line 643
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "current":Lcom/android/server/wm/WindowToken;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 651
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

    .line 570
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 573
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 574
    const/4 p2, 0x0

    .line 576
    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 578
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 579
    return-void
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 2805
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2806
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2805
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2807
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2808
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2809
    return-void
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 3169
    const/4 v0, 0x0

    .line 3170
    .local v0, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3171
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3172
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 3173
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3174
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 3181
    :try_start_0
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3182
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, p1}, Lcom/android/server/wm/ActivityStack;->handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v7

    .line 3185
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_3

    .line 3183
    :catch_0
    move-exception v6

    .line 3184
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3174
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3172
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3170
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3190
    .end local v1    # "displayNdx":I
    :cond_2
    return v0
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 23
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .line 1136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1137
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1138
    .local v3, "attrFlags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    .line 1139
    .local v4, "onScreen":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    .line 1140
    .local v5, "canBeSeen":Z
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1141
    .local v6, "privateflags":I
    const/4 v7, 0x0

    .line 1143
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

    .line 1147
    .end local v7    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :goto_0
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 1148
    if-nez p3, :cond_1

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 1149
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 1150
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

    .line 1154
    .end local v7    # "protoLogParam0":J
    :cond_1
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    .line 1155
    and-int/lit16 v7, v3, 0x80

    if-eqz v7, :cond_2

    .line 1156
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1157
    iput-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 1158
    :cond_2
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v7, :cond_3

    .line 1159
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

    .line 1164
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

    .line 1165
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1166
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1169
    :cond_4
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1172
    .local v7, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1173
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_7

    iget-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_7

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1178
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1180
    :cond_6
    const/4 v9, 0x1

    .end local v20    # "displayHasContent":Z
    .local v9, "displayHasContent":Z
    goto :goto_2

    .line 1181
    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_7
    if-eqz v8, :cond_9

    iget-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_8

    if-eqz p2, :cond_9

    const/16 v9, 0x7d9

    if-ne v7, v9, :cond_9

    .line 1185
    :cond_8
    const/4 v9, 0x1

    .end local v20    # "displayHasContent":Z
    .restart local v9    # "displayHasContent":Z
    goto :goto_2

    .line 1187
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

    .line 1188
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 1192
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

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2856
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2857
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2858
    return v1

    .line 2855
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2861
    .end local v0    # "displayNdx":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .locals 5
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 745
    const/4 v0, 0x0

    .line 747
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 748
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 749
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 750
    .local v3, "pendingChanges":I
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_0

    .line 751
    iget v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 753
    :cond_0
    if-eqz v3, :cond_1

    .line 754
    const/4 v0, 0x1

    .line 748
    .end local v3    # "pendingChanges":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method invalidateTaskLayers()V
    .locals 1

    .line 2724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2725
    return-void
.end method

.method isAnyNonToastWindowVisibleForUid(I)Z
    .locals 3
    .param p1, "callingUid"    # I

    .line 600
    sget-object v0, Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4;

    const-class v1, Lcom/android/server/wm/WindowState;

    .line 602
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 600
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 604
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 605
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 606
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

    .line 3555
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3556
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

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 560
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 562
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    const/4 v3, 0x1

    return v3

    .line 560
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "displayNdx":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isOnTop()Z
    .locals 1

    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1935
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

    .line 3195
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 3196
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3197
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 3199
    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 449
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 451
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 455
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$reclaimSomeSurfaceMemory$7$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    return-void

    .line 787
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 788
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 791
    :cond_1
    return-void
.end method

.method lockAllProfileTasks(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 3428
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3430
    :try_start_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$JVx5SVc0AsTnwnLxXYLgV6AKHPg;

    const-class v1, Lcom/android/server/wm/Task;

    .line 3431
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3430
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3433
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3434
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3436
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3437
    nop

    .line 3438
    return-void

    .line 3436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3437
    throw v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2196
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2198
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2201
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v8, v1

    .line 2202
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    move-object v9, v1

    .line 2206
    .local v9, "pinnedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v9, :cond_0

    .line 2207
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 2212
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2214
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

    .line 2216
    .local v12, "singleActivity":Z
    if-eqz v12, :cond_2

    .line 2217
    move-object v1, v8

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_1

    .line 2221
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

    .line 2226
    .restart local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, v8, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2232
    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    .line 2237
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    .line 2238
    .local v2, "intermediateWindowingMode":I
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v0, :cond_3

    .line 2241
    invoke-virtual {v1, v0, v11}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2246
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setWindowingMode(I)V

    .line 2247
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 2251
    iput-boolean v10, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v2    # "intermediateWindowingMode":I
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "pinnedStack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "singleActivity":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2254
    nop

    .line 2256
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v10, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2257
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2259
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    .line 2260
    return-void

    .line 2253
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2254
    throw v1
.end method

.method moveStackToDisplay(IIZ)V
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 2155
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2156
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 2161
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStackCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2163
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

    .line 2165
    return-void

    .line 2168
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->moveStackToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2169
    return-void

    .line 2157
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

    .line 2123
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2124
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_3

    .line 2129
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2130
    .local v1, "currentTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_2

    .line 2135
    if-eqz p2, :cond_1

    .line 2140
    if-eq v1, p2, :cond_0

    .line 2144
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2146
    return-void

    .line 2141
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

    .line 2136
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

    .line 2131
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

    .line 2125
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

    .line 2172
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2173
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_2

    .line 2178
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2179
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v1, :cond_0

    .line 2180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return v2

    .line 2185
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTopStackActivityToPinnedStack: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return v2

    .line 2191
    :cond_1
    const-string v2, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2192
    const/4 v2, 0x1

    return v2

    .line 2174
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

    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 529
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 691
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 692
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 693
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 2585
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

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2587
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2588
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1

    .line 2589
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2594
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

    .line 2595
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 2597
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2598
    return-void

    .line 2597
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

    .line 2624
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

    .line 2625
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2626
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2627
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    .line 2628
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged()V

    .line 2630
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2631
    return-void

    .line 2630
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

    .line 2607
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

    .line 2608
    :cond_0
    if-eqz p1, :cond_2

    .line 2612
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2613
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2614
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1

    .line 2615
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2618
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 2619
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2620
    return-void

    .line 2619
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2609
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onSettingsRetrieved()V
    .locals 8

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 536
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 538
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 540
    .local v3, "changed":Z
    if-nez v3, :cond_0

    .line 541
    goto :goto_1

    .line 544
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 549
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    .line 550
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 551
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 550
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 552
    .local v4, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 536
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "changed":Z
    .end local v4    # "newConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v1    # "displayNdx":I
    :cond_2
    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method performSurfacePlacement()V
    .locals 3

    .line 835
    const-wide/16 v0, 0x20

    const-string v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 837
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 840
    nop

    .line 841
    return-void

    .line 839
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 840
    throw v2
.end method

.method performSurfacePlacementNoTrace()V
    .locals 17

    .line 846
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

    .line 847
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 853
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 858
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 859
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 860
    iget-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 861
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 859
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    .end local v0    # "displayNdx":I
    :cond_2
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 865
    const/high16 v9, 0x7fc00000    # Float.NaN

    iput v9, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 866
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 867
    iput-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 868
    iput-boolean v6, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 869
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 872
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 873
    .local v10, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 875
    .local v12, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_3
    const-wide/16 v13, 0x20

    const-string v0, "applySurfaceChanges"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 878
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 880
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 885
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 886
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 884
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 881
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 882
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v15, "Unhandled exception in Window Manager"

    invoke-static {v5, v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 885
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 886
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 889
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 891
    invoke-direct {v1, v12}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 894
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 895
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 896
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_5

    .line 897
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 900
    :cond_5
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_3
    if-ge v2, v7, :cond_8

    .line 901
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 902
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v13, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v13, :cond_7

    .line 903
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v13, :cond_6

    const-string v13, "Wallpaper may change!  Adjusting"

    invoke-static {v5, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_6
    iget v13, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 905
    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_7

    .line 906
    iget v13, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v14, "WallpaperMayChange"

    invoke-virtual {v12, v14, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 900
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 912
    .end local v2    # "displayNdx":I
    :cond_8
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_9

    .line 913
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 914
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 918
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 919
    iget v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v2, v11

    iput v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 920
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_a

    iget v2, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v13, "mLayoutNeeded"

    invoke-virtual {v12, v13, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 924
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 926
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_b

    .line 927
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

    .line 931
    .end local v2    # "protoLogParam0":Z
    :cond_b
    iget-boolean v2, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_d

    .line 932
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_c

    .line 933
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v6, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 934
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 935
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 937
    :cond_c
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 941
    :cond_d
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 942
    .local v2, "i":I
    if-lez v2, :cond_11

    .line 944
    :cond_e
    add-int/lit8 v2, v2, -0x1

    .line 945
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 946
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iput-boolean v6, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 947
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 948
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v14, v4, :cond_f

    .line 949
    invoke-virtual {v13, v8}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 951
    :cond_f
    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v14, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 952
    iget v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 954
    :cond_10
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 955
    iget-object v14, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 956
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-gtz v2, :cond_e

    .line 957
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 961
    :cond_11
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_4
    if-ge v4, v7, :cond_12

    .line 962
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 963
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 961
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 966
    .end local v4    # "displayNdx":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "displayNdx":I
    :goto_5
    if-ge v4, v7, :cond_14

    .line 967
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 968
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v14, v13, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v14, :cond_13

    .line 969
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 966
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 973
    .end local v4    # "displayNdx":I
    :cond_14
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 974
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_17

    .line 976
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const/4 v13, 0x0

    cmpg-float v13, v4, v13

    if-ltz v13, :cond_16

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v4, v13

    if-lez v13, :cond_15

    goto :goto_6

    .line 977
    :cond_15
    move v9, v4

    goto :goto_7

    :cond_16
    :goto_6
    nop

    :goto_7
    move v4, v9

    .line 978
    .local v4, "brightnessOverride":F
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    .line 981
    .local v9, "brightnessFloatAsIntBits":I
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v11, v9, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    .line 982
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 983
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v14, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 986
    .end local v4    # "brightnessOverride":F
    .end local v9    # "brightnessFloatAsIntBits":I
    :cond_17
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v4, :cond_18

    .line 987
    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 988
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v4, 0x6

    .line 990
    iget-boolean v9, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 988
    invoke-virtual {v3, v4, v9}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 993
    :cond_18
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_1a

    .line 994
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_19

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x41c0358b

    move-object v9, v8

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v6, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 995
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 998
    :cond_1a
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v3, :cond_1c

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v3, :cond_1c

    .line 1001
    :cond_1b
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 1004
    :cond_1c
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1005
    .local v3, "N":I
    if-lez v3, :cond_20

    .line 1006
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v4, v4

    if-ge v4, v3, :cond_1d

    .line 1007
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v6, v3, 0xa

    new-array v6, v6, [Lcom/android/server/wm/WindowState;

    iput-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 1009
    :cond_1d
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1010
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1011
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v4, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_1f

    .line 1013
    iget-object v6, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v6, v6, v2

    .line 1014
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 1015
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1016
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_1e

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 1017
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1021
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    .local v6, "j":I
    :goto_9
    if-ltz v6, :cond_20

    .line 1022
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 1023
    .local v8, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8, v11}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1021
    .end local v8    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 1028
    .end local v4    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v6    # "j":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleCompleteDeferredRemoval()Z

    .line 1030
    sget-object v4, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1038
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1040
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1043
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingTaskInfoChanges()V

    .line 1045
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v4, :cond_21

    const-string v4, "performSurfacePlacementInner exit"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_21
    return-void

    .line 884
    .end local v0    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v2    # "i":I
    .end local v3    # "N":I
    :goto_a
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 885
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 886
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_22

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_22
    throw v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "includingParents"    # Z

    .line 2663
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2664
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2665
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 173
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method prepareForShutdown()V
    .locals 3

    .line 2686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2687
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 2686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2689
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method putStacksToSleep(ZZ)Z
    .locals 8
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 2780
    const/4 v0, 0x1

    .line 2781
    .local v0, "allSleep":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2782
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2783
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 2784
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2785
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 2789
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2790
    goto :goto_3

    .line 2792
    :cond_0
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 2793
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p1, :cond_1

    .line 2794
    invoke-virtual {v6, p2}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v7

    and-int/2addr v0, v7

    goto :goto_3

    .line 2796
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 2785
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2783
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2781
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2801
    .end local v1    # "displayNdx":I
    :cond_4
    return v0
.end method

.method rankTaskLayersIfNeeded()V
    .locals 2

    .line 2728
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_0

    .line 2729
    return-void

    .line 2731
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2732
    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 2733
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2735
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2733
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2736
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2737
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2738
    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 16
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    .line 763
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 764
    .local v4, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v5, 0x0

    .line 765
    .local v5, "leakedSurface":Z
    const/4 v6, 0x0

    .line 766
    .local v6, "killedApps":Z
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v8, p2

    invoke-static {v0, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 773
    .local v9, "callingIdentity":J
    :try_start_0
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v7, v0

    .line 775
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 776
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v5, v11

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "displayNdx":I
    :cond_0
    const/4 v11, 0x0

    if-nez v5, :cond_5

    .line 780
    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v12, v0

    .line 782
    .local v12, "pidCandidates":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    move v13, v6

    move v6, v0

    .local v6, "displayNdx":I
    .local v13, "killedApps":Z
    :goto_1
    if-ge v6, v7, :cond_4

    .line 783
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;

    invoke-direct {v14, v1, v12}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 793
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 794
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v14, v0

    .line 795
    .local v14, "pids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v15, v14

    if-ge v0, v15, :cond_1

    .line 796
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 799
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

    .line 800
    const/4 v0, 0x1

    move v13, v0

    .line 803
    :cond_2
    goto :goto_3

    .line 828
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v14    # "pids":[I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 802
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

    .line 793
    .end local v14    # "pids":[I
    :cond_3
    move/from16 v11, p3

    .line 782
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 828
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :catchall_1
    move-exception v0

    move/from16 v11, p3

    :goto_4
    move v6, v13

    goto :goto_a

    .line 782
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_4
    move/from16 v11, p3

    move v6, v13

    goto :goto_5

    .line 779
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v13    # "killedApps":Z
    .local v6, "killedApps":Z
    :cond_5
    move/from16 v11, p3

    .line 808
    :goto_5
    const/4 v12, 0x1

    if-nez v5, :cond_7

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    goto :goto_9

    .line 811
    :cond_7
    :goto_6
    :try_start_4
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz v4, :cond_9

    .line 814
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

    .line 816
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 817
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a

    .line 818
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    .line 813
    :cond_9
    const/4 v12, 0x0

    .line 823
    :cond_a
    :goto_8
    :try_start_5
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 825
    goto :goto_9

    .line 824
    :catch_2
    move-exception v0

    .line 828
    .end local v7    # "numDisplays":I
    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    nop

    .line 831
    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    const/4 v12, 0x1

    :cond_c
    return v12

    .line 828
    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v11, p3

    :goto_a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    throw v0
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1333
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1334
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1338
    :cond_0
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 173
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .locals 6

    .line 734
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

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 737
    const v1, 0x54da4e01

    :try_start_0
    sget-object v4, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 740
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :cond_1
    return-void

    .line 739
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 740
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 741
    :cond_2
    throw v4
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 2
    .param p1, "windowingModes"    # [I

    .line 3326
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3327
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeStacksInWindowingModes([I)V

    .line 3326
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3329
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 2
    .param p1, "activityTypes"    # [I

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3333
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeStacksWithActivityTypes([I)V

    .line 3332
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3335
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2099
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2100
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

    .line 1692
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1693
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1694
    .local v0, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1, p2, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1695
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1699
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 1697
    .end local v0    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1700
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 3105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3106
    .local v0, "activityType":I
    :goto_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 3107
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    .line 3109
    :cond_1
    if-eqz v0, :cond_2

    .line 3110
    return v0

    .line 3112
    :cond_2
    if-eqz p2, :cond_3

    .line 3113
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 3115
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

    .line 1601
    const/16 v0, 0x400

    .line 1602
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1603
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1605
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v3, 0x400

    if-eqz v1, :cond_0

    .line 1607
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 1609
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1610
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1612
    invoke-interface {v5, p2, v4, v3, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1613
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1614
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1619
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1617
    :catch_0
    move-exception v3

    .line 1621
    :goto_1
    if-nez v2, :cond_2

    .line 1622
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

    .line 1623
    const/4 v3, 0x0

    return-object v3

    .line 1626
    :cond_2
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    .line 1627
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1628
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

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p2, v0, :cond_6

    .line 1639
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1640
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1641
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1642
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1644
    const/4 v1, 0x0

    goto :goto_2

    .line 1648
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1649
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 1650
    .local v3, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1651
    .local v4, "size":I
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1652
    .local v5, "targetName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1653
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 1654
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1657
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1658
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1659
    goto :goto_1

    .line 1653
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1662
    .end local v6    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-lez v4, :cond_3

    .line 1664
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1669
    .end local v3    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "size":I
    .end local v5    # "targetName":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1670
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1671
    const/4 v1, 0x0

    .line 1676
    :cond_4
    if-nez v1, :cond_5

    .line 1677
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1678
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1680
    :cond_5
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1635
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

    .line 2331
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

    .line 2337
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2338
    const/4 v0, 0x0

    return v0

    .line 2341
    :cond_0
    const/4 v0, 0x0

    .line 2342
    .local v0, "result":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 2344
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 2347
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_b

    .line 2348
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2349
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 2350
    .local v3, "resumedOnDisplay":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "tdaNdx":I
    :goto_1
    if-ltz v4, :cond_8

    .line 2351
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2352
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "sNdx":I
    :goto_2
    if-ltz v6, :cond_7

    .line 2353
    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2354
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 2355
    .local v8, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v8, :cond_3

    .line 2356
    goto :goto_3

    .line 2358
    :cond_3
    if-ne v7, p1, :cond_4

    .line 2363
    or-int/2addr v3, v0

    .line 2364
    goto :goto_3

    .line 2366
    :cond_4
    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2369
    invoke-virtual {v7, p3}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2374
    iget v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v9, :cond_6

    .line 2375
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v9, v8}, Lcom/android/server/wm/OpQuickReplyInjector;->resumeDefaultTopActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3

    .line 2379
    :cond_5
    invoke-virtual {v8, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 2352
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2350
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v6    # "sNdx":I
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2383
    .end local v4    # "tdaNdx":I
    :cond_8
    if-nez v3, :cond_a

    .line 2388
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2389
    .local v4, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_9

    .line 2390
    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_4

    .line 2391
    :cond_9
    if-nez p1, :cond_a

    .line 2392
    const/4 v5, 0x0

    .line 2393
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 2392
    const-string v7, "no-focusable-task"

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2347
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "resumedOnDisplay":Z
    .end local v4    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2398
    .end local v1    # "displayNdx":I
    :cond_b
    return v0
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 8
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    const/4 v0, 0x0

    return v0

    .line 1710
    :cond_0
    if-nez p3, :cond_1

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    .line 1714
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1715
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resumeHomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1718
    .local v7, "myReason":Ljava/lang/String;
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    .line 1719
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1720
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 1722
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

    .line 1328
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1329
    return-void
.end method

.method scheduleDestroyAllActivities(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 2763
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    .line 2764
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2765
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .line 3606
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 3607
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 3608
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mPowerHintSent:Z

    .line 3610
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 12
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3568
    move v0, p1

    .line 3570
    .local v0, "sendHint":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3572
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

    .line 3575
    :cond_2
    if-nez v0, :cond_a

    .line 3578
    const/4 v3, 0x1

    .line 3579
    .local v3, "noResumedActivities":Z
    const/4 v4, 0x1

    .line 3580
    .local v4, "allFocusedProcessesDiffer":Z
    const/4 v5, 0x0

    .local v5, "displayNdx":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3581
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 3582
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "tdaNdx":I
    :goto_3
    if-ltz v7, :cond_6

    .line 3583
    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 3584
    .local v8, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 3586
    .local v9, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v9, :cond_3

    const/4 v10, 0x0

    goto :goto_4

    :cond_3
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3588
    .local v10, "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :goto_4
    if-nez v10, :cond_4

    move v11, v2

    goto :goto_5

    :cond_4
    move v11, v1

    :goto_5
    and-int/2addr v3, v11

    .line 3589
    if-eqz v10, :cond_5

    .line 3590
    iget-object v11, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v2

    and-int/2addr v4, v11

    .line 3582
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v9    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 3580
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "tdaNdx":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3595
    .end local v5    # "displayNdx":I
    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    move v0, v1

    .line 3598
    .end local v3    # "noResumedActivities":Z
    .end local v4    # "allFocusedProcessesDiffer":Z
    :cond_a
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_b

    .line 3599
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 3600
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mPowerHintSent:Z

    .line 3602
    :cond_b
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 2677
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2678
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2682
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2683
    return-void

    .line 2679
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

    .line 661
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 662
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 663
    .local v1, "configChanged":Z
    :goto_0
    if-nez v1, :cond_1

    .line 664
    return-void

    .line 667
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 669
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    .line 672
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 677
    :cond_2
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    .line 679
    return-void
.end method

.method setSecureSurfaceState(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 702
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$PVkFhpirHJygWitQFpVhFHaEX4o;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$PVkFhpirHJygWitQFpVhFHaEX4o;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 707
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 1389
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1390
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1391
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1392
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1394
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1395
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1396
    aget-object v2, v0, v1

    .line 1397
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    .line 1398
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1399
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_0

    .line 1400
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1395
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1403
    .end local v1    # "displayNdx":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->calculateDefaultMinimalSizeOfResizeableTasks()V

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1406
    .local v1, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    .line 1407
    const v2, 0x7fffffff

    iget-object v3, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    .line 1409
    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 5
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1732
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p1, :cond_7

    .line 1735
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1736
    return v0

    .line 1739
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v1, :cond_1

    .line 1741
    return v0

    .line 1744
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1745
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1744
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1747
    .local v1, "deviceProvisioned":Z
    :goto_0
    if-nez v1, :cond_3

    .line 1749
    return v0

    .line 1752
    :cond_3
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1754
    return v0

    .line 1757
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1758
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 1763
    :cond_5
    return v2

    .line 1760
    :cond_6
    :goto_1
    return v0

    .line 1733
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

    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, "homeStarted":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1488
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1489
    .local v2, "displayId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1487
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1491
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 1508
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

    .line 1515
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1517
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move p3, v1

    .line 1520
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1521
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 1522
    .local v1, "result":Z
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tcNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1523
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1524
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

    .line 1522
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1527
    .end local v2    # "tcNdx":I
    :cond_2
    return v1
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1496
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1497
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "tdaNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1498
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1499
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1500
    iget v4, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    .line 1497
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1495
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "tdaNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1505
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

    .line 1544
    if-nez p3, :cond_1

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1546
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_0

    .line 1547
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_0
    move-object p3, v1

    .line 1550
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    .line 1551
    .local v0, "homeIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1552
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne p3, v2, :cond_2

    .line 1553
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1554
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1557
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1558
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/android/server/wm/OpOtaWizardInjector;->updateOtaWizardHomeIntent(Landroid/content/Intent;Landroid/content/Context;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1560
    .local v3, "newInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_3

    .line 1561
    move-object v1, v3

    .line 1562
    move-object v0, v2

    goto :goto_1

    .line 1565
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "newInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1566
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v2

    .line 1567
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 1568
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    goto :goto_2

    .line 1565
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    :cond_3
    :goto_1
    nop

    .line 1570
    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez v0, :cond_4

    goto :goto_3

    .line 1574
    :cond_4
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1575
    return v2

    .line 1579
    :cond_5
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1580
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1582
    const/4 v3, 0x1

    if-eqz p5, :cond_6

    .line 1583
    const-string v4, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1584
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v5, "startHomeActivity"

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 1588
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

    .line 1589
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1590
    .local v2, "myReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1592
    return v3

    .line 1571
    .end local v2    # "myReason":Ljava/lang/String;
    :cond_7
    :goto_3
    return v2
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 2056
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2057
    .local v0, "topFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2060
    .local v1, "focusStackId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    .line 2066
    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->removeStacksInWindowingModes([I)V

    .line 2068
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2069
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 2071
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "displayNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2073
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 2074
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "tdaNdx":I
    :goto_2
    if-ltz v5, :cond_3

    .line 2075
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 2076
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "sNdx":I
    :goto_3
    if-ltz v7, :cond_2

    .line 2077
    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2078
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v8, p1}, Lcom/android/server/wm/ActivityStack;->switchUser(I)V

    .line 2076
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2074
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "sNdx":I
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2072
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "tdaNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2083
    .end local v3    # "displayNdx":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2084
    .local v2, "restoreStackId":I
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2085
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_5

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2088
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 2089
    .local v4, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2090
    const-string v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_4

    .line 2093
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    const-string v7, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 2095
    :goto_4
    return v4
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 3338
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3339
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3340
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 3341
    return-object v1

    .line 3338
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3344
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3290
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3291
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3292
    .local v1, "userId":I
    sget-object v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$fL0RxmEBMlnXFmjHLkBJ9jk9drs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$fL0RxmEBMlnXFmjHLkBJ9jk9drs;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 3294
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3292
    invoke-static {v2, v3, p1, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3295
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3296
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3297
    return-void
.end method

.method updateAppOpsState()V
    .locals 2

    .line 718
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 721
    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .locals 11
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "changed":Z
    const/4 v1, -0x1

    .line 482
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

    .line 483
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 484
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v6

    or-int/2addr v0, v6

    .line 485
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 486
    .local v6, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_2

    .line 487
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 488
    .local v7, "pidOfNewFocus":I
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 489
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_0
    if-ne v1, v4, :cond_1

    .line 492
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 494
    .end local v7    # "pidOfNewFocus":I
    :cond_1
    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_1

    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    .line 498
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 482
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "newFocus":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 501
    .end local v2    # "i":I
    :cond_3
    if-ne v1, v4, :cond_4

    .line 502
    const/4 v1, 0x0

    .line 504
    :cond_4
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq v2, v1, :cond_5

    .line 505
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 506
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 507
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 508
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

    .line 511
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

    .line 710
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 715
    return-void
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1945
    const/4 v0, 0x0

    .line 1946
    .local v0, "fgApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1947
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1948
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "tdaNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1949
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1950
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "sNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 1951
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1952
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1953
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1954
    .local v7, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_0

    .line 1955
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3

    .line 1956
    :cond_0
    iget-object v8, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_2

    .line 1957
    iget-object v8, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_3

    .line 1950
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1948
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "sNdx":I
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1946
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1966
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

    .line 1969
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1970
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 1972
    :cond_5
    return-void
.end method

.method updateRotationUnchecked()Z
    .locals 3

    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1198
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1199
    const/4 v0, 0x1

    .line 1197
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1202
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method updateUIDsPresentOnDisplay()V
    .locals 5

    .line 2635
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2637
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2639
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2640
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2641
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 2640
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2636
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2645
    .end local v0    # "displayNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 2646
    return-void
.end method

.method updateUserStack(ILcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2107
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_1

    .line 2108
    if-nez p2, :cond_0

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    :cond_1
    return-void
.end method
