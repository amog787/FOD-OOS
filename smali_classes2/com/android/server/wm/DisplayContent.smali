.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;,
        Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;,
        Lcom/android/server/wm/DisplayContent$ImeContainer;,
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$WindowContainers;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;,
        Lcom/android/server/wm/DisplayContent$ForceScalingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
        ">;",
        "Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;"
    }
.end annotation


# static fields
.field static final FORCE_SCALING_MODE_AUTO:I = 0x0

.field static final FORCE_SCALING_MODE_DISABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_STACK:Ljava/lang/String; = "WindowManager"


# instance fields
.field isDefaultDisplay:Z

.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field final mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field final mChangingContainers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mCloseToSquareMaxAspectRatio:F

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field private mCurrentOverrideConfigurationChanges:I

.field private mDeferUpdateImeTargetCount:I

.field private mDeferredRemoval:Z

.field final mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field final mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

.field public final mDisplayCoveredContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

.field private final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private mDisplayReady:Z

.field private final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedRotationAnimationController:Lcom/android/server/wm/FixedRotationAnimationController;

.field private mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

.field final mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

.field mFocusedApp:Lcom/android/server/wm/ActivityRecord;

.field private mIgnoreRotationForApps:Z

.field private mIirsChipEnable:Z

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

.field private mInEnsureActivitiesVisible:Z

.field mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field private mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private final mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

.field private final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field private mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

.field private mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastDispatchedSystemUiVisibility:I

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field private mLastHasContent:Z

.field private mLastStatusBarVisibility:I

.field private mLastWallpaperVisible:Z

.field private mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mLocationInParentWindow:Landroid/graphics/Point;

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMaxUiWidth:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mOPFeatureInputMethod:Z

.field mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field public mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private mParentSurfaceControl:Landroid/view/SurfaceControl;

.field private mParentWindow:Lcom/android/server/wm/WindowState;

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field private mPortalWindowHandle:Landroid/view/InputWindowHandle;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

.field private final mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

.field private mRemoved:Z

.field private mRemoving:Z

.field private mRemovingDisplay:Z

.field private final mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenRotationAnimation:Lcom/android/server/wm/IScreenRotationAnimation;

.field private final mSession:Landroid/view/SurfaceSession;

.field final mShellRoots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ShellRoot;",
            ">;"
        }
    .end annotation
.end field

.field mShouldOverrideDisplayConfiguration:Z

.field public mShowIMEWithWindowAnimation:Z

.field mSingleTaskInstance:Z

.field mSkipAppTransitionAnimation:Z

.field private mSleeping:Z

.field private final mSystemGestureExclusion:Landroid/graphics/Region;

.field private mSystemGestureExclusionLimit:I

.field private final mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ISystemGestureExclusionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

.field private mSystemGestureExclusionWasRestricted:Z

.field final mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludeProvidingWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempConfig:Landroid/content/res/Configuration;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

.field private mTmpWindowsBehindIme:Z

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mUpdateImeTarget:Z

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForConfig:Z

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field mWallpaperMayChange:Z

.field final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWinInsetsChanged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

.field private final mWindowCornerRadius:F

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V
    .locals 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "root"    # Lcom/android/server/wm/RootWindowContainer;

    .line 1041
    iget-object v0, p2, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 325
    new-instance v0, Lcom/android/server/wm/DisplayContent$WindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mWindowContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$WindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    .line 330
    new-instance v0, Lcom/android/server/wm/DisplayContent$WindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mDisplayCoveredContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$WindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCoveredContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    .line 336
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mOverlayContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 346
    new-instance v0, Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$ImeContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 348
    new-instance v0, Lcom/android/server/wm/DisplayArea$Root;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayArea$Root;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 363
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 364
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 365
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 377
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 380
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 381
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 382
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 385
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v2}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 393
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 394
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 400
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 408
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 409
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 414
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 416
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 417
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 418
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    .line 425
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 428
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 434
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 459
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 461
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 493
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 496
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 497
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 498
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 499
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 500
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 503
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    .line 505
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 515
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 517
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 519
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 521
    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$1;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 526
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 529
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 533
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 535
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 541
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 546
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 559
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 572
    new-instance v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 579
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 582
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinInsetsChanged:Ljava/util/ArrayList;

    .line 596
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 610
    new-instance v2, Lcom/android/server/wm/utils/DisplayRotationUtil;

    invoke-direct {v2}, Lcom/android/server/wm/utils/DisplayRotationUtil;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    .line 645
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    .line 650
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 652
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 657
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 658
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 659
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$DjwkABhnEVEEFPHXKA0QFcHdb2w;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$DjwkABhnEVEEFPHXKA0QFcHdb2w;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    .line 669
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 672
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 698
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 701
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    .line 708
    new-array v2, v1, [I

    const/16 v4, 0x124

    aput v4, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIirsChipEnable:Z

    .line 709
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 710
    new-instance v2, Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-direct {v2}, Lcom/oneplus/iris/OpIrisWindowInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    .line 716
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 718
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 734
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 745
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 808
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 877
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 910
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 916
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 920
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 3665
    new-array v2, v1, [I

    const/16 v4, 0x139

    aput v4, v2, v0

    .line 3666
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mOPFeatureInputMethod:Z

    .line 3668
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mShowIMEWithWindowAnimation:Z

    .line 1042
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1049
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1050
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1051
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 1052
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1053
    new-instance v2, Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, p0}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1054
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1055
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1056
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v2, v2, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 1058
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1059
    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->rotation:I

    .line 1060
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 1063
    new-instance v2, Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1064
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1065
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1066
    new-instance v2, Lcom/android/server/wm/AppTransitionController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, p0}, Lcom/android/server/wm/AppTransitionController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 1067
    new-instance v2, Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 1069
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PointerEventDispatcher"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v2

    .line 1071
    .local v2, "inputChannel":Landroid/view/InputChannel;
    new-instance v4, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v4, v2}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1076
    new-instance v4, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 1077
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1078
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1079
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1080
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1081
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v4

    .line 1080
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1084
    :cond_1
    new-instance v4, Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1085
    new-instance v4, Lcom/android/server/wm/DisplayRotation;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1086
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 1088
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_2

    .line 1091
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 1093
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_3

    .line 1094
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1096
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v4, :cond_4

    .line 1097
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 1099
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getWindowCornerRadius()F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 1100
    new-instance v4, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1101
    new-instance v4, Lcom/android/server/wm/PinnedStackController;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    .line 1103
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 1104
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1105
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1106
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    const-string v4, "Root"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 1107
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 1108
    const-string v5, "DisplayContent"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 1109
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1112
    invoke-virtual {v4, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1113
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1114
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1117
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_5

    .line 1118
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-static {v0, v4, p0}, Lcom/android/server/wm/OpDisplayContentInjector;->init(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Lcom/android/server/wm/DisplayContent;)V

    .line 1121
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1126
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCoveredContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1129
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayAreaPolicyProvider:Lcom/android/server/wm/DisplayAreaPolicy$Provider;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-interface {v0, v3, p0, v4, v5}, Lcom/android/server/wm/DisplayAreaPolicy$Provider;->instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayAreaPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$WindowContainers;->addChildren()V

    .line 1136
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1138
    new-instance v0, Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v3, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1139
    new-instance v0, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1140
    new-instance v3, Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {v3, v0, p0}, Lcom/android/server/wm/InsetsPolicy;-><init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 1142
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating display="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1145
    return-void

    .line 1043
    .end local v1    # "b":Landroid/view/SurfaceControl$Builder;
    .end local v2    # "inputChannel":Landroid/view/InputChannel;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1045
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$ImeContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method private static addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "uids"    # Landroid/util/IntArray;

    .line 5915
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 5916
    return-void
.end method

.method private static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I
    .locals 6
    .param p0, "local"    # Landroid/graphics/Region;
    .param p1, "global"    # Landroid/graphics/Region;
    .param p2, "edge"    # Landroid/graphics/Rect;
    .param p3, "limit"    # I
    .param p4, "win"    # Lcom/android/server/wm/WindowState;
    .param p5, "side"    # I

    .line 5479
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 5480
    .local v0, "r":Landroid/graphics/Region;
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5482
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p3, v2, v3

    .line 5483
    .local v2, "remaining":[I
    new-array v1, v1, [I

    aput v3, v1, v3

    .line 5484
    .local v1, "requestedExclusion":[I
    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayContent$-t02M5j-NY8t_HMWggKym0SrI5k;

    invoke-direct {v4, v2, v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$-t02M5j-NY8t_HMWggKym0SrI5k;-><init>([I[ILandroid/graphics/Region;)V

    invoke-static {v0, v4}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 5497
    aget v4, v2, v3

    sub-int v4, p3, v4

    .line 5498
    .local v4, "grantedExclusion":I
    aget v5, v1, v3

    invoke-virtual {p4, p5, v5, v4}, Lcom/android/server/wm/WindowState;->setLastExclusionHeights(III)V

    .line 5500
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5501
    aget v3, v2, v3

    return v3
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V
    .locals 8
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I

    .line 2266
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2267
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2268
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 2270
    .local v7, "width":I
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v7, v1, :cond_0

    .line 2271
    iput v7, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2273
    :cond_0
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v7, v1, :cond_1

    .line 2274
    iput v7, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2276
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2278
    .local v1, "height":I
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v1, v2, :cond_2

    .line 2279
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2281
    :cond_2
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v1, v2, :cond_3

    .line 2282
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 2284
    :cond_3
    return-void
.end method

.method static alwaysCreateStack(II)Z
    .locals 7
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I

    .line 5611
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 5612
    if-ne p1, v6, :cond_1

    if-eq p0, v6, :cond_0

    if-eq p0, v4, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    return v5

    .line 5620
    :cond_2
    if-ne p1, v6, :cond_4

    if-eq p0, v6, :cond_3

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_3

    if-ne p0, v1, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    return v5
.end method

.method private amendWindowTapExcludeRegion(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "inOutRegion"    # Landroid/graphics/Region;

    .line 2922
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 2923
    .local v0, "region":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2924
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2925
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2926
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2923
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2928
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 2929
    return-void
.end method

.method private applyRotation(II)V
    .locals 8
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I

    .line 1813
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayRotation;->applyCurrentRotation(I)V

    .line 1814
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isRotatingSeamlessly()Z

    move-result v0

    .line 1815
    .local v0, "rotateSeamlessly":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1822
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1824
    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v3

    .line 1830
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    .line 1834
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/server/wm/IScreenRotationAnimation;->hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1835
    invoke-interface {v3, v1, p2}, Lcom/android/server/wm/IScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1838
    :cond_1
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;

    invoke-direct {v2, v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;-><init>(Landroid/view/SurfaceControl$Transaction;IIZ)V

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1842
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 1845
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1855
    if-eqz v0, :cond_2

    .line 1856
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x36

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v5, p0, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1860
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 1861
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 1862
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 1863
    .local v4, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget v5, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v6, :cond_3

    .line 1865
    :try_start_0
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    goto :goto_2

    .line 1866
    :catch_0
    move-exception v5

    .line 1860
    .end local v4    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1872
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_5

    .line 1873
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1875
    :cond_5
    return-void
.end method

.method private applyRotationAndFinishFixedRotation(II)V
    .locals 2
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 5782
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 5783
    .local v0, "rotatedLaunchingApp":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_0

    .line 5784
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    .line 5785
    return-void

    .line 5788
    :cond_0
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$nLtIl6G_J9ubuqCmo2SmaYpTt_E;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$nLtIl6G_J9ubuqCmo2SmaYpTt_E;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    .line 5790
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5791
    return-void
.end method

.method private calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 4327
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 4328
    .local v0, "rotation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4329
    .local v1, "rotated":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 4330
    .local v2, "physWidth":I
    :goto_1
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 4331
    .local v3, "physHeight":I
    :goto_2
    iget v4, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4332
    .local v4, "width":I
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    .line 4333
    .local v5, "left":I
    iget v6, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4334
    .local v6, "height":I
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    .line 4335
    .local v7, "top":I
    add-int v8, v5, v4

    add-int v9, v7, v6

    invoke-virtual {p2, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 4336
    return-void
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 6
    .param p1, "cutout"    # Landroid/view/DisplayCutout;
    .param p2, "rotation"    # I

    .line 1986
    if-eqz p1, :cond_6

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 1989
    :cond_0
    nop

    .line 1990
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1991
    .local v0, "waterfallInsets":Landroid/graphics/Insets;
    if-nez p2, :cond_1

    .line 1992
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    return-object v1

    .line 1995
    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1996
    .local v1, "rotated":Z
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    .line 1997
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1996
    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;

    move-result-object v2

    .line 1999
    .local v2, "newBounds":[Landroid/graphics/Rect;
    nop

    .line 2000
    invoke-static {v2, v0}, Landroid/view/DisplayCutout;->fromBoundsAndWaterfall([Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object v3

    .line 2001
    if-eqz v1, :cond_4

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2002
    :goto_1
    if-eqz v1, :cond_5

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1999
    :goto_2
    invoke-static {v3, v4, v5}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v3

    return-object v3

    .line 1987
    .end local v0    # "waterfallInsets":Landroid/graphics/Insets;
    .end local v1    # "rotated":Z
    .end local v2    # "newBounds":[Landroid/graphics/Rect;
    :cond_6
    :goto_3
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private canUpdateImeTarget()Z
    .locals 1

    .line 5075
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearFixedRotationLaunchingApp()V
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 1758
    return-void

    .line 1760
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishFixedRotationTransform()V

    .line 1761
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1762
    return-void
.end method

.method private clearLayoutNeeded()V
    .locals 2

    .line 3938
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3940
    return-void
.end method

.method private computeCompatSmallestWidth(ZIII)I
    .locals 11
    .param p1, "rotated"    # Z
    .param p2, "uiMode"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I

    .line 2168
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2169
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2171
    .local v0, "tmpDm":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_0

    .line 2172
    move v1, p4

    .line 2173
    .local v1, "unrotDw":I
    move v2, p3

    move v9, v2

    .local v2, "unrotDh":I
    goto :goto_0

    .line 2175
    .end local v1    # "unrotDw":I
    .end local v2    # "unrotDh":I
    :cond_0
    move v1, p3

    .line 2176
    .restart local v1    # "unrotDw":I
    move v2, p4

    move v9, v2

    .line 2178
    .local v9, "unrotDh":I
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p2

    move-object v6, v0

    move v7, v1

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v10

    .line 2180
    .local v10, "sw":I
    const/4 v4, 0x1

    move v3, v10

    move v7, v9

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v10

    .line 2182
    const/4 v4, 0x2

    move v3, v10

    move v7, v1

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v10

    .line 2184
    const/4 v4, 0x3

    move v3, v10

    move v7, v9

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v2

    .line 2186
    .end local v10    # "sw":I
    .local v2, "sw":I
    return v2
.end method

.method private computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V
    .locals 17
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "rotation"    # I
    .param p5, "uiMode"    # I
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v11

    .line 2038
    .local v11, "appWidth":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v12

    .line 2040
    .local v12, "appHeight":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v3, p4

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2041
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 2042
    .local v13, "leftInset":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 2044
    .local v14, "topInset":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int v3, v13, v11

    add-int v4, v14, v12

    invoke-virtual {v2, v13, v14, v3, v4}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 2046
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v10}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 2047
    const/4 v15, 0x1

    if-gt v8, v9, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2049
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    .line 2050
    .local v7, "density":F
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v16, v7

    .end local v7    # "density":F
    .local v16, "density":F
    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v16

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2052
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v16

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2054
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2055
    iget v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2057
    if-eq v10, v15, :cond_2

    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :cond_2
    :goto_1
    move v2, v15

    .line 2058
    .local v2, "rotated":Z
    move/from16 v3, p5

    invoke-direct {v0, v2, v3, v8, v9}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIII)I

    move-result v4

    iput v4, v1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2060
    return-void
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V
    .locals 17
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotated"    # Z
    .param p3, "uiMode"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "density"    # F
    .param p7, "outConfig"    # Landroid/content/res/Configuration;

    .line 2213
    move-object/from16 v6, p1

    move-object/from16 v7, p7

    if-eqz p2, :cond_0

    .line 2214
    move/from16 v0, p5

    .line 2215
    .local v0, "unrotDw":I
    move/from16 v1, p4

    move v15, v0

    move/from16 v16, v1

    .local v1, "unrotDh":I
    goto :goto_0

    .line 2217
    .end local v0    # "unrotDw":I
    .end local v1    # "unrotDh":I
    :cond_0
    move/from16 v0, p4

    .line 2218
    .restart local v0    # "unrotDw":I
    move/from16 v1, p5

    move v15, v0

    move/from16 v16, v1

    .line 2220
    .end local v0    # "unrotDw":I
    .local v15, "unrotDw":I
    .local v16, "unrotDh":I
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2221
    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2222
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2223
    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 2224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2225
    const/4 v2, 0x1

    move/from16 v4, v16

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2226
    const/4 v2, 0x2

    move v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2227
    const/4 v2, 0x3

    move/from16 v4, v16

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2229
    if-nez v7, :cond_1

    .line 2230
    return-void

    .line 2232
    :cond_1
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 2233
    .local v0, "sl":I
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move v9, v0

    move/from16 v11, p6

    move v12, v15

    move/from16 v13, v16

    move/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2234
    const/4 v10, 0x1

    move v9, v0

    move/from16 v12, v16

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2235
    const/4 v10, 0x2

    move v9, v0

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2236
    const/4 v10, 0x3

    move v9, v0

    move/from16 v12, v16

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2237
    iget v1, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p6

    float-to-int v1, v1

    iput v1, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2238
    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 2239
    return-void
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .locals 2
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "rot"    # I
    .param p2, "dw"    # I
    .param p3, "dh"    # I

    .line 4498
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4499
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 4500
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 4501
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 4502
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 4503
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 4504
    .end local v0    # "tmp":I
    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4505
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 4506
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 4507
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 4508
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 4509
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 4510
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .end local v0    # "tmp":I
    goto :goto_0

    .line 4511
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 4512
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 4513
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 4514
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 4515
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 4516
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4511
    .end local v0    # "tmp":I
    :cond_2
    :goto_0
    nop

    .line 4518
    :goto_1
    return-void
.end method

.method private createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 5541
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 5543
    .local v0, "portalWindowHandle":Landroid/view/InputWindowHandle;
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 5544
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 5545
    const v1, 0x800028

    iput v1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 5547
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 5548
    iget-object v1, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 5549
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 5550
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 5551
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 5552
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, v0, Landroid/view/InputWindowHandle;->portalToDisplayId:I

    .line 5553
    return-object v0
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "rectLeft"    # F
    .param p2, "rectTop"    # F
    .param p3, "displayWidth"    # F
    .param p4, "displayHeight"    # F
    .param p5, "outMatrix"    # Landroid/graphics/Matrix;

    .line 3082
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 3087
    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3088
    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3089
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3090
    goto :goto_0

    .line 3092
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 3093
    goto :goto_0

    .line 3095
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3096
    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3097
    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 3084
    :cond_3
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 3085
    nop

    .line 3100
    :goto_0
    return-void
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .locals 6
    .param p0, "rotation"    # I
    .param p1, "displayWidth"    # F
    .param p2, "displayHeight"    # F
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 3076
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 3078
    return-void
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 3043
    sub-int v0, p1, p0

    .line 3044
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3045
    :cond_0
    return v0
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 4339
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 4342
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 4343
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 4344
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4345
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 4346
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4347
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4348
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 4350
    :cond_1
    return-void
.end method

.method private isImeControlledByApp()Z
    .locals 1

    .line 3808
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 3809
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    .line 3808
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNonDecorDisplayCloseToSquare(III)Z
    .locals 9
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1909
    nop

    .line 1910
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1911
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 1912
    .local v7, "uiMode":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v8

    .line 1914
    .local v8, "w":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1916
    .local v1, "h":I
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1917
    .local v2, "aspectRatio":F
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static synthetic lambda$addToGlobalAndConsumeLimit$25([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "remaining"    # [I
    .param p1, "requestedExclusion"    # [I
    .param p2, "global"    # Landroid/graphics/Region;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 5485
    const/4 v0, 0x0

    aget v1, p0, v0

    if-gtz v1, :cond_0

    .line 5486
    return-void

    .line 5488
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 5489
    .local v1, "height":I
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    .line 5490
    aget v2, p0, v0

    if-le v1, v2, :cond_1

    .line 5491
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    aget v3, p0, v0

    sub-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 5493
    :cond_1
    aget v2, p0, v0

    sub-int/2addr v2, v1

    aput v2, p0, v0

    .line 5494
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5495
    return-void
.end method

.method static synthetic lambda$applyRotation$9(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I
    .param p3, "rotateSeamlessly"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1839
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 1840
    return-void
.end method

.method public static synthetic lambda$cDcvMzGxc6XW13Q8FrU5X4DagqE(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->processTaskForTouchExcludeRegion(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V

    return-void
.end method

.method static synthetic lambda$calculateSystemGestureExclusion$24(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .locals 15
    .param p0, "unhandled"    # Landroid/graphics/Region;
    .param p1, "touchableRegion"    # Landroid/graphics/Region;
    .param p2, "local"    # Landroid/graphics/Region;
    .param p3, "remainingLeftRight"    # [I
    .param p4, "outExclusion"    # Landroid/graphics/Region;
    .param p5, "leftEdge"    # Landroid/graphics/Rect;
    .param p6, "rightEdge"    # Landroid/graphics/Rect;
    .param p7, "outExclusionUnrestricted"    # Landroid/graphics/Region;
    .param p8, "w"    # Lcom/android/server/wm/WindowState;

    .line 5366
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5367
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    .line 5368
    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    goto/16 :goto_2

    .line 5374
    :cond_0
    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 5375
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5377
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5378
    invoke-virtual {v8, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    .line 5380
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 5383
    iget v2, v11, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v8, v2}, Landroid/graphics/Region;->scale(F)V

    .line 5384
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 5385
    .local v2, "frame":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Region;->translate(II)V

    .line 5388
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5392
    .end local v2    # "frame":Landroid/graphics/Rect;
    :goto_0
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    .line 5395
    aget v5, p3, v12

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p8

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v2

    aput v2, p3, v12

    .line 5399
    aget v5, p3, v13

    const/4 v7, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v2

    aput v2, p3, v13

    .line 5403
    invoke-static/range {p2 .. p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v2

    .line 5404
    .local v2, "middle":Landroid/graphics/Region;
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v12, p5

    invoke-virtual {v2, v12, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5405
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v14, p6

    invoke-virtual {v2, v14, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5406
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5407
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 5408
    .end local v2    # "middle":Landroid/graphics/Region;
    goto :goto_1

    .line 5409
    :cond_2
    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-static {v11, v13}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v13

    .line 5410
    .local v13, "loggable":Z
    if-eqz v13, :cond_3

    .line 5411
    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p8

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 5413
    const/4 v7, 0x1

    move-object/from16 v4, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 5416
    :cond_3
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v8, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5418
    .end local v13    # "loggable":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 5419
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v8, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5421
    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5422
    return-void

    .line 5367
    :cond_5
    move-object/from16 v12, p5

    move-object/from16 v14, p6

    goto :goto_2

    .line 5366
    :cond_6
    move-object/from16 v12, p5

    move-object/from16 v14, p6

    .line 5369
    :goto_2
    return-void
.end method

.method static synthetic lambda$canAddToastWindowForUid$13(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3358
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$14(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3363
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dumpWindowAnimators$17(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "subPrefix"    # Ljava/lang/String;
    .param p2, "index"    # [I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3983
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3984
    .local v0, "wAnim":Lcom/android/server/wm/WindowStateAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3985
    aget v1, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v2

    .line 3986
    return-void
.end method

.method public static synthetic lambda$fiC19lMy-d_-rvza7hhOSw6bOM8(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$hasSecureWindowOnScreen$20(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 4115
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$notifyLocationInParentDisplayChanged$23(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 5264
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V

    .line 5265
    return-void
.end method

.method public static synthetic lambda$olEtDzkJbp6PCECUFtRISV0LCpk(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V

    return-void
.end method

.method static synthetic lambda$pointWithinAppWindow$11([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "targetWindowType"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;
    .param p4, "nonArg"    # Landroid/graphics/Rect;

    .line 2764
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2765
    return-void

    .line 2771
    :cond_0
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7eb

    if-ne v1, v2, :cond_1

    .line 2772
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "GestureButtonRegion"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2773
    return-void

    .line 2777
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2778
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput v1, p0, v0

    .line 2779
    return-void

    .line 2781
    :cond_2
    return-void
.end method

.method static synthetic lambda$removeAllTasks$27(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 6014
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const-string v1, "removeAllTasks"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityStack;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$18(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "subtle"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 3996
    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    invoke-interface {p0, p4}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4002
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4003
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4006
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateImeControlTarget$16(Landroid/os/IBinder;)V
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    .line 3885
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->reportImeControl(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$updateSystemUiVisibility$21(IILcom/android/server/wm/WindowState;)V
    .locals 5
    .param p0, "visibility"    # I
    .param p1, "globalDiff"    # I
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 4155
    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 4156
    .local v0, "curValue":I
    xor-int v1, v0, p0

    and-int/2addr v1, p1

    .line 4157
    .local v1, "diff":I
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, p0, v1

    or-int/2addr v2, v3

    .line 4158
    .local v2, "newValue":I
    if-eq v2, v0, :cond_0

    .line 4159
    iget v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 4160
    iput v2, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 4162
    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v3, v3, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v3, :cond_2

    :cond_1
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 4164
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v3, v4, p0, v2, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4169
    .end local v0    # "curValue":I
    .end local v1    # "diff":I
    .end local v2    # "newValue":I
    :cond_2
    goto :goto_0

    .line 4167
    :catch_0
    move-exception v0

    .line 4170
    :goto_0
    return-void
.end method

.method static logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 5452
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 5453
    return v1

    .line 5455
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5456
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5457
    .local v2, "type":I
    const/16 v3, 0x7dd

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_1

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_1

    .line 5461
    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5462
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->hasSideGestures()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    nop

    .line 5457
    :goto_0
    return v1
.end method

.method private static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z
    .locals 6
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "ignoreRequest"    # Z

    .line 5440
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5441
    .local v0, "type":I
    nop

    .line 5442
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 5444
    .local v1, "stickyHideNav":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/16 v5, 0x7db

    if-eq v0, v5, :cond_2

    const/16 v5, 0x7f8

    if-eq v0, v5, :cond_2

    .line 5445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    .line 5444
    :goto_1
    return v2
.end method

.method private static onWindowFocusChanged(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p0, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p1, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 3530
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3531
    .local v1, "focusedTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3532
    .local v0, "unfocusedTask":Lcom/android/server/wm/Task;
    :cond_1
    if-ne v1, v0, :cond_2

    .line 3533
    return-void

    .line 3535
    :cond_2
    if-eqz v1, :cond_3

    .line 3536
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->onWindowFocusChanged(Z)V

    .line 3538
    :cond_3
    if-eqz v0, :cond_4

    .line 3539
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->onWindowFocusChanged(Z)V

    .line 3541
    :cond_4
    return-void
.end method

.method private performLayoutNoTrace(ZZ)V
    .locals 7
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 4368
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4369
    return-void

    .line 4371
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 4373
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4374
    .local v0, "dw":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4375
    .local v1, "dh":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1

    .line 4376
    const-string v2, "WindowManager"

    const-string v3, "-------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performLayout: needed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 4382
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 4381
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 4385
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 4386
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 4388
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 4389
    .local v2, "seq":I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 4390
    :cond_2
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 4394
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4395
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 4398
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowsBehindIme:Z

    .line 4401
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_3

    .line 4402
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-static {v6}, Lcom/android/server/wm/OpQuickReplyInjector;->setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 4407
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4411
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    .line 4412
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4417
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4421
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->onFindFocusedWindow()V

    .line 4425
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 4426
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4427
    if-eqz p2, :cond_4

    .line 4428
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4430
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 4431
    return-void
.end method

.method private processTaskForTouchExcludeRegion(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "focusedTask"    # Lcom/android/server/wm/Task;
    .param p3, "delta"    # I

    .line 2863
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2865
    .local v0, "topVisibleActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasContentToDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2877
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2878
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2880
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2885
    :goto_0
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_2

    .line 2886
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 2887
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2891
    :cond_2
    if-ne p1, p2, :cond_3

    .line 2896
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2899
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    .line 2900
    .local v1, "isFreeformed":Z
    if-ne p1, p2, :cond_4

    if-eqz v1, :cond_6

    .line 2901
    :cond_4
    if-eqz v1, :cond_5

    .line 2904
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 2910
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2912
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2914
    :cond_6
    return-void

    .line 2866
    .end local v1    # "isFreeformed":Z
    :cond_7
    :goto_1
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I
    .locals 7
    .param p1, "curSize"    # I
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;
    .param p5, "dw"    # I
    .param p6, "dh"    # I

    .line 2191
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2192
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2193
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    iput v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2195
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    iput v1, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 2197
    const/4 v1, 0x0

    invoke-static {p4, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    .line 2198
    .local v1, "scale":F
    iget v2, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2199
    .local v2, "size":I
    if-eqz p1, :cond_0

    if-ge v2, p1, :cond_1

    .line 2200
    :cond_0
    move p1, v2

    .line 2202
    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFIII)I
    .locals 8
    .param p1, "curLayout"    # I
    .param p2, "rotation"    # I
    .param p3, "density"    # F
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "uiMode"    # I

    .line 2244
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2245
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2248
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 2249
    .local v7, "w":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2252
    .local v1, "h":I
    move v2, v7

    .line 2253
    .local v2, "longSize":I
    move v3, v1

    .line 2254
    .local v3, "shortSize":I
    if-ge v2, v3, :cond_0

    .line 2255
    move v4, v2

    .line 2256
    .local v4, "tmp":I
    move v2, v3

    .line 2257
    move v3, v4

    .line 2259
    .end local v4    # "tmp":I
    :cond_0
    int-to-float v4, v2

    div-float/2addr v4, p3

    float-to-int v2, v4

    .line 2260
    int-to-float v4, v3

    div-float/2addr v4, p3

    float-to-int v3, v4

    .line 2261
    invoke-static {p1, v2, v3}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v4

    return v4
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "targetWaitingAnim"    # Z

    .line 3854
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_0

    .line 3855
    return-void

    .line 3857
    :cond_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x7e4f3d90

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3858
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3859
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 3860
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3861
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 3862
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget()V

    .line 3863
    return-void
.end method

.method private startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V
    .locals 4
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;
    .param p2, "rotation"    # I

    .line 1765
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 1766
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1767
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1768
    .local v1, "cutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v2, v3, v0, v1}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1769
    .local v2, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 1770
    return-void
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .locals 12

    .line 2583
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 2584
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 2585
    .local v0, "orientation":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 2586
    .local v3, "rotated":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_2

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_2
    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2587
    .local v4, "newWidth":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_3

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_3

    :cond_3
    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2588
    .local v5, "newHeight":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2589
    .local v6, "newDensity":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2591
    .local v7, "newCutout":Landroid/view/DisplayCutout;
    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v4, :cond_5

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v8, v5, :cond_5

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2594
    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move v8, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v2

    .line 2596
    .local v8, "displayMetricsChanged":Z
    :goto_5
    if-eqz v8, :cond_c

    .line 2598
    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v9, v10, :cond_6

    goto :goto_6

    :cond_6
    move v9, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v9, v2

    .line 2600
    .local v9, "isDisplaySizeForced":Z
    :goto_7
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v10, v11, :cond_8

    move v1, v2

    .line 2603
    .local v1, "isDisplayDensityForced":Z
    :cond_8
    if-eqz v9, :cond_9

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_8

    :cond_9
    move v2, v4

    .line 2604
    :goto_8
    if-eqz v9, :cond_a

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_9

    :cond_a
    move v10, v5

    .line 2605
    :goto_9
    if-eqz v1, :cond_b

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_a

    :cond_b
    move v11, v6

    .line 2603
    :goto_a
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2608
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2609
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2610
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2611
    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 2614
    .end local v1    # "isDisplayDensityForced":Z
    .end local v9    # "isDisplaySizeForced":Z
    :cond_c
    return-void
.end method

.method private updateBounds()V
    .locals 3

    .line 4312
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 4313
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setBounds(Landroid/graphics/Rect;)I

    .line 4314
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 4315
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 4316
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4317
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 4318
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 4322
    :cond_0
    return-void
.end method

.method private updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .locals 19
    .param p1, "uiMode"    # I
    .param p2, "outConfig"    # Landroid/content/res/Configuration;

    .line 1927
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v9

    .line 1928
    .local v9, "rotation":I
    const/4 v0, 0x1

    const/4 v10, 0x0

    if-eq v9, v0, :cond_1

    const/4 v1, 0x3

    if-ne v9, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v10

    :cond_1
    :goto_0
    move v11, v0

    .line 1929
    .local v11, "rotated":Z
    if-eqz v11, :cond_2

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    move v12, v0

    .line 1930
    .local v12, "dw":I
    if-eqz v11, :cond_3

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    move v13, v0

    .line 1933
    .local v13, "dh":I
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v14

    .line 1934
    .local v14, "wmDisplayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {v14}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v15

    .line 1936
    .local v15, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, v12

    move v2, v13

    move v3, v9

    move/from16 v4, p1

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 1938
    .local v7, "appWidth":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v6

    .line 1940
    .local v6, "appHeight":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1941
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v12, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1942
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v13, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1943
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1944
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 1945
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 1946
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 1947
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1950
    :cond_4
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v15}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_3

    :cond_5
    move-object v1, v15

    :goto_3
    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1951
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1952
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_6

    .line 1953
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_4

    .line 1955
    :cond_6
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1958
    :goto_4
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move v2, v11

    move/from16 v3, p1

    move/from16 v16, v4

    move v4, v12

    move-object/from16 v17, v5

    move v5, v13

    move/from16 v18, v6

    .end local v6    # "appHeight":I
    .local v18, "appHeight":I
    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "appWidth":I
    .local v16, "appWidth":I
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 1965
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    if-eqz v0, :cond_7

    .line 1966
    iget-object v5, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    goto :goto_5

    :cond_7
    move-object/from16 v5, v17

    :goto_5
    move-object v0, v5

    .line 1967
    .local v0, "overrideDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1970
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10, v10, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1972
    iget-boolean v1, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_8

    .line 1973
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v8, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 1977
    :cond_8
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v1
.end method

.method private updateImeParent()V
    .locals 3

    .line 3890
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 3891
    .local v0, "newParent":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_0

    .line 3892
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$ImeContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3893
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3895
    :cond_0
    return-void
.end method

.method private updateOrientation(Z)Z
    .locals 6
    .param p1, "forceUpdate"    # Z

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v0

    .line 1542
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1544
    .local v1, "orientationSource":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1545
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v2, :cond_2

    .line 1546
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1547
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    if-eq v0, v4, :cond_1

    .line 1548
    iput v0, v3, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 1549
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    iget v5, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1550
    invoke-virtual {v4, v5, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRequestedOrientationChanged(II)V

    .line 1553
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1555
    const/4 v4, 0x0

    return v4

    .line 1558
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v3

    return v3
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .locals 2
    .param p1, "visibility"    # I

    .line 4134
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_0

    .line 4135
    const/4 v0, 0x0

    return v0

    .line 4137
    :cond_0
    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    .line 4144
    .local v0, "globalDiff":I
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 4145
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_1

    .line 4146
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 4148
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    .line 4149
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p2, "index"    # I

    .line 2733
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 2728
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    .line 297
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 0

    .line 297
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method addShellRoot(Landroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .locals 4
    .param p1, "client"    # Landroid/view/IWindow;
    .param p2, "windowType"    # I

    .line 1226
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    .line 1227
    .local v0, "root":Lcom/android/server/wm/ShellRoot;
    if-eqz v0, :cond_1

    .line 1228
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getClient()Landroid/view/IWindow;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1229
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 1231
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1232
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1234
    :cond_1
    new-instance v1, Lcom/android/server/wm/ShellRoot;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/wm/ShellRoot;-><init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V

    move-object v0, v1

    .line 1235
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1236
    .local v1, "rootLeash":Landroid/view/SurfaceControl;
    if-nez v1, :cond_2

    .line 1238
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1239
    const/4 v2, 0x0

    return-object v2

    .line 1241
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v3, "DisplayContent.addShellRoot"

    invoke-direct {v2, v1, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1243
    .local v2, "out":Landroid/view/SurfaceControl;
    return-object v2
.end method

.method addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Lcom/android/server/wm/WindowToken;

    .line 1173
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1174
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const-string v1, " to display="

    const-string v2, "Can\'t map token="

    if-nez v0, :cond_5

    .line 1182
    if-eqz p1, :cond_4

    .line 1186
    if-eqz p2, :cond_3

    .line 1191
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1198
    iput-object p0, p2, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1201
    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v2, 0x7db

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7dc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7f7

    if-eq v1, v2, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayAreaPolicy;->addWindow(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1209
    goto :goto_0

    .line 1204
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1215
    :cond_2
    :goto_0
    return-void

    .line 1187
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1183
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " binder is null"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1179
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already mapped to display="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tokens="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method adjustForImeIfNeeded()V
    .locals 4

    .line 3003
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3004
    .local v0, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3005
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3006
    .local v1, "imeVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v2

    .line 3009
    .local v2, "imeHeight":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-static {v1, v3}, Lcom/android/server/vcaction/OpVerificationCodeInjector;->notifyImeLayoutChanged(ZLcom/android/server/wm/DisplayFrames;)V

    .line 3013
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->setInputMethodVisible(Z)V

    .line 3016
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    .line 3017
    return-void
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 4941
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 4942
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_0

    .line 4944
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 4947
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 4949
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 4950
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    goto :goto_1

    .line 4952
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 4954
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4955
    return-void
.end method

.method applySurfaceChangesTransaction()V
    .locals 10

    .line 4198
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 4200
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 4202
    const/4 v1, 0x0

    .line 4204
    .local v1, "repeats":I
    :cond_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4205
    const/4 v3, 0x6

    const-string v4, "WindowManager"

    const-wide/16 v5, 0x20

    if-le v1, v3, :cond_1

    .line 4206
    const-string v3, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 4208
    goto/16 :goto_2

    .line 4211
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v7, "On entry to LockedInner"

    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 4214
    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-eqz v3, :cond_3

    .line 4215
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 4218
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 4219
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_4

    const-string v3, "Computing new config from layout"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4221
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4222
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 4226
    :cond_5
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_6

    .line 4227
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4231
    :cond_6
    const/4 v3, 0x0

    if-ge v1, v7, :cond_8

    .line 4232
    if-ne v1, v2, :cond_7

    move v4, v2

    goto :goto_0

    :cond_7
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_1

    .line 4234
    :cond_8
    const-string v7, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    :goto_1
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4240
    const-string v3, "applyPostLayoutPolicy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4242
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 4243
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4244
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4246
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4247
    nop

    .line 4248
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v4, "after finishPostLayoutPolicyLw"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 4250
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 4251
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v3, :cond_0

    .line 4253
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 4255
    const-string v3, "applyWindowSurfaceChanges"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4257
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4259
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4260
    nop

    .line 4261
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 4265
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_a

    .line 4266
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 4267
    invoke-static {v3}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateGlobalModeId(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 4272
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    .line 4276
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIirsChipEnable:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_c

    .line 4277
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-nez v2, :cond_b

    .line 4278
    sget-object v2, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v2}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 4281
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-eqz v2, :cond_c

    .line 4282
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    iput v3, v2, Lcom/oneplus/iris/OpIrisWindowInfo;->modeId:I

    .line 4283
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    .line 4284
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mOpIrisWindowInfo:Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-interface {v2, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->updateWindowInfo(Lcom/oneplus/iris/OpIrisWindowInfo;)V

    .line 4289
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 4290
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v6, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZZ)V

    .line 4297
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    .line 4298
    .local v2, "wallpaperVisible":Z
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v2, v3, :cond_d

    .line 4299
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 4300
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 4303
    :cond_d
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 4304
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 4307
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->updateAllDrawn()V

    .line 4308
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_3

    .line 4309
    :cond_e
    return-void

    .line 4259
    .end local v2    # "wallpaperVisible":Z
    :catchall_0
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4260
    throw v2

    .line 4246
    :catchall_1
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4247
    throw v2
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4993
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCoveredContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$WindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4995
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$WindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4996
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5000
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCoveredContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$WindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5002
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$WindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5003
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5004
    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 5016
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 5017
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 5018
    return-void
.end method

.method assignStackOrdering()V
    .locals 3

    .line 5044
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5045
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 5044
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5047
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method assignWindowLayers(Z)V
    .locals 3
    .param p1, "setLayoutNeeded"    # Z

    .line 3574
    const-wide/16 v0, 0x20

    const-string v2, "assignWindowLayers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3575
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3576
    if-eqz p1, :cond_0

    .line 3577
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3584
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3585
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3586
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 2
    .param p1, "rotation"    # I

    .line 1981
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .locals 18
    .param p1, "outExclusion"    # Landroid/graphics/Region;
    .param p2, "outExclusionUnrestricted"    # Landroid/graphics/Region;

    .line 5338
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Region;->setEmpty()V

    .line 5339
    if-eqz p2, :cond_0

    .line 5340
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->setEmpty()V

    .line 5342
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v10

    .line 5343
    .local v10, "unhandled":Landroid/graphics/Region;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 5345
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 5346
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v12

    .line 5347
    .local v12, "leftEdge":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 5348
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v13

    .line 5350
    .local v13, "rightEdge":Landroid/graphics/Rect;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v14

    .line 5351
    .local v14, "touchableRegion":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .line 5352
    .local v15, "local":Landroid/graphics/Region;
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    aput v2, v1, v11

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v9, 0x1

    aput v2, v1, v9

    move-object/from16 v16, v1

    .line 5365
    .local v16, "remainingLeftRight":[I
    new-instance v8, Lcom/android/server/wm/-$$Lambda$DisplayContent$BdTpXoSgyfSu0RkjbBJFgdRaQ0g;

    move-object v1, v8

    move-object v2, v10

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v12

    move-object v11, v8

    move-object v8, v13

    move-object/from16 v17, v12

    move v12, v9

    .end local v12    # "leftEdge":Landroid/graphics/Rect;
    .local v17, "leftEdge":Landroid/graphics/Rect;
    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/-$$Lambda$DisplayContent$BdTpXoSgyfSu0RkjbBJFgdRaQ0g;-><init>(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5423
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 5424
    invoke-virtual {v14}, Landroid/graphics/Region;->recycle()V

    .line 5425
    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    .line 5426
    const/4 v1, 0x0

    aget v2, v16, v1

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-lt v2, v3, :cond_2

    aget v2, v16, v12

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v11, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v12

    :goto_1
    return v11
.end method

.method canAddToastWindowForUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 3357
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mRojqgB8byVtZRzyTl2qSRFPgIo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$mRojqgB8byVtZRzyTl2qSRFPgIo;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3359
    .local v0, "focusedWindowForUid":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3360
    return v1

    .line 3362
    :cond_0
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3365
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method canShowIme()Z
    .locals 2

    .line 3846
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3847
    return v1

    .line 3849
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 2

    .line 3902
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 3904
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v1, :cond_2

    .line 3906
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v0

    .line 3908
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method computeImeParent()Landroid/view/SurfaceControl;
    .locals 2

    .line 3919
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3924
    .local v0, "allowAttachToApp":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3925
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 3929
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .locals 13
    .param p1, "updateImeTarget"    # Z

    .line 3677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "Moving IM target from "

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v0, :cond_2

    .line 3679
    if-eqz p1, :cond_1

    .line 3680
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to null since mInputMethodWindow is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3684
    :cond_1
    return-object v2

    .line 3687
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3688
    .local v0, "curTarget":Lcom/android/server/wm/WindowState;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3689
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_3

    const-string v1, "Defer updating IME target"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_3
    return-object v0

    .line 3696
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 3697
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 3703
    .local v4, "target":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x3

    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v5, :cond_5

    .line 3704
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3705
    .local v6, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_5

    .line 3706
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 3707
    .local v7, "betterTarget":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_5

    .line 3708
    move-object v4, v7

    .line 3713
    .end local v6    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "betterTarget":Lcom/android/server/wm/WindowState;
    :cond_5
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_6

    if-eqz p1, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed new IME target: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for display: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3713
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    :cond_6
    const/4 v6, 0x0

    if-eqz v0, :cond_b

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v7, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3720
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v7

    if-nez v7, :cond_b

    .line 3727
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->mOPFeatureInputMethod:Z

    const-string v8, "Not changing target till current window is closing and not removed"

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->mShowIMEWithWindowAnimation:Z

    if-eqz v7, :cond_9

    .line 3728
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.whatsapp"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3729
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_7

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    :cond_7
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mShowIMEWithWindowAnimation:Z

    .line 3732
    return-object v0

    .line 3734
    :cond_8
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v7, :cond_b

    const-string v7, "change input target by OPFeatureInputMethod"

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3736
    :cond_9
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_a

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_a
    return-object v0

    .line 3745
    :cond_b
    :goto_0
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mShowIMEWithWindowAnimation:Z

    .line 3748
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Desired input method target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " updateImeTarget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :cond_c
    const/4 v7, 0x4

    const-string v8, " Callers="

    const-string v9, ""

    if-nez v4, :cond_10

    .line 3752
    if-eqz p1, :cond_f

    .line 3753
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to null."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3754
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_d

    .line 3755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_d
    nop

    :goto_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3753
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3759
    :cond_f
    return-object v2

    .line 3762
    :cond_10
    if-eqz p1, :cond_17

    .line 3763
    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3764
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_2
    if-eqz v2, :cond_14

    .line 3769
    const/4 v10, 0x0

    .line 3770
    .local v10, "highestTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 3771
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 3774
    :cond_12
    if-eqz v10, :cond_14

    .line 3775
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v11, :cond_13

    .line 3776
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " animating="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3777
    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3776
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :cond_13
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3783
    const/4 v1, 0x1

    invoke-direct {p0, v10, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3784
    return-object v10

    .line 3789
    .end local v10    # "highestTarget":Lcom/android/server/wm/WindowState;
    :cond_14
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3790
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_15
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3789
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    :cond_16
    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3794
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    return-object v4
.end method

.method computeImeTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "candidate"    # Lcom/android/server/wm/ActivityRecord;

    .line 3802
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 3803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3805
    :cond_0
    return-void
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;
    .locals 18
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "rotation"    # I

    .line 2010
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v10, v0, :cond_1

    const/4 v2, 0x3

    if-ne v10, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    move v11, v0

    .line 2011
    .local v11, "rotated":Z
    if-eqz v11, :cond_2

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    move v12, v0

    .line 2012
    .local v12, "dw":I
    if-eqz v11, :cond_3

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    move v13, v0

    .line 2013
    .local v13, "dh":I
    iget-object v0, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v14, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2016
    .local v14, "uiMode":I
    nop

    .line 2017
    invoke-virtual {v8, v10}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v15

    .line 2018
    .local v15, "displayCutout":Landroid/view/DisplayCutout;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move/from16 v4, p2

    move v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V

    .line 2020
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    move-object v7, v0

    .line 2021
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    iput v10, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 2022
    iput v12, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2023
    iput v13, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2024
    iget-object v0, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 2025
    .local v16, "appBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v7, Landroid/view/DisplayInfo;->appWidth:I

    .line 2026
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v7, Landroid/view/DisplayInfo;->appHeight:I

    .line 2027
    invoke-virtual {v15}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move-object v0, v15

    :goto_3
    iput-object v0, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2028
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v11

    move v3, v14

    move v4, v12

    move v5, v13

    move-object/from16 v17, v7

    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 2030
    return-object v17
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .locals 16
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2067
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v8, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v7, v0, v8}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v9

    .line 2068
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v9, v0}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 2069
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2070
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2071
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 2073
    iget v10, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2074
    .local v10, "dw":I
    iget v11, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2075
    .local v11, "dh":I
    iget v4, v9, Landroid/view/DisplayInfo;->rotation:I

    iget v5, v8, Landroid/content/res/Configuration;->uiMode:I

    iget-object v6, v9, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V

    .line 2078
    iget v0, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0x301

    .line 2079
    iget v1, v9, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 2080
    const/16 v1, 0x200

    goto :goto_0

    .line 2081
    :cond_0
    const/16 v1, 0x100

    :goto_0
    or-int/2addr v0, v1

    iput v0, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 2083
    iget v0, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 2085
    nop

    .line 2086
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2087
    const/16 v0, 0x8

    goto :goto_1

    .line 2088
    :cond_1
    const/4 v0, 0x4

    .line 2089
    :goto_1
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2090
    const/4 v1, 0x2

    goto :goto_2

    .line 2091
    :cond_2
    move v1, v3

    :goto_2
    or-int/2addr v0, v1

    iput v0, v8, Landroid/content/res/Configuration;->colorMode:I

    .line 2095
    iput v3, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 2096
    iput v3, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 2097
    iput v3, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2099
    const/4 v0, 0x0

    .line 2100
    .local v0, "keyboardPresence":I
    const/4 v1, 0x0

    .line 2101
    .local v1, "navigationPresence":I
    iget-object v4, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v4

    .line 2102
    .local v4, "devices":[Landroid/view/InputDevice;
    if-eqz v4, :cond_3

    array-length v6, v4

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 2103
    .local v6, "len":I
    :goto_3
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v6, :cond_d

    .line 2104
    aget-object v13, v4, v12

    .line 2106
    .local v13, "device":Landroid/view/InputDevice;
    invoke-virtual {v13}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2107
    goto :goto_9

    .line 2112
    :cond_4
    iget-object v14, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v13}, Landroid/view/InputDevice;->getId()I

    move-result v15

    .line 2113
    iget v5, v9, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-ne v5, v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2112
    :goto_5
    invoke-virtual {v14, v15, v2}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2114
    goto :goto_9

    .line 2117
    :cond_6
    invoke-virtual {v13}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    .line 2118
    .local v2, "sources":I
    invoke-virtual {v13}, Landroid/view/InputDevice;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2119
    const/4 v5, 0x2

    goto :goto_6

    :cond_7
    move v5, v3

    .line 2121
    .local v5, "presenceFlag":I
    :goto_6
    iget-object v14, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    const/4 v15, 0x3

    if-eqz v14, :cond_8

    .line 2122
    and-int/lit16 v14, v2, 0x1002

    const/16 v3, 0x1002

    if-ne v14, v3, :cond_9

    .line 2123
    iput v15, v8, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_7

    .line 2126
    :cond_8
    const/4 v3, 0x1

    iput v3, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 2129
    :cond_9
    :goto_7
    const v3, 0x10004

    and-int v14, v2, v3

    if-ne v14, v3, :cond_a

    .line 2130
    iput v15, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2131
    or-int/2addr v1, v5

    const/4 v3, 0x2

    goto :goto_8

    .line 2132
    :cond_a
    and-int/lit16 v3, v2, 0x201

    const/16 v14, 0x201

    if-ne v3, v14, :cond_b

    iget v3, v8, Landroid/content/res/Configuration;->navigation:I

    const/4 v14, 0x1

    if-ne v3, v14, :cond_b

    .line 2134
    const/4 v3, 0x2

    iput v3, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2135
    or-int/2addr v1, v5

    goto :goto_8

    .line 2132
    :cond_b
    const/4 v3, 0x2

    .line 2138
    :goto_8
    invoke-virtual {v13}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v14

    if-ne v14, v3, :cond_c

    .line 2139
    iput v3, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 2140
    or-int/2addr v0, v5

    .line 2103
    .end local v2    # "sources":I
    .end local v5    # "presenceFlag":I
    .end local v13    # "device":Landroid/view/InputDevice;
    :cond_c
    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    goto :goto_4

    .line 2144
    .end local v12    # "i":I
    :cond_d
    iget v2, v8, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    iget-object v2, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v2, :cond_e

    .line 2145
    const/4 v2, 0x2

    iput v2, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2146
    or-int/lit8 v1, v1, 0x1

    .line 2151
    :cond_e
    iget v2, v8, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    move v2, v5

    .line 2152
    .local v2, "hardKeyboardAvailable":Z
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v2, v3, :cond_10

    .line 2153
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 2154
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2155
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2158
    :cond_10
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2161
    const/4 v3, 0x1

    iput v3, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2162
    iput v3, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2163
    iput v3, v8, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2164
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v8, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 2165
    return-void
.end method

.method configureDisplayPolicy()V
    .locals 9

    .line 1878
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1879
    .local v0, "width":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1882
    .local v1, "height":I
    if-le v0, v1, :cond_0

    .line 1883
    move v2, v1

    .line 1884
    .local v2, "shortSize":I
    move v3, v0

    .local v3, "longSize":I
    goto :goto_0

    .line 1886
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_0
    move v2, v0

    .line 1887
    .restart local v2    # "shortSize":I
    move v3, v1

    .line 1890
    .restart local v3    # "longSize":I
    :goto_0
    mul-int/lit16 v4, v2, 0xa0

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    div-int/2addr v4, v5

    .line 1891
    .local v4, "shortSizeDp":I
    mul-int/lit16 v6, v3, 0xa0

    div-int/2addr v6, v5

    .line 1893
    .local v6, "longSizeDp":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1894
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, v0, v1, v4, v6}, Lcom/android/server/wm/DisplayRotation;->configure(IIII)V

    .line 1896
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1897
    invoke-virtual {p0, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    .line 1896
    invoke-virtual {v5, v7, v8}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1900
    const/4 v5, 0x0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/wm/DisplayContent;->isNonDecorDisplayCloseToSquare(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    .line 1901
    return-void
.end method

.method continueUpdateImeTarget()V
    .locals 2

    .line 5061
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    .line 5062
    return-void

    .line 5065
    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5066
    if-nez v0, :cond_1

    .line 5067
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5069
    :cond_1
    return-void
.end method

.method continueUpdateOrientationForDiffOrienLaunchingApp()V
    .locals 3

    .line 1734
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 1735
    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1740
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1744
    return-void

    .line 1747
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 1748
    return-void
.end method

.method deferUpdateImeTarget()V
    .locals 1

    .line 5053
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5054
    return-void
.end method

.method destroyLeakedSurfaces()Z
    .locals 2

    .line 3608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3609
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$cUrRhr9F2jovlTUmfY9boAvOD98;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$cUrRhr9F2jovlTUmfY9boAvOD98;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3633
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3168
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display: mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getStackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3171
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v1, :cond_0

    const-string v1, " mSingleTaskInstance"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3173
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3174
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3175
    const-string v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_2

    .line 3179
    :cond_1
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3180
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3181
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3183
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_3

    .line 3184
    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    :cond_3
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3187
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3188
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3189
    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3190
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3191
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3192
    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3193
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3194
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3195
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLayoutNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTouchExcludeRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3200
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3201
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3203
    const-string v2, "  mCurrentFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3204
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v2, v3, :cond_4

    .line 3205
    const-string v2, "  mLastFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3207
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "    "

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-lez v2, :cond_6

    .line 3208
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3209
    const-string v2, "  Windows losing focus:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 3211
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3212
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 3213
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3214
    if-eqz p3, :cond_5

    .line 3215
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_2

    .line 3218
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3210
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3222
    .end local v2    # "i":I
    :cond_6
    const-string v2, "  mFocusedApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3223
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    if-eqz v2, :cond_7

    .line 3224
    const-string v2, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3225
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_8

    .line 3228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mFixedRotationLaunchingApp="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3232
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3234
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 3235
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3236
    const-string v2, "  mSystemGestureExclusion="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3237
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3240
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Task display areas in top down Z order:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "tdaNdx":I
    :goto_3
    if-ltz v2, :cond_a

    .line 3243
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p3}, Lcom/android/server/wm/TaskDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3242
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 3246
    .end local v2    # "tdaNdx":I
    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3247
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3248
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3249
    const-string v2, "  Exiting tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_b

    .line 3251
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 3252
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    const-string v6, "  Exiting #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3253
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3254
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 3255
    invoke-virtual {v5, p1, v3, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3250
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 3265
    .end local v2    # "i":I
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 3267
    .local v2, "rotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v2, :cond_c

    .line 3268
    const-string v3, "  mScreenRotationAnimation:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3269
    invoke-interface {v2, v0, p1}, Lcom/android/server/wm/IScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_5

    .line 3270
    :cond_c
    if-eqz p3, :cond_d

    .line 3271
    const-string v3, "  no ScreenRotationAnimation "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    :cond_d
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3278
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_e

    .line 3279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "homeStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3282
    .local v4, "pinnedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_f

    .line 3283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pinnedStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 3286
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3287
    .local v5, "splitScreenPrimaryStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_10

    .line 3288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "splitScreenPrimaryStack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 3293
    .local v6, "recentsStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v6, :cond_11

    .line 3294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "recentsStack="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    :cond_11
    const/4 v7, 0x5

    .line 3297
    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 3298
    .local v7, "dreamStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v7, :cond_12

    .line 3299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "dreamStack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    :cond_12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3303
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3305
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3306
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3307
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3308
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3309
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3310
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3311
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3312
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3314
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3315
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 3105
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3106
    return-void

    .line 3109
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3110
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3112
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3113
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

    const-wide v3, 0x10b00000015L

    invoke-virtual {v2, p1, v3, v4, p4}, Lcom/android/server/wm/DisplayArea$Root;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3114
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3115
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 3116
    .local v3, "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000014L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3114
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3118
    .end local v2    # "i":I
    :cond_1
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3119
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3120
    const-wide v2, 0x1050000000bL

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3127
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 3129
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v2, :cond_2

    .line 3130
    const-wide v3, 0x10b0000000cL

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/wm/IScreenRotationAnimation;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3132
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/DisplayFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3133
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v4, 0x10b00000010L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/AppTransition;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3134
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_3

    .line 3135
    const-wide v4, 0x1090000000fL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3137
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 3138
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000011L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3137
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3140
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 3141
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000012L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3140
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3144
    .end local v3    # "i":I
    :cond_5
    const-wide v3, 0x10800000016L

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3145
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3146
    .local v3, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-wide v4, 0x10500000017L

    if-eqz v3, :cond_7

    .line 3147
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3148
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3149
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3150
    .local v4, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_6

    .line 3151
    const-wide v5, 0x10b00000018L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3153
    .end local v4    # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    goto :goto_3

    .line 3154
    :cond_7
    const/4 v6, -0x1

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3156
    :goto_3
    const-wide v4, 0x1080000001aL

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3158
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3159
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 3947
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3948
    return-void

    .line 3950
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3951
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3952
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_2

    .line 3953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 3954
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3956
    if-eqz p2, :cond_1

    .line 3957
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 3958
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3960
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3962
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :goto_1
    goto :goto_0

    .line 3964
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3965
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3966
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3967
    const-string v1, "  mOpeningApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3969
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3970
    const-string v1, "  mClosingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3972
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3973
    const-string v1, "  mChangingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3977
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3978
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "subPrefix"    # Ljava/lang/String;

    .line 3981
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3982
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3987
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 5962
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    if-eqz v0, :cond_0

    .line 5964
    return-void

    .line 5966
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 5968
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 5969
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5968
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5973
    .end local v2    # "i":I
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 5974
    nop

    .line 5975
    return-void

    .line 5973
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 5974
    throw v0
.end method

.method executeAppTransition()V
    .locals 11

    .line 5120
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5121
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    .local v1, "protoLogParam1":J
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x45859017

    const/4 v7, 0x4

    const/4 v8, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const/4 v9, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x2

    aput-object v4, v3, v9

    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5130
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":J
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 5131
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5133
    :cond_1
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 2457
    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 5

    .line 3392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3394
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3396
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1

    .line 3397
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x7edfebda

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3398
    :cond_0
    return-object v0

    .line 3400
    :cond_1
    return-object v1
.end method

.method findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "topFocusedDisplayId"    # I

    .line 3387
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3388
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3387
    :goto_1
    return-object v0
.end method

.method findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "searchBehind"    # Lcom/android/server/wm/WindowState;
    .param p2, "taskId"    # I

    .line 6054
    new-instance v0, Lcom/android/server/wm/DisplayContent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$1;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2793
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 2794
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->process(Lcom/android/server/wm/WindowContainer;III)Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1
.end method

.method finishFixedRotationAnimationIfPossible()V
    .locals 2

    .line 1788
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationAnimationController:Lcom/android/server/wm/FixedRotationAnimationController;

    .line 1789
    .local v0, "controller":Lcom/android/server/wm/FixedRotationAnimationController;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->hasSeamlessRotatingWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1790
    invoke-virtual {v0}, Lcom/android/server/wm/FixedRotationAnimationController;->show()V

    .line 1791
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationAnimationController:Lcom/android/server/wm/FixedRotationAnimationController;

    .line 1793
    :cond_0
    return-void
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2490
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1166
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_0

    .line 1167
    const/4 v1, 0x0

    return-object v1

    .line 1169
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method getCurrentOverrideConfigurationChanges()I
    .locals 1

    .line 2417
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    return v0
.end method

.method getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 2

    .line 2722
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicy;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayCoveredLayer()Landroid/view/SurfaceControl;
    .locals 1

    .line 5285
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCoveredContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$WindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .line 1153
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method getDisplayPosition()Landroid/graphics/Point;
    .locals 2

    .line 6036
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayPosition(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object v0
.end method

.method getDisplayUiContext()Landroid/content/Context;
    .locals 1

    .line 6032
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .locals 1

    .line 2335
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getFixedRotationAnimationController()Lcom/android/server/wm/FixedRotationAnimationController;
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationAnimationController:Lcom/android/server/wm/FixedRotationAnimationController;

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 5632
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5633
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 5634
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 5635
    return-object v1

    .line 5632
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5638
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getImeContainer()Lcom/android/server/wm/WindowContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;"
        }
    .end annotation

    .line 5275
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;

    return-object v0
.end method

.method getImeFallback()Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    .line 3840
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3841
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3842
    .local v1, "statusBar":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_0
    return-object v2
.end method

.method getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;
    .locals 1
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 3831
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->canShowIme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3832
    return-object p1

    .line 3834
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    return-object v0
.end method

.method getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .locals 1

    .line 5079
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    return-object v0
.end method

.method getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method getLastHasContent()Z
    .locals 1

    .line 5086
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return v0
.end method

.method getLastOrientation()I
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLastOrientation()I

    move-result v0

    return v0
.end method

.method getLocationInParentDisplay()Landroid/graphics/Point;
    .locals 8

    .line 5245
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5246
    .local v0, "location":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    .line 5249
    move-object v1, p0

    .line 5251
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5252
    .local v2, "displayParent":Lcom/android/server/wm/WindowState;
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 5253
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 5254
    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 5255
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v7, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 5256
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5257
    .end local v2    # "displayParent":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5259
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    return-object v0
.end method

.method getLocationInParentWindow()Landroid/graphics/Point;
    .locals 1

    .line 5241
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 5572
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 5573
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 5575
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 3323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNaturalOrientation()I
    .locals 2

    .line 4354
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ge v0, v1, :cond_0

    .line 4355
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4354
    :goto_0
    return v0
.end method

.method getOrientation()I
    .locals 11

    .line 2501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 2503
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 2504
    return v2

    .line 2507
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_2

    .line 2508
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2514
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    int-to-long v5, v1

    .local v5, "protoLogParam1":J
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x65efaeee

    const/4 v8, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v9

    invoke-static {v1, v7, v8, v0, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2517
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0

    .line 2520
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea$Root;->getOrientation()I

    move-result v0

    .line 2521
    .local v0, "rootOrientation":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea$Root;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 2522
    return v0
.end method

.method getOverlayLayer()Landroid/view/SurfaceControl;
    .locals 1

    .line 5279
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 5215
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .locals 1

    .line 2339
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getPreferredOptionsPanelGravity()I
    .locals 8

    .line 2304
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 2305
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const v3, 0x800053

    const/16 v4, 0x55

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x51

    if-ge v1, v2, :cond_2

    .line 2307
    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    .line 2310
    return v7

    .line 2316
    :cond_0
    return v3

    .line 2312
    :cond_1
    return v4

    .line 2321
    :cond_2
    if-eq v0, v6, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_3

    .line 2324
    return v4

    .line 2330
    :cond_3
    return v7

    .line 2328
    :cond_4
    return v3

    .line 2326
    :cond_5
    return v7
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .locals 3

    .line 5906
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 5907
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$olEtDzkJbp6PCECUFtRISV0LCpk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$olEtDzkJbp6PCECUFtRISV0LCpk;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5908
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 5907
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 5909
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 5910
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 5911
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v1
.end method

.method getProtoFieldId()J
    .locals 2

    .line 3163
    const-wide v0, 0x10b00000003L

    return-wide v0
.end method

.method getRotation()I
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    return v0
.end method

.method public getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;
    .locals 1

    .line 3070
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/IScreenRotationAnimation;

    return-object v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 2713
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2714
    return-void
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "rootTaskId"    # I

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "tdaNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2382
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2383
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2384
    return-object v1

    .line 2381
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2387
    .end local v0    # "tdaNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2362
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "tdaNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2363
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2364
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2365
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2366
    return-object v1

    .line 2362
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2369
    .end local v0    # "tdaNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStackCount()I
    .locals 3

    .line 2391
    const/4 v0, 0x0

    .line 2392
    .local v0, "totalStackCount":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2393
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 2392
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2395
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method protected getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;
    .locals 1
    .param p1, "index"    # I

    .line 2377
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayAreaPolicy;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method protected getTaskDisplayAreaCount()I
    .locals 1

    .line 2373
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicy;->getTaskDisplayAreaCount()I

    move-result v0

    return v0
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 2400
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2401
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2402
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 2403
    return-object v1

    .line 2400
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2406
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .line 3328
    float-to-int v0, p1

    .line 3329
    .local v0, "x":I
    float-to-int v1, p2

    .line 3330
    .local v1, "y":I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$UpcoNmXQIJX_lHKnFIxs4t_Pu24;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$UpcoNmXQIJX_lHKnFIxs4t_Pu24;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3350
    .local v2, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v2
.end method

.method getWindowCornerRadius()F
    .locals 1

    .line 1157
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    return v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method getWindowTokensWithoutSurfaceCount(I)I
    .locals 5
    .param p1, "callingUid"    # I

    .line 6277
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6278
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowToken;>;"
    const/4 v1, 0x0

    .line 6279
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 6280
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 6281
    .local v3, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getOwnerUid()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 6282
    goto :goto_1

    .line 6285
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6286
    goto :goto_1

    .line 6288
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 6289
    goto :goto_1

    .line 6291
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 6279
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6293
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method getWindowingLayer()Landroid/view/SurfaceControl;
    .locals 1

    .line 5270
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowContainers:Lcom/android/server/wm/DisplayContent$WindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$WindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5795
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5799
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5800
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5801
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5802
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 5804
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5805
    return-void

    .line 5807
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_3

    .line 5808
    return-void

    .line 5810
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5811
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 5812
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 5813
    return-void

    .line 5797
    :cond_4
    :goto_0
    return-void
.end method

.method handleAnimatingStoppedAndTransition()V
    .locals 5

    .line 5139
    const/4 v0, 0x0

    .line 5141
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 5143
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5144
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 5145
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5143
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5147
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5149
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    .line 5151
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 5153
    or-int/2addr v0, v2

    .line 5154
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_1

    .line 5155
    const-string v1, "WindowManager"

    const-string v3, "Wallpaper layer changed: assigning layers + relayout"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5158
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 5161
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 5163
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5164
    return-void
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 2

    .line 2993
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    .line 2995
    .local v0, "stillDeferringRemoval":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_0

    .line 2996
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2997
    const/4 v1, 0x0

    return v1

    .line 2999
    :cond_0
    return v0
.end method

.method handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "checkOpening"    # Z

    .line 1595
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1596
    return v1

    .line 1598
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFinishingFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1599
    return v1

    .line 1601
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1603
    return v2

    .line 1605
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1611
    :cond_3
    if-eqz p2, :cond_7

    .line 1612
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1618
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 1622
    return v1

    .line 1624
    :cond_5
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    if-nez v0, :cond_8

    .line 1631
    return v1

    .line 1616
    :cond_6
    :goto_0
    return v1

    .line 1633
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_8

    .line 1635
    return v1

    .line 1637
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 1638
    .local v0, "rotation":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 1639
    return v1

    .line 1641
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1644
    return v1

    .line 1646
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v3}, Lcom/android/server/wm/PinnedStackController;->isPipActiveOrWindowingModeChanging()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1648
    return v1

    .line 1651
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1652
    return v2

    .line 1609
    .end local v0    # "rotation":I
    :cond_c
    :goto_1
    return v1
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 1

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v0

    return v0
.end method

.method hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 2346
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasAlertWindowSurfaces()Z
    .locals 3

    .line 3637
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3638
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3639
    return v1

    .line 3637
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3642
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .locals 2

    .line 4115
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4116
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasTopFixedRotationLaunchingApp()Z
    .locals 2

    .line 1657
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 1659
    invoke-static {v1}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->access$200(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1657
    :goto_0
    return v0
.end method

.method hideTransientBars()V
    .locals 3

    .line 4121
    const/high16 v0, 0xc000000

    .line 4122
    .local v0, "transientFlags":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    const v2, -0xc000001

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    .line 4124
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsPolicy;->hideTransient()V

    .line 4125
    return-void
.end method

.method ignoreRotationForApps()Z
    .locals 1

    .line 1905
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    return v0
.end method

.method initializeDisplayBaseInfo()V
    .locals 4

    .line 2560
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2561
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_0

    .line 2563
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2564
    .local v1, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 2565
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 2569
    .end local v1    # "newDisplayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2571
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2572
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2573
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2574
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2575
    return-void
.end method

.method isAnyNonToastWindowVisibleForPid(I)Z
    .locals 3
    .param p1, "pid"    # I

    .line 6022
    sget-object v0, Lcom/android/server/wm/-$$Lambda$VYR_ckkt7281-Ti8Ps0f0Tx3ljY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VYR_ckkt7281-Ti8Ps0f0Tx3ljY;

    const-class v1, Lcom/android/server/wm/WindowState;

    .line 6024
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6022
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 6026
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 6027
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 6028
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1664
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isImeAttachedToApp()Z
    .locals 2

    .line 3813
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3816
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3819
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3813
    :goto_0
    return v1
.end method

.method isInputMethodClientFocus(II)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 4094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4095
    .local v1, "imFocus":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    .line 4096
    return v0

    .line 4099
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_1

    .line 4100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last focus: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_2

    .line 4106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IM target uid/pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting client uid/pid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    if-ne v2, p1, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-ne v2, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method isLayoutNeeded()Z
    .locals 1

    .line 3943
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isNextTransitionForward()Z
    .locals 2

    .line 5168
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 5169
    .local v0, "transit":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method isPrivate()Z
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReady()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 5827
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    return v0
.end method

.method isRemoving()Z
    .locals 1

    .line 5834
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    return v0
.end method

.method isSingleTaskInstance()Z
    .locals 1

    .line 6009
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    return v0
.end method

.method isSleeping()Z
    .locals 1

    .line 5978
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    return v0
.end method

.method isTrusted()Z
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    return v0
.end method

.method isUidPresent(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 5816
    sget-object v0, Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5817
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5816
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 5818
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5819
    .local v1, "isUidPresent":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 5820
    return v1
.end method

.method isVisible()Z
    .locals 1

    .line 2462
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$applyRotation$10$DisplayContent(ZLcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "rotateSeamlessly"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1846
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1847
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x7c308e5a

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1849
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1850
    iput v2, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1852
    :cond_1
    iput-boolean v1, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 1853
    return-void
.end method

.method public synthetic lambda$applyRotationAndFinishFixedRotation$26$DisplayContent(II)V
    .locals 0
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 5789
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    return-void
.end method

.method public synthetic lambda$destroyLeakedSurfaces$15$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3610
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3611
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    .line 3612
    return-void

    .line 3614
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " token="

    const-string v3, " surface="

    const-string v4, "WindowManager"

    if-nez v1, :cond_1

    .line 3615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3621
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3622
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 3623
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x739056a2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3628
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3629
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3631
    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$getTouchableWinAtPointLocked$12$DisplayContent(IILcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3331
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3332
    .local v0, "flags":I
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3333
    return v2

    .line 3335
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 3336
    return v2

    .line 3339
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 3340
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3341
    return v2

    .line 3344
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3346
    and-int/lit8 v1, v0, 0x28

    .line 3347
    .local v1, "touchFlags":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public synthetic lambda$new$0$DisplayContent()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$new$1$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 719
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 720
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 721
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 722
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 723
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 725
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_1

    .line 726
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 732
    :cond_1
    return-void
.end method

.method public synthetic lambda$new$2$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 736
    .local v0, "lostFocusUid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 737
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_0

    .line 738
    const/16 v2, 0x34

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 739
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 743
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .locals 17
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 747
    .local v2, "focusedApp":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    int-to-long v8, v8

    .local v8, "protoLogParam1":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v10

    .local v10, "protoLogParam2":Z
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x50f87eb5

    const/16 v13, 0x34

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v3, v14, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v6

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v5, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 750
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":J
    .end local v10    # "protoLogParam2":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-nez v3, :cond_1

    .line 751
    return v7

    .line 759
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v3, :cond_2

    .line 760
    return v7

    .line 764
    :cond_2
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 766
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_4

    .line 767
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x53a4872

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 769
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_3
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 770
    return v6

    .line 773
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v8

    if-nez v8, :cond_6

    .line 775
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v9, 0x55413572

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 777
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_5
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 778
    return v6

    .line 783
    :cond_6
    if-eqz v3, :cond_9

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v4, :cond_9

    .line 784
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_8

    .line 786
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x3044237b

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 788
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_7
    iput-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 789
    return v6

    .line 792
    :cond_8
    sget-boolean v4, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v4, :cond_9

    .line 793
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 794
    .local v4, "focuseTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_9

    .line 795
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v8

    if-ne v8, v9, :cond_9

    .line 796
    return v7

    .line 803
    .end local v4    # "focuseTask":Lcom/android/server/wm/Task;
    :cond_9
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_a

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x18c9994e

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 804
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_a
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 805
    return v6
.end method

.method public synthetic lambda$new$4$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 11
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 814
    .local v0, "gone":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_6

    .line 815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1ST PASS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": gone="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mHaveFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLayoutAttached="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " config reported="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 815
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 819
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    const-string v5, " parentHidden="

    const-string v6, " visibleRequested="

    const-string v7, " visible="

    const-string v8, " mRelayoutCalled="

    if-eqz v0, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  GONE: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 820
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 823
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  VIS: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 824
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 823
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    :goto_3
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mBehindIme:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowsBehindIme:Z

    if-eq v3, v5, :cond_7

    .line 831
    iput-boolean v5, p1, Lcom/android/server/wm/WindowState;->mBehindIme:Z

    .line 832
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v3

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 835
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWinInsetsChanged:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_8

    .line 839
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowsBehindIme:Z

    .line 845
    :cond_8
    if-eqz v0, :cond_9

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v3, :cond_e

    :cond_9
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_e

    .line 846
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v3, :cond_a

    .line 847
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 849
    :cond_a
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 850
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 851
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 852
    .local v1, "firstLayout":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 853
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 857
    if-eqz v1, :cond_c

    .line 860
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 861
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    .line 863
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 864
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V

    .line 867
    :cond_c
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_d

    .line 868
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityRecord;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 871
    :cond_d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LAYOUT: mFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mContainingFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 871
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v1    # "firstLayout":Z
    :cond_e
    return-void
.end method

.method public synthetic lambda$new$5$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 880
    invoke-static {p1}, Lcom/android/server/wm/OpUtilInjector;->mayAddFloatingWindow(Lcom/android/server/wm/WindowState;)V

    .line 883
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_5

    .line 884
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2ND PASS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHaveFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mViewVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRelayoutCalled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    return-void

    .line 893
    :cond_1
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_5

    .line 895
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_4

    .line 897
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 899
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 900
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 902
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 903
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LAYOUT: mFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContainingFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_5
    return-void
.end method

.method public synthetic lambda$new$6$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 911
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking window @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 912
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$7$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 917
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic lambda$new$8$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 922
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 924
    .local v1, "obscuredChanged":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 927
    .local v2, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 929
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v4, :cond_7

    .line 930
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    .line 932
    .local v4, "isDisplayed":Z
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 935
    iput-object p1, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 936
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v3, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 939
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v5

    .line 943
    .local v5, "displayHasContent":Z
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    if-nez v6, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/wm/DisplayPolicy;->isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 945
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    or-int/2addr v7, v5

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 948
    :cond_2
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    .line 949
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 950
    .local v6, "type":I
    const/16 v7, 0x7d8

    if-eq v6, v7, :cond_3

    const/16 v7, 0x7da

    if-eq v6, v7, :cond_3

    const/16 v7, 0x7f8

    if-ne v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 953
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 954
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v3, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 956
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    .line 958
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 962
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v9, v9, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    or-int/2addr v8, v9

    iput-boolean v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 972
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v7

    .line 973
    invoke-virtual {v7, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v7

    .line 974
    .local v7, "preferredModeId":I
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_6

    .line 975
    invoke-static {p1, v7}, Lcom/android/server/wm/OpScreenModeServiceInjector;->getPreferredModeId(Lcom/android/server/wm/WindowState;I)I

    move-result v7

    .line 979
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    .line 981
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v7, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 986
    .end local v4    # "isDisplayed":Z
    .end local v5    # "displayHasContent":Z
    .end local v6    # "type":I
    .end local v7    # "preferredModeId":I
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 989
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 992
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 994
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 997
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 1000
    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_a

    .line 1002
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v5

    .line 1003
    .local v5, "committed":Z
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 1004
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    .line 1005
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First draw done in potential wallpaper target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 1008
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1009
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_a

    .line 1010
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v6, "wallpaper and commitFinishDrawingLocked true"

    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1018
    .end local v5    # "committed":Z
    :cond_a
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1019
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_b

    .line 1020
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1021
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityRecord;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 1022
    .local v5, "updateAllDrawn":Z
    if-eqz v5, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1023
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v5    # "updateAllDrawn":Z
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1028
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1031
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    .line 1032
    return-void
.end method

.method public synthetic lambda$onWindowFreezeTimeout$22$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4185
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4186
    return-void

    .line 4188
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 4189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 4191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing orientation change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    return-void
.end method

.method public synthetic lambda$shouldWaitForSystemDecorWindowsOnBoot$19$DisplayContent(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .param p1, "drawnWindowTypes"    # Landroid/util/SparseBooleanArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 4028
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4029
    .local v0, "isVisible":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    .line 4030
    .local v3, "isDrawn":Z
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 4031
    return v2

    .line 4033
    :cond_1
    if-eqz v3, :cond_4

    .line 4034
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v2, :cond_3

    const/16 v5, 0x7dd

    if-eq v4, v5, :cond_3

    const/16 v5, 0x7e5

    if-eq v4, v5, :cond_3

    const/16 v2, 0x7f8

    if-eq v4, v2, :cond_2

    goto :goto_1

    .line 4041
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4042
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v4

    .line 4041
    invoke-virtual {p1, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 4038
    :cond_3
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4046
    :cond_4
    :goto_1
    return v1
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .locals 3

    .line 3592
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3593
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3595
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3597
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3600
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3601
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3602
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3603
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 4
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 4912
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 4913
    .local v0, "s":Landroid/view/SurfaceSession;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 4914
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    if-nez p1, :cond_1

    .line 4915
    return-object v1

    .line 4918
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4919
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 4918
    return-object v2
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .locals 2

    .line 4929
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 4930
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4929
    return-object v0
.end method

.method notifyLocationInParentDisplayChanged()V
    .locals 2

    .line 5263
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5266
    return-void
.end method

.method okToAnimate()Z
    .locals 1

    .line 4564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->okToAnimate(Z)Z

    move-result v0

    return v0
.end method

.method okToAnimate(Z)Z
    .locals 1
    .param p1, "ignoreFrozen"    # Z

    .line 4568
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->okToDisplay(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4569
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4568
    :goto_0
    return v0
.end method

.method okToDisplay()Z
    .locals 1

    .line 4552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay(Z)Z

    move-result v0

    return v0
.end method

.method okToDisplay(Z)Z
    .locals 4
    .param p1, "ignoreFrozen"    # Z

    .line 4556
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 4557
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4558
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4557
    :goto_0
    return v1

    .line 4560
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method onAppTransitionDone()V
    .locals 2

    .line 2467
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 2468
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2471
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 2472
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2473
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isRotatingSeamlessly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2474
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 2476
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2423
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->preOnConfigurationChanged()V

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2425
    .local v0, "lastOrientation":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2426
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v1, :cond_0

    .line 2427
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2430
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 2431
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x67b

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2433
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x67c

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2431
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2437
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    if-eqz v1, :cond_2

    .line 2438
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 2440
    :cond_2
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 5
    .param p1, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p2, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1445
    nop

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1445
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1450
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v2

    .line 1451
    .local v2, "handled":Z
    if-nez v0, :cond_0

    .line 1452
    return v2

    .line 1455
    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    instance-of v4, p2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_2

    .line 1456
    move-object v4, p2

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1457
    .local v4, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v0, v4, v1, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v1

    .line 1459
    .local v1, "kept":Z
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1460
    if-nez v1, :cond_1

    .line 1461
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 1463
    .end local v1    # "kept":Z
    .end local v4    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    goto :goto_0

    .line 1466
    :cond_2
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 1469
    :goto_0
    return v2
.end method

.method onDescendantOverrideConfigurationChanged()V
    .locals 1

    .line 4547
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4548
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4549
    return-void
.end method

.method onDisplayChanged()V
    .locals 4

    .line 5579
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5580
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/wm/DisplayContent;->setBounds(IIII)I

    .line 5581
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 5584
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 5585
    .local v0, "displayId":I
    if-eqz v0, :cond_1

    .line 5586
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 5587
    .local v1, "displayState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v2, :cond_0

    .line 5588
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "Display-off"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_0

    .line 5589
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v2, :cond_1

    .line 5590
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 5591
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5594
    .end local v1    # "displayState":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 5595
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 2542
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    .line 2547
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2548
    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->displayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2551
    :cond_0
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 3
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 4970
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 4975
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 4977
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    .line 4978
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 4979
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 4980
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 4983
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 4984
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4985
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V

    .line 4987
    :cond_1
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 5761
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5762
    .local v0, "currOverrideConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 5763
    .local v1, "currRotation":I
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 5764
    .local v2, "overrideRotation":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 5765
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationAndFinishFixedRotation(II)V

    .line 5767
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 5768
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5769
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 5770
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1, p0}, Lcom/android/server/wm/WindowManagerService;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    .line 5771
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 5773
    return-void
.end method

.method onWindowFreezeTimeout()V
    .locals 2

    .line 4181
    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 4184
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$GdYfLI7hkBs2XfGJkN6DbdzEs8U;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$GdYfLI7hkBs2XfGJkN6DbdzEs8U;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4193
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4194
    return-void
.end method

.method performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;Z)I
    .locals 6
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "deferResume"    # Z

    .line 5734
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5735
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 5736
    .local v0, "changes":I
    if-eqz v0, :cond_2

    .line 5737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override config changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5741
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5742
    .local v1, "isDensityChange":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_1

    .line 5743
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    .line 5747
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v4, 0x18

    .line 5749
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    .line 5750
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5747
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5751
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5753
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    .line 5754
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 5753
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    .line 5756
    .end local v1    # "isDensityChange":Z
    :cond_2
    return v0
.end method

.method performLayout(ZZ)V
    .locals 3
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 4359
    const-wide/16 v0, 0x20

    const-string v2, "performLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4361
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4363
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4364
    nop

    .line 4365
    return-void

    .line 4363
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4364
    throw v2
.end method

.method pointWithinAppWindow(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2762
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2763
    .local v1, "targetWindowType":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$n90JauAfTfQVesyRzx0-TX7s1LM;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$n90JauAfTfQVesyRzx0-TX7s1LM;-><init>([III)V

    const-class v4, Lcom/android/server/wm/WindowState;

    .line 2781
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 2763
    invoke-static {v2, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 2782
    .local v2, "fn":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2783
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2784
    aget v4, v1, v3

    if-gt v0, v4, :cond_0

    aget v4, v1, v3

    const/16 v5, 0x63

    if-gt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p3, "includingParents"    # Z

    .line 2755
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DisplayContent;->positionDisplayAt(IZ)V

    .line 2756
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 297
    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method positionDisplayAt(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "includingParents"    # Z

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2749
    return-void
.end method

.method preOnConfigurationChanged()V
    .locals 2

    .line 2448
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 2450
    .local v0, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-eqz v0, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    .line 2453
    :cond_0
    return-void
.end method

.method prepareAppTransition(IZ)V
    .locals 1
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .line 5099
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 5100
    return-void
.end method

.method prepareAppTransition(IZIZ)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 5105
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v0

    .line 5107
    .local v0, "prepared":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5112
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 5117
    :cond_0
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 3020
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "tdaNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3021
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->prepareFreezingTaskBounds()V

    .line 3020
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3023
    .end local v0    # "tdaNdx":I
    :cond_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    .line 5022
    const-wide/16 v0, 0x20

    const-string v2, "prepareSurfaces"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5024
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 5028
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    sget-boolean v3, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v3, :cond_0

    .line 5029
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->prepareSurfaceFromDim(Lcom/android/server/wm/DisplayContent;)V

    .line 5033
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 5037
    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5039
    .end local v2    # "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5040
    nop

    .line 5041
    return-void

    .line 5039
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5040
    throw v2
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .locals 6
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 1275
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1276
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-ne v0, p0, :cond_0

    .line 1277
    return-void

    .line 1279
    :cond_0
    if-eqz v0, :cond_2

    .line 1280
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1283
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1285
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowToken;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1289
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 1293
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1295
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_4

    .line 1296
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 1297
    .local v1, "prevDisplayId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    aput v5, v3, v4

    .line 1297
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked([I)V

    .line 1300
    .end local v1    # "prevDisplayId":I
    :cond_4
    return-void
.end method

.method reapplyMagnificationSpec()V
    .locals 2

    .line 4958
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_0

    .line 4959
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 4961
    :cond_0
    return-void
.end method

.method reconfigureDisplayLocked()V
    .locals 5

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    return-void

    .line 1394
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    .line 1398
    .local v0, "configChanged":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1399
    .local v1, "currentDisplayConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1400
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1401
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    or-int/2addr v0, v2

    .line 1403
    if-eqz v0, :cond_2

    .line 1404
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1405
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v4, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1409
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1410
    return-void
.end method

.method reevaluateStatusBarVisibility()V
    .locals 2

    .line 4174
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 4175
    .local v0, "visibility":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4176
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 4178
    :cond_0
    return-void
.end method

.method registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5090
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5091
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 1
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 1387
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransitionController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1388
    return-void
.end method

.method registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;

    .line 5505
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5507
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5508
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    .local v0, "changed":Z
    goto :goto_0

    .line 5510
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .line 5513
    .restart local v0    # "changed":Z
    :goto_0
    if-nez v0, :cond_2

    .line 5514
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_1

    .line 5515
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5519
    .local v1, "unrestrictedOrNull":Landroid/graphics/Region;
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v2, v3, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5523
    goto :goto_2

    .line 5521
    :catch_0
    move-exception v2

    .line 5522
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "Failed to notify SystemGestureExclusionListener during register"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5525
    .end local v1    # "unrestrictedOrNull":Landroid/graphics/Region;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-void
.end method

.method releaseSelfIfNeeded()V
    .locals 7

    .line 5872
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_0

    .line 5873
    return-void

    .line 5877
    :cond_0
    const/4 v0, 0x1

    .line 5878
    .local v0, "onlyEmptyHomeStacksLeft":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "tdaNdx":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_4

    .line 5879
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 5880
    .local v4, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 5881
    const/4 v0, 0x0

    .line 5882
    goto :goto_2

    .line 5884
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 5885
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 5878
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5886
    .restart local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 5890
    .end local v1    # "tdaNdx":I
    .end local v4    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 5893
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "tdaNdx":I
    :goto_3
    if-ltz v1, :cond_5

    .line 5894
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 5895
    .local v2, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 5893
    .end local v2    # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1    # "tdaNdx":I
    :cond_5
    goto :goto_4

    .line 5897
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_7

    .line 5898
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    .line 5899
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 5900
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    .line 5902
    :cond_7
    :goto_4
    return-void
.end method

.method remove()V
    .locals 5

    .line 5838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    .line 5839
    const/4 v1, 0x0

    .line 5841
    .local v1, "lastReparentedStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 5843
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v2

    .line 5844
    .local v2, "numTaskContainers":I
    const/4 v3, 0x0

    .local v3, "tdaNdx":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 5845
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 5846
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/ActivityStack;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5847
    .local v4, "lastReparentedStackFromArea":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_0

    .line 5848
    move-object v1, v4

    .line 5844
    .end local v4    # "lastReparentedStackFromArea":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5852
    .end local v2    # "numTaskContainers":I
    .end local v3    # "tdaNdx":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 5853
    nop

    .line 5854
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 5858
    if-eqz v1, :cond_2

    .line 5859
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 5861
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 5862
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->release()V

    .line 5864
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5865
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5866
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5867
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 5869
    :cond_3
    return-void

    .line 5852
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 5853
    throw v0
.end method

.method removeAllTasks()V
    .locals 1

    .line 6014
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$baGpE41geZHYtmuLU8fsleePZ34;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$baGpE41geZHYtmuLU8fsleePZ34;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 6015
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1303
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1304
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    const-string v1, "WindowManager"

    if-nez v0, :cond_0

    .line 1305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void

    .line 1309
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1311
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_1

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void

    .line 1316
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 1317
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v1, :cond_2

    .line 1319
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->finishFixedRotationTransform()V

    .line 1320
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1322
    :cond_2
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2740
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_0

    .line 2741
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 2742
    return-void

    .line 2744
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 297
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .locals 3

    .line 4532
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4533
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 4534
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_0

    .line 4535
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4532
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4540
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 4541
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->removeExistingAppTokensIfPossible()V

    .line 4540
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4543
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 2940
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 2942
    return-void

    .line 2944
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2945
    return-void
.end method

.method removeImmediately()V
    .locals 4

    .line 2949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 2952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 2953
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowState;->removeEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z

    .line 2956
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2957
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2958
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2959
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 2960
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2961
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 2962
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 2963
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2964
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    .line 2966
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/IScreenRotationAnimation;)V

    .line 2967
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 2968
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V

    .line 2969
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 2972
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_2

    .line 2973
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->removeImmediately()V

    .line 2977
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->onDisplayRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2980
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2981
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2982
    nop

    .line 2986
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2987
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2988
    return-void

    .line 2980
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2981
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2982
    throw v1
.end method

.method removeShellRoot(I)V
    .locals 3
    .param p1, "windowType"    # I

    .line 1247
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1248
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ShellRoot;

    .line 1249
    .local v1, "root":Lcom/android/server/wm/ShellRoot;
    if-nez v1, :cond_0

    .line 1250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1252
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1253
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1254
    .end local v1    # "root":Lcom/android/server/wm/ShellRoot;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1255
    return-void

    .line 1254
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 2
    .param p1, "windowingModes"    # [I

    .line 5646
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5647
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStacksInWindowingModes([I)V

    .line 5646
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5649
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 2
    .param p1, "activityTypes"    # [I

    .line 5652
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5653
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStacksWithActivityTypes([I)V

    .line 5652
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5655
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1218
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 1219
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1220
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 1222
    :cond_0
    return-object v0
.end method

.method reparentDisplayContent(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 5196
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 5197
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowState;->removeEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z

    .line 5199
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    .line 5200
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->addEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z

    .line 5201
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 5202
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-nez v0, :cond_1

    .line 5203
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    .line 5205
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 5206
    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5207
    return-void
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;

    .line 4937
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4938
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3026
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 3027
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 3028
    return-void
.end method

.method rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3033
    invoke-static {p3, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 3034
    .local v0, "deltaRotation":I
    nop

    .line 3035
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 3034
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 3037
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3038
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3039
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 3040
    return-void
.end method

.method rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 1780
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 1781
    .local v0, "rotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1782
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 1784
    :cond_0
    return-void
.end method

.method rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1567
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1568
    return v1

    .line 1570
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1571
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1574
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 1575
    .local v0, "currentRotation":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v2

    .line 1577
    .local v2, "rotation":I
    if-ne v2, v0, :cond_2

    .line 1578
    return v1

    .line 1580
    :cond_2
    return v2

    .line 1572
    .end local v0    # "currentRotation":I
    .end local v2    # "rotation":I
    :cond_3
    :goto_0
    return v1
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 3369
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3374
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3376
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3377
    return-void

    .line 3370
    :cond_1
    :goto_0
    return-void
.end method

.method screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 4440
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4441
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 4442
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    :cond_0
    return-object v2

    .line 4447
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4448
    .local v0, "dw":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4450
    .local v3, "dh":I
    if-lez v0, :cond_9

    if-gtz v3, :cond_2

    goto :goto_2

    .line 4454
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4457
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 4459
    .local v6, "rot":I
    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    if-ne v6, v7, :cond_5

    .line 4460
    :cond_3
    if-ne v6, v8, :cond_4

    goto :goto_0

    :cond_4
    move v7, v8

    :goto_0
    move v6, v7

    .line 4465
    :cond_5
    invoke-static {v4, v6, v0, v3}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 4473
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 4475
    invoke-virtual {v7, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v7

    .line 4476
    .local v7, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v7, :cond_6

    .line 4477
    invoke-interface {v7}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v8

    goto :goto_1

    :cond_6
    nop

    .line 4478
    .local v5, "inRotation":Z
    :goto_1
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v8, :cond_7

    if-eqz v5, :cond_7

    const-string v8, "Taking screenshot while rotating"

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    :cond_7
    invoke-static {v4, v0, v3, v5, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4484
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_8

    .line 4485
    const-string v9, "Failed to take screenshot"

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    return-object v2

    .line 4491
    :cond_8
    invoke-virtual {v8, p1}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4492
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 4493
    return-object v1

    .line 4451
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "inRotation":Z
    .end local v6    # "rot":I
    .end local v7    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    :goto_2
    return-object v2
.end method

.method sendNewConfiguration()V
    .locals 3

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    return-void

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked()Z

    move-result v0

    .line 1421
    .local v0, "configUpdated":Z
    if-eqz v0, :cond_2

    .line 1422
    return-void

    .line 1428
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 1434
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v1, :cond_3

    .line 1435
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1436
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "config-unchanged"

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1438
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1440
    :cond_3
    return-void
.end method

.method setDisplayToSingleTaskInstance()V
    .locals 6

    .line 5986
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    .line 5987
    .local v0, "taskDisplayAreaCount":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 5991
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    .line 5992
    .local v2, "stackCount":I
    if-gt v2, v1, :cond_2

    .line 5996
    if-lez v2, :cond_1

    .line 5997
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 5998
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-gt v4, v1, :cond_0

    goto :goto_0

    .line 5999
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display stack already has multiple tasks. display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6004
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    .line 6005
    return-void

    .line 5993
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display already has multiple stacks. display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5988
    .end local v2    # "stackCount":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display already has multiple task display areas. display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDisplayWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 2486
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 2487
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 2
    .param p1, "hasVisible"    # Z

    .line 4521
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4522
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 4521
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4526
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 4527
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->setExitingTokensHasVisible(Z)V

    .line 4526
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4529
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "rotation"    # I

    .line 1695
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 1696
    .local v0, "prevRotatedLaunchingApp":Lcom/android/server/wm/WindowToken;
    if-ne v0, p1, :cond_0

    .line 1697
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1699
    return-void

    .line 1701
    :cond_0
    if-eqz v0, :cond_2

    .line 1702
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v1, 0x3

    .line 1704
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->isAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1709
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 1711
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->access$200(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 1715
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1717
    :cond_1
    return-void

    .line 1720
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1721
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 1723
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1724
    if-eqz v0, :cond_4

    .line 1725
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    .line 1727
    :cond_4
    return-void
.end method

.method setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1673
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1674
    return-void
.end method

.method setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "rotation"    # I

    .line 1677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V

    .line 1679
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationAnimationController:Lcom/android/server/wm/FixedRotationAnimationController;

    if-nez v0, :cond_1

    .line 1680
    new-instance v0, Lcom/android/server/wm/FixedRotationAnimationController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FixedRotationAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationAnimationController:Lcom/android/server/wm/FixedRotationAnimationController;

    .line 1681
    invoke-virtual {v0}, Lcom/android/server/wm/FixedRotationAnimationController;->hide()V

    goto :goto_0

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V

    .line 1685
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishFixedRotationAnimationIfPossible()V

    .line 1687
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 1688
    return-void
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveFocusNow"    # Z

    .line 5930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 5931
    .local v2, "token":Landroid/os/IBinder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 5932
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v6, :cond_0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v6, v6

    .local v6, "protoLogParam0":J
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x23f41862

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v8, v9, v5, v3, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5934
    .end local v6    # "protoLogParam0":J
    :cond_0
    const/4 v3, 0x0

    .local v3, "newFocus":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 5936
    .end local v3    # "newFocus":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 5937
    .local v6, "newFocus":Lcom/android/server/wm/ActivityRecord;
    if-nez v6, :cond_2

    .line 5938
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", displayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WindowManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    :cond_2
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v7, :cond_3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    move/from16 v8, p2

    .local v8, "protoLogParam1":Z
    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v9, v9

    .local v9, "protoLogParam2":J
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x22d6bf9b

    const/16 v13, 0x1c

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v5

    const/4 v15, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v3, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5948
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Z
    .end local v9    # "protoLogParam2":J
    :cond_3
    move-object v3, v6

    .end local v6    # "newFocus":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "newFocus":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v3, :cond_4

    .line 5949
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpScreenCompatInjector;->getCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompat:I

    .line 5953
    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    .line 5954
    .local v6, "changed":Z
    if-eqz p2, :cond_5

    if-eqz v6, :cond_5

    .line 5955
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5958
    :cond_5
    return-void
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4
    .param p1, "newFocus"    # Lcom/android/server/wm/ActivityRecord;

    .line 3550
    if-eqz p1, :cond_1

    .line 3551
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3552
    .local v0, "appDisplay":Lcom/android/server/wm/DisplayContent;
    if-eq v0, p0, :cond_1

    .line 3553
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "none"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3557
    .end local v0    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_2

    .line 3558
    const/4 v0, 0x0

    return v0

    .line 3562
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_3

    .line 3563
    invoke-static {p1}, Lcom/android/server/wm/OpDisplayContentInjector;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 3566
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V

    .line 3568
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 3569
    const/4 v0, 0x1

    return v0
.end method

.method setForcedDensity(II)V
    .locals 2
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .line 2661
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2662
    .local v0, "updateCurrent":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v1, p2, :cond_1

    if-eqz v0, :cond_2

    .line 2663
    :cond_1
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 2666
    :cond_2
    if-eqz v0, :cond_3

    .line 2668
    return-void

    .line 2671
    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne p1, v1, :cond_4

    .line 2672
    const/4 p1, 0x0

    .line 2674
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 2675
    return-void
.end method

.method setForcedScalingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 2679
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2680
    const/4 p1, 0x0

    .line 2683
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 2684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using display scaling mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_2

    const-string v1, "off"

    goto :goto_1

    :cond_2
    const-string v1, "auto"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 2687
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    .line 2688
    return-void
.end method

.method setForcedSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2692
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2693
    .local v0, "clear":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2696
    const/16 v2, 0xc8

    .line 2697
    .local v2, "minSize":I
    const/4 v3, 0x2

    .line 2698
    .local v3, "maxScale":I
    const/16 v4, 0xc8

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2699
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2702
    .end local v2    # "minSize":I
    .end local v3    # "maxScale":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 2706
    if-eqz v0, :cond_2

    .line 2707
    move p2, v1

    move p1, v1

    .line 2709
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 2710
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 5560
    if-nez p1, :cond_0

    .line 5561
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 5563
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getForwardedInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5564
    return-void

    .line 5566
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setForwardedInsets(Landroid/graphics/Insets;)V

    .line 5567
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5568
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5569
    return-void
.end method

.method setInputMethodInputTarget(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 3870
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_1

    .line 3871
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x133cacac

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3872
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 3873
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget()V

    .line 3875
    :cond_1
    return-void
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 3650
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3652
    if-eqz p1, :cond_0

    .line 3653
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 3654
    .local v0, "imePid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3655
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    .line 3654
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onImeWindowSetOnDisplay(II)V

    .line 3657
    .end local v0    # "imePid":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 3658
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;

    move-result-object v1

    const/4 v2, 0x0

    .line 3657
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 3659
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3660
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget()V

    .line 3661
    return-void
.end method

.method setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1348
    .local p3, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1349
    return-void
.end method

.method setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1364
    .local p3, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    .local p4, "imeFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1366
    return-void
.end method

.method setIsSleeping(Z)V
    .locals 0
    .param p1, "asleep"    # Z

    .line 5982
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 5983
    return-void
.end method

.method setLayoutNeeded()V
    .locals 2

    .line 3933
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3935
    return-void
.end method

.method setMaxUiWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 2618
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting max ui width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 2625
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2626
    return-void
.end method

.method setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V
    .locals 3
    .param p1, "controller"    # Landroid/view/IDisplayWindowInsetsController;

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1259
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->access$100(Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 1263
    :cond_0
    if-eqz p1, :cond_1

    .line 1265
    :try_start_0
    invoke-interface {p1}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1266
    new-instance v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    goto :goto_0

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setRotationAnimation(Lcom/android/server/wm/IScreenRotationAnimation;)V
    .locals 1
    .param p1, "screenRotationAnimation"    # Lcom/android/server/wm/IScreenRotationAnimation;

    .line 3056
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/IScreenRotationAnimation;

    if-eqz v0, :cond_0

    .line 3057
    invoke-interface {v0}, Lcom/android/server/wm/IScreenRotationAnimation;->kill()V

    .line 3059
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/IScreenRotationAnimation;

    .line 3060
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 2480
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 2481
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setDisplayWindowingMode(I)V

    .line 2482
    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .locals 2

    .line 5920
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method shouldSleep()Z
    .locals 1

    .line 5924
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getStackCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldWaitForSystemDecorWindowsOnBoot()Z
    .locals 23

    .line 4015
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4019
    return v2

    .line 4022
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4025
    .local v1, "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    const/16 v3, 0x7f8

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4027
    new-instance v5, Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;

    invoke-direct {v5, v0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 4049
    .local v5, "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1

    .line 4051
    return v4

    .line 4056
    :cond_1
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4058
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v2

    .line 4062
    .local v6, "wallpaperEnabled":Z
    :goto_0
    const/16 v7, 0x7e5

    invoke-virtual {v1, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 4063
    .local v7, "haveBootMsg":Z
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 4064
    .local v8, "haveApp":Z
    const/16 v9, 0x7dd

    invoke-virtual {v1, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 4065
    .local v9, "haveWallpaper":Z
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 4067
    .local v3, "haveKeyguard":Z
    sget-boolean v10, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .local v10, "protoLogParam0":Z
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .local v11, "protoLogParam1":Z
    move v12, v7

    .local v12, "protoLogParam2":Z
    move v13, v8

    .local v13, "protoLogParam3":Z
    move v14, v9

    .local v14, "protoLogParam4":Z
    move v15, v6

    .local v15, "protoLogParam5":Z
    move/from16 v16, v3

    .local v16, "protoLogParam6":Z
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v18, 0x0

    aput-object v21, v2, v18

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v17, 0x1

    aput-object v21, v2, v17

    const/16 v21, 0x2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x3

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    move-object/from16 v21, v1

    move-object/from16 v19, v5

    move/from16 v20, v10

    const v1, -0x25da961d

    const/16 v5, 0x3fff

    const/4 v10, 0x0

    .end local v1    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .end local v5    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .end local v10    # "protoLogParam0":Z
    .local v19, "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .local v20, "protoLogParam0":Z
    .local v21, "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    invoke-static {v4, v1, v5, v10, v2}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v11    # "protoLogParam1":Z
    .end local v12    # "protoLogParam2":Z
    .end local v13    # "protoLogParam3":Z
    .end local v14    # "protoLogParam4":Z
    .end local v15    # "protoLogParam5":Z
    .end local v16    # "protoLogParam6":Z
    .end local v19    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .end local v20    # "protoLogParam0":Z
    .end local v21    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .restart local v1    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .restart local v5    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v21, v1

    move-object/from16 v19, v5

    .line 4075
    .end local v1    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .end local v5    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .restart local v19    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .restart local v21    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_4

    if-nez v7, :cond_4

    .line 4076
    const/4 v1, 0x1

    return v1

    .line 4081
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_7

    if-nez v8, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v6, :cond_7

    if-nez v9, :cond_7

    .line 4083
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 4086
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method startKeyguardExitOnNonAppWindows(ZZZ)V
    .locals 4
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "subtle"    # Z

    .line 3994
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3995
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$Ufn2ZjVS0i1L8aeQ8GZMJNJfmcY;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$DisplayContent$Ufn2ZjVS0i1L8aeQ8GZMJNJfmcY;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4007
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4008
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ShellRoot;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ShellRoot;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4007
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4011
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method statusBarVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 4128
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 4129
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 4130
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    .line 4131
    return-void
.end method

.method supportsSystemDecorations()Z
    .locals 2

    .line 5178
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5179
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-eq v0, v1, :cond_1

    .line 5184
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5178
    :goto_0
    return v0
.end method

.method switchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2933
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 2934
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2935
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    .line 2936
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 5658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .param p1, "considerKeyguardState"    # Z

    .line 5671
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5672
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 5673
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 5674
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 5675
    return-object v1

    .line 5671
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5678
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5094
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5095
    return-void
.end method

.method unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;

    .line 5528
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5529
    return-void
.end method

.method updateBaseDisplayMetrics(III)V
    .locals 4
    .param p1, "baseWidth"    # I
    .param p2, "baseHeight"    # I
    .param p3, "baseDensity"    # I

    .line 2630
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2631
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2632
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2634
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_0

    if-le p1, v0, :cond_0

    .line 2635
    mul-int v1, v0, p2

    div-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2636
    mul-int v1, v0, p3

    div-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2637
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2639
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying config restraints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2640
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2648
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    .line 2649
    return-void
.end method

.method updateDisplayInfo()V
    .locals 2

    .line 2527
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 2529
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2530
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2532
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2536
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->updateSizeForResolutionChanged()V

    .line 2538
    return-void
.end method

.method updateDisplayOverrideConfigurationLocked()Z
    .locals 5

    .line 5682
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5683
    .local v0, "values":Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 5685
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5687
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5685
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5689
    invoke-static {v0}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 5690
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 5692
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .locals 9
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "deferResume"    # Z
    .param p4, "result"    # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 5703
    const/4 v0, 0x0

    .line 5704
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 5706
    .local v1, "kept":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 5708
    if-eqz p1, :cond_1

    .line 5709
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_0

    .line 5713
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x2710

    move-object v4, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 5717
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;Z)I

    move-result v2

    move v0, v2

    .line 5721
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 5723
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5724
    nop

    .line 5726
    if-eqz p4, :cond_3

    .line 5727
    iput v0, p4, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5728
    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p4, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5730
    :cond_3
    return v1

    .line 5723
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5724
    throw v2
.end method

.method updateFocusedWindowLocked(IZI)Z
    .locals 20
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z
    .param p3, "topFocusedDisplayId"    # I

    .line 3417
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 3418
    .local v4, "newFocus":Lcom/android/server/wm/WindowState;
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-ne v5, v4, :cond_0

    .line 3419
    return v6

    .line 3421
    :cond_0
    const/4 v5, 0x0

    .line 3422
    .local v5, "imWindowChanged":Z
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3423
    .local v7, "imWindow":Lcom/android/server/wm/WindowState;
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    .line 3424
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3425
    .local v10, "prevTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v11

    .line 3426
    .local v11, "newTarget":Lcom/android/server/wm/WindowState;
    if-eq v10, v11, :cond_1

    move v12, v9

    goto :goto_0

    :cond_1
    move v12, v6

    :goto_0
    move v5, v12

    .line 3428
    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_2

    .line 3430
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3434
    .end local v10    # "prevTarget":Lcom/android/server/wm/WindowState;
    .end local v11    # "newTarget":Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v5, :cond_3

    .line 3435
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v10, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3436
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3437
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 3439
    :cond_3
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x2

    if-eq v10, v4, :cond_4

    .line 3440
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v11, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 3445
    :cond_4
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    const/4 v12, 0x4

    if-eqz v10, :cond_5

    .line 3446
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Changing focus from "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " displayId="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Callers="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3446
    const-string v13, "WindowManager"

    invoke-static {v13, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3450
    :cond_5
    sget-boolean v10, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    int-to-long v14, v14

    .local v14, "protoLogParam2":J
    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v10, v11, v6

    aput-object v13, v11, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v18, 0x2

    aput-object v19, v11, v18

    const/16 v17, 0x3

    aput-object v16, v11, v17

    const/4 v6, 0x0

    const/16 v9, 0x10

    const v12, 0x5793a07e

    invoke-static {v8, v12, v9, v6, v11}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3454
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam1":Ljava/lang/String;
    .end local v14    # "protoLogParam2":J
    .end local v16    # "protoLogParam3":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3455
    .local v6, "oldFocus":Lcom/android/server/wm/WindowState;
    iput-object v4, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3456
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3460
    invoke-static {v0, v4, v6}, Lcom/android/server/wm/OpDisplayContentInjector;->updateFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3463
    if-eqz v4, :cond_7

    .line 3464
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3465
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3467
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3471
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 3475
    :cond_7
    invoke-static {v6, v4}, Lcom/android/server/wm/DisplayContent;->onWindowFocusChanged(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3477
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v8

    invoke-virtual {v8, v6, v4}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v8

    .line 3479
    .local v8, "focusChanged":I
    if-eqz v5, :cond_9

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v6, v9, :cond_9

    .line 3481
    const/4 v9, 0x2

    if-ne v1, v9, :cond_8

    .line 3482
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 3483
    and-int/lit8 v8, v8, -0x2

    goto :goto_2

    .line 3484
    :cond_8
    const/4 v9, 0x3

    if-ne v1, v9, :cond_9

    .line 3487
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3491
    :cond_9
    :goto_2
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_b

    .line 3493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3494
    const/4 v9, 0x2

    if-ne v1, v9, :cond_a

    .line 3495
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_3

    .line 3496
    :cond_a
    const/4 v9, 0x4

    if-ne v1, v9, :cond_b

    .line 3497
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 3501
    :cond_b
    :goto_3
    const/4 v9, 0x1

    if-eq v1, v9, :cond_c

    .line 3503
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v9

    invoke-virtual {v9, v4, v2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 3506
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 3518
    invoke-static {v6}, Lcom/android/server/wm/OpDisplayContentInjector;->shouldScheduleToastTimeout(Lcom/android/server/wm/WindowState;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3519
    invoke-virtual {v0, v6, v4}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3523
    :cond_d
    const/4 v9, 0x2

    if-ne v1, v9, :cond_e

    .line 3524
    iget v9, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3526
    :cond_e
    const/4 v9, 0x1

    return v9
.end method

.method updateImeControlTarget()V
    .locals 4

    .line 3878
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 3879
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController;->onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 3881
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0}, Lcom/android/server/wm/InsetsControlTarget;->asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3882
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3884
    .local v1, "token":Landroid/os/IBinder;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayContent$-xtu90EUfC_AM8Qe5g8vDDI07_E;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$-xtu90EUfC_AM8Qe5g8vDDI07_E;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3887
    return-void
.end method

.method updateLocation(Lcom/android/server/wm/WindowState;II)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 5227
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    .line 5231
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5232
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 5233
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_0

    .line 5234
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked([I)V

    .line 5236
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->notifyLocationInParentDisplayChanged()V

    .line 5238
    :cond_1
    return-void

    .line 5228
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given window is not the parent window of this display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateOrientation(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p3, "forceUpdate"    # Z

    .line 1503
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-nez v0, :cond_0

    .line 1504
    const/4 v0, 0x0

    return-object v0

    .line 1507
    :cond_0
    const/4 v0, 0x0

    .line 1508
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1511
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_1

    .line 1512
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1513
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    .line 1514
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    .line 1517
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    move-object v0, v1

    .line 1518
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1519
    :cond_2
    if-eqz p1, :cond_3

    .line 1525
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 1526
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1527
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1528
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1529
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1530
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1531
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    .line 1532
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v1

    .line 1536
    :cond_3
    :goto_0
    return-object v0
.end method

.method updateOrientation()Z
    .locals 1

    .line 1485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationUnchecked()Z
    .locals 2

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateSystemGestureExclusion()Z
    .locals 7

    .line 5295
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5297
    return v1

    .line 5300
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 5301
    .local v0, "systemGestureExclusion":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 5304
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 5305
    nop

    .line 5322
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5305
    return v1

    .line 5307
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5308
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_2

    .line 5309
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5310
    .local v1, "unrestrictedOrNull":Landroid/graphics/Region;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 5312
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5313
    invoke-interface {v4, v5, v0, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5317
    goto :goto_2

    .line 5315
    :catch_0
    move-exception v4

    .line 5316
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "WindowManager"

    const-string v6, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5310
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5319
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5320
    nop

    .line 5322
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5320
    return v3

    .line 5322
    .end local v1    # "unrestrictedOrNull":Landroid/graphics/Region;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5323
    throw v1
.end method

.method updateSystemGestureExclusionLimit()V
    .locals 2

    .line 2554
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 2556
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 2557
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "globalDiff"    # I

    .line 4153
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4171
    return-void
.end method

.method updateTouchExcludeRegion()V
    .locals 6

    .line 2798
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2799
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v0, :cond_1

    .line 2800
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_1

    .line 2802
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2803
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 2804
    .local v1, "delta":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2805
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2807
    sget-object v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE;

    const-class v3, Lcom/android/server/wm/Task;

    .line 2809
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2807
    invoke-static {v2, p0, v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 2810
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 2811
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2816
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2817
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2822
    .end local v1    # "delta":I
    .end local v2    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2823
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2824
    .local v1, "zoomStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_3

    .line 2825
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 2829
    .end local v1    # "zoomStack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2833
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2834
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2836
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 2837
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2838
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2839
    goto :goto_3

    .line 2841
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2842
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2836
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2844
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayContent;->amendWindowTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2846
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_7

    .line 2847
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2848
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 2849
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2850
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2855
    :cond_7
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_8

    .line 2856
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-static {p0, v1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->amendWindowTapExcludeRegion(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V

    .line 2859
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 2860
    return-void
.end method

.method updateWindowsForAnimator()V
    .locals 2

    .line 4090
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4091
    return-void
.end method
