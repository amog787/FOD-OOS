.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$TaskStackContainers;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;,
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


# instance fields
.field isDefaultDisplay:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

.field mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

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

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

.field final mChangingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCloseToSquareMaxAspectRatio:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
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

.field private mDeferUpdateImeTargetCount:I

.field private mDeferredRemoval:Z

.field mDeferredRotationPauseCount:I

.field private final mDisplay:Landroid/view/Display;

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

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private mDisplayReady:Z

.field private mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

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

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field private mHaveApp:Z

.field private mHaveBootMsg:Z

.field private mHaveKeyguard:Z

.field private mHaveWallpaper:Z

.field private mIgnoreRotationForApps:Z

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field private mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field private mLastDispatchedSystemUiVisibility:I

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field private mLastHasContent:Z

.field private mLastKeyguardForcedOrientation:I

.field private mLastOrientation:I

.field private mLastStatusBarVisibility:I

.field private mLastWallpaperVisible:Z

.field private mLastWindowForcedOrientation:I

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

.field private mOldRotation:I

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayLayer:Landroid/view/SurfaceControl;

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

.field private mRemovingDisplay:Z

.field private mRotation:I

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

.field private final mSession:Landroid/view/SurfaceSession;

.field mShouldOverrideDisplayConfiguration:Z

.field mSkipAppTransitionAnimation:Z

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

.field final mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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

.field private final mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpFloats:[F

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRecoveringMemory:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

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

.field private final mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

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

.field final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCornerRadius:F

.field private mWindowingLayer:Landroid/view/SurfaceControl;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "activityDisplay"    # Lcom/android/server/wm/ActivityDisplay;

    .line 958
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 277
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    .line 280
    new-instance v0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mAboveAppWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 284
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mBelowAppWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 290
    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "mImeWindowsContainers"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 304
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 305
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 306
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 319
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 322
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 323
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 324
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 327
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v2}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 335
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 336
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 342
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 349
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 351
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 356
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 358
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 365
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 368
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 374
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 385
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 397
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mOldRotation:I

    .line 406
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 414
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    .line 422
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    .line 441
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 443
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 469
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    .line 476
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 479
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 480
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 481
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    .line 482
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 483
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 486
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    .line 488
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 496
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 498
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 500
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 501
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 502
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 503
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 505
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 507
    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 509
    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$1;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 514
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 521
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 523
    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 529
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 534
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 547
    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 572
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 580
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    .line 589
    new-instance v2, Lcom/android/server/wm/utils/DisplayRotationUtil;

    invoke-direct {v2}, Lcom/android/server/wm/utils/DisplayRotationUtil;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    .line 612
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    .line 617
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 619
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 624
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 640
    sget-object v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$GuCKVzKP141d6J0gfRAjKtuBJUU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$GuCKVzKP141d6J0gfRAjKtuBJUU;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    .line 661
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 672
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 739
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 794
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 826
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 832
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 836
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 959
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 960
    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_6

    .line 966
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 967
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 968
    new-instance v2, Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, p0}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 969
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 970
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 971
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v2, v4

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 973
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 974
    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->rotation:I

    .line 975
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 976
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 978
    new-instance v2, Lcom/android/server/wm/AppTransition;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p2, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 979
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 980
    new-instance v2, Lcom/android/server/wm/AppTransitionController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/AppTransitionController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 981
    new-instance v2, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 983
    new-instance v2, Landroid/animation/AnimationHandler;

    invoke-direct {v2}, Landroid/animation/AnimationHandler;-><init>()V

    .line 984
    .local v2, "animationHandler":Landroid/animation/AnimationHandler;
    new-instance v4, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v5, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 985
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 987
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PointerEventDispatcher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v4

    .line 989
    .local v4, "inputChannel":Landroid/view/InputChannel;
    new-instance v5, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v5, v4}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 994
    new-instance v5, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v5, v6, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 995
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 996
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 997
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 998
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 999
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v5

    .line 998
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1002
    :cond_1
    new-instance v5, Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1003
    new-instance v5, Lcom/android/server/wm/DisplayRotation;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1004
    iget-object v5, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105009c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 1006
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_2

    .line 1009
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 1011
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v5, :cond_3

    .line 1012
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1014
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v5, :cond_4

    .line 1015
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 1017
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getWindowCornerRadius()F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 1018
    new-instance v5, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1019
    new-instance v5, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {v5, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    .line 1021
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 1022
    invoke-virtual {v5, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 1023
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    .line 1024
    .local v5, "b":Landroid/view/SurfaceControl$Builder;
    const-string v6, "Display Root"

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1025
    const-string v6, "Display Overlays"

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1028
    invoke-virtual {v0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1029
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 1030
    invoke-virtual {v0, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1031
    invoke-virtual {v0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 1032
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1035
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_5

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-static {v0, v6, p0}, Lcom/android/server/wm/OpDisplayContentInjector;->init(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Lcom/android/server/wm/DisplayContent;)V

    .line 1042
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p0}, Lcom/android/server/wm/OpOneHandModeInjector;->initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    .line 1046
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1052
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1055
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1059
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 1062
    new-instance v0, Lcom/android/server/wm/InputMonitor;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1063
    new-instance v0, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1064
    return-void

    .line 961
    .end local v2    # "animationHandler":Landroid/animation/AnimationHandler;
    .end local v4    # "inputChannel":Landroid/view/InputChannel;
    .end local v5    # "b":Landroid/view/SurfaceControl$Builder;
    :cond_6
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

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 962
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

.method static synthetic access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayContent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 253
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 253
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayContent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 253
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayContent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;

    .line 253
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayContent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "x1"    # I

    .line 253
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayContent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "x1"    # I

    .line 253
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method private static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;I)I
    .locals 4
    .param p0, "local"    # Landroid/graphics/Region;
    .param p1, "global"    # Landroid/graphics/Region;
    .param p2, "edge"    # Landroid/graphics/Rect;
    .param p3, "limit"    # I

    .line 5560
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 5561
    .local v0, "r":Landroid/graphics/Region;
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5563
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    .line 5564
    .local v1, "remaining":[I
    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;

    invoke-direct {v3, v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;-><init>([ILandroid/graphics/Region;)V

    invoke-static {v0, v3}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 5575
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5576
    aget v2, v1, v2

    return v2
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Lcom/android/server/wm/WindowToken;

    .line 1092
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1093
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow adding WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to DisplayContent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 1107
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return-void

    .line 1111
    :cond_0
    if-eqz p1, :cond_3

    .line 1115
    if-eqz p2, :cond_2

    .line 1120
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1125
    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch v1, :pswitch_data_0

    .line 1134
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    .line 1127
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1128
    goto :goto_0

    .line 1131
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1138
    :cond_1
    :goto_0
    return-void

    .line 1116
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
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

    .line 1112
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V
    .locals 8
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I

    .line 2012
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2014
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 2016
    .local v7, "width":I
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v7, v1, :cond_0

    .line 2017
    iput v7, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2019
    :cond_0
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v7, v1, :cond_1

    .line 2020
    iput v7, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2022
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2024
    .local v1, "height":I
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v1, v2, :cond_2

    .line 2025
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2027
    :cond_2
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v1, v2, :cond_3

    .line 2028
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 2030
    :cond_3
    return-void
.end method

.method private calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 4018
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 4019
    .local v0, "rotation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4020
    .local v1, "rotated":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 4021
    .local v2, "physWidth":I
    :goto_1
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 4022
    .local v3, "physHeight":I
    :goto_2
    iget v4, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4023
    .local v4, "width":I
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    .line 4024
    .local v5, "left":I
    iget v6, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4025
    .local v6, "height":I
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    .line 4026
    .local v7, "top":I
    add-int v8, v5, v4

    add-int v9, v7, v6

    invoke-virtual {p2, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 4027
    return-void
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 5
    .param p1, "cutout"    # Landroid/view/DisplayCutout;
    .param p2, "rotation"    # I

    .line 1768
    if-eqz p1, :cond_6

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 1771
    :cond_0
    if-nez p2, :cond_1

    .line 1772
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0

    .line 1775
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1776
    .local v0, "rotated":Z
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRotationUtil:Lcom/android/server/wm/utils/DisplayRotationUtil;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1777
    invoke-static {p1, v2, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 1779
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1776
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;

    move-result-object v1

    .line 1781
    .local v1, "newBounds":[Landroid/graphics/Rect;
    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds([Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v2

    .line 1782
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 1783
    :goto_1
    if-eqz v0, :cond_5

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1781
    :goto_2
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    return-object v2

    .line 1769
    .end local v0    # "rotated":Z
    .end local v1    # "newBounds":[Landroid/graphics/Rect;
    :cond_6
    :goto_3
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private canUpdateImeTarget()Z
    .locals 1

    .line 5239
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearLayoutNeeded()V
    .locals 2

    .line 3640
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

    .line 3641
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3642
    return-void
.end method

.method private computeCompatSmallestWidth(ZIIILandroid/view/DisplayCutout;)I
    .locals 13
    .param p1, "rotated"    # Z
    .param p2, "uiMode"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 1916
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1917
    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1919
    .local v9, "tmpDm":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_0

    .line 1920
    move/from16 v0, p4

    .line 1921
    .local v0, "unrotDw":I
    move/from16 v1, p3

    move v10, v0

    move v11, v1

    .local v1, "unrotDh":I
    goto :goto_0

    .line 1923
    .end local v0    # "unrotDw":I
    .end local v1    # "unrotDh":I
    :cond_0
    move/from16 v0, p3

    .line 1924
    .restart local v0    # "unrotDw":I
    move/from16 v1, p4

    move v10, v0

    move v11, v1

    .line 1926
    .end local v0    # "unrotDw":I
    .local v10, "unrotDw":I
    .local v11, "unrotDh":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, v9

    move v5, v10

    move v6, v11

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v12

    .line 1928
    .local v12, "sw":I
    const/4 v2, 0x1

    move v1, v12

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v12

    .line 1930
    const/4 v2, 0x2

    move v1, v12

    move v5, v10

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v12

    .line 1932
    const/4 v2, 0x3

    move v1, v12

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1934
    .end local v12    # "sw":I
    .local v0, "sw":I
    return v0
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V
    .locals 18
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotated"    # Z
    .param p3, "uiMode"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "density"    # F
    .param p7, "outConfig"    # Landroid/content/res/Configuration;

    .line 1959
    move-object/from16 v6, p1

    move-object/from16 v7, p7

    if-eqz p2, :cond_0

    .line 1960
    move/from16 v0, p5

    .line 1961
    .local v0, "unrotDw":I
    move/from16 v1, p4

    move/from16 v16, v0

    move/from16 v17, v1

    .local v1, "unrotDh":I
    goto :goto_0

    .line 1963
    .end local v0    # "unrotDw":I
    .end local v1    # "unrotDh":I
    :cond_0
    move/from16 v0, p4

    .line 1964
    .restart local v0    # "unrotDw":I
    move/from16 v1, p5

    move/from16 v16, v0

    move/from16 v17, v1

    .line 1966
    .end local v0    # "unrotDw":I
    .local v16, "unrotDw":I
    .local v17, "unrotDh":I
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 1967
    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 1968
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 1969
    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 1970
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1971
    const/4 v2, 0x1

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1972
    const/4 v2, 0x2

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1973
    const/4 v2, 0x3

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 1975
    if-nez v7, :cond_1

    .line 1976
    return-void

    .line 1978
    :cond_1
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 1979
    .local v0, "sl":I
    const/4 v10, 0x0

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v8, p0

    move v9, v0

    move/from16 v11, p6

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, p3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1981
    const/4 v10, 0x1

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v9, v0

    move/from16 v12, v17

    move/from16 v13, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1983
    const/4 v10, 0x2

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v9, v0

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1985
    const/4 v10, 0x3

    iget-object v15, v6, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v9, v0

    move/from16 v12, v17

    move/from16 v13, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1987
    iget v1, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p6

    float-to-int v1, v1

    iput v1, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1988
    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 1989
    return-void
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .locals 2
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "rot"    # I
    .param p2, "dw"    # I
    .param p3, "dh"    # I

    .line 4183
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4184
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 4185
    .local v0, "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 4186
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 4187
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 4188
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 4189
    .end local v0    # "tmp":I
    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4190
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 4191
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 4192
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 4193
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 4194
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 4195
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .end local v0    # "tmp":I
    goto :goto_0

    .line 4196
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 4197
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 4198
    .restart local v0    # "tmp":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 4199
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 4200
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 4201
    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4196
    .end local v0    # "tmp":I
    :cond_2
    :goto_0
    nop

    .line 4203
    :goto_1
    return-void
.end method

.method private createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 5613
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    .line 5615
    .local v0, "portalWindowHandle":Landroid/view/InputWindowHandle;
    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 5616
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 5617
    const v1, 0x800028

    iput v1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 5619
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 5620
    iget-object v1, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 5621
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 5622
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 5623
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 5624
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, v0, Landroid/view/InputWindowHandle;->portalToDisplayId:I

    .line 5625
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

    .line 2905
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 2910
    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2911
    invoke-virtual {p5, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2912
    invoke-virtual {p5, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2913
    goto :goto_0

    .line 2915
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2916
    goto :goto_0

    .line 2918
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p5, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2919
    invoke-virtual {p5, p3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2920
    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 2907
    :cond_3
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 2908
    nop

    .line 2923
    :goto_0
    return-void
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .locals 6
    .param p0, "rotation"    # I
    .param p1, "displayWidth"    # F
    .param p2, "displayHeight"    # F
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 2899
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 2901
    return-void
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 2891
    sub-int v0, p1, p0

    .line 2892
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 2893
    :cond_0
    return v0
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 4030
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 4033
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 4034
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 4035
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4036
    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 4037
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4038
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4039
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 4041
    :cond_1
    return-void
.end method

.method private hasPinnedStack()Z
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

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

    .line 1692
    nop

    .line 1693
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1694
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 1695
    .local v7, "uiMode":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p2

    move v3, p3

    move v4, p1

    move v5, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v8

    .line 1697
    .local v8, "w":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1699
    .local v1, "h":I
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1700
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

.method static synthetic lambda$addToGlobalAndConsumeLimit$27([ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "remaining"    # [I
    .param p1, "global"    # Landroid/graphics/Region;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 5565
    const/4 v0, 0x0

    aget v1, p0, v0

    if-gtz v1, :cond_0

    .line 5566
    return-void

    .line 5568
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 5569
    .local v1, "height":I
    aget v2, p0, v0

    if-le v1, v2, :cond_1

    .line 5570
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    aget v3, p0, v0

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 5572
    :cond_1
    aget v2, p0, v0

    sub-int/2addr v2, v1

    aput v2, p0, v0

    .line 5573
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5574
    return-void
.end method

.method static synthetic lambda$canAddToastWindowForUid$14(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3160
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

.method static synthetic lambda$canAddToastWindowForUid$15(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3165
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

.method static synthetic lambda$dumpWindowAnimators$18(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "subPrefix"    # Ljava/lang/String;
    .param p2, "index"    # [I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3685
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3686
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

    .line 3687
    aget v1, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v2

    .line 3688
    return-void
.end method

.method public static synthetic lambda$fiC19lMy-d_-rvza7hhOSw6bOM8(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$hasSecureWindowOnScreen$21(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 3806
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 642
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    :goto_0
    nop

    .line 650
    .local v1, "anim":Lcom/android/server/wm/AnimationAdapter;
    if-eqz v1, :cond_2

    .line 651
    invoke-interface {v1}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v2

    .line 652
    .local v2, "color":I
    if-eqz v2, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 654
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_2

    .line 655
    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 659
    .end local v2    # "color":I
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    return-void

    .line 643
    .end local v1    # "anim":Lcom/android/server/wm/AnimationAdapter;
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic lambda$pointWithinAppWindow$12([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "targetWindowType"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;
    .param p4, "nonArg"    # Landroid/graphics/Rect;

    .line 2567
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2568
    return-void

    .line 2574
    :cond_0
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7eb

    if-ne v1, v2, :cond_1

    .line 2575
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "GestureButtonRegion"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2576
    return-void

    .line 2580
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

    .line 2581
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput v1, p0, v0

    .line 2582
    return-void

    .line 2584
    :cond_2
    return-void
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$19(Lcom/android/server/policy/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3697
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3703
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3704
    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3706
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateRotationUnchecked$9(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 1521
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method static synthetic lambda$updateSystemUiVisibility$22(IILcom/android/server/wm/WindowState;)V
    .locals 6
    .param p0, "visibility"    # I
    .param p1, "globalDiff"    # I
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 3838
    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3839
    .local v0, "curValue":I
    xor-int v1, v0, p0

    and-int/2addr v1, p1

    .line 3840
    .local v1, "diff":I
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, p0, v1

    or-int/2addr v2, v3

    .line 3841
    .local v2, "newValue":I
    if-eq v2, v0, :cond_0

    .line 3842
    iget v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 3843
    iput v2, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3845
    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v3, v3, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v3, :cond_2

    .line 3849
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v4

    const/16 v5, 0x2710

    invoke-static {v5, v3, v4}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 3851
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v3, v4, p0, v2, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V

    .line 3855
    invoke-static {v5}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3860
    .end local v0    # "curValue":I
    .end local v1    # "diff":I
    .end local v2    # "newValue":I
    :cond_2
    goto :goto_0

    .line 3858
    :catch_0
    move-exception v0

    .line 3861
    :goto_0
    return-void
.end method

.method private static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z
    .locals 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "sysUiVisibility"    # I

    .line 5540
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5541
    .local v0, "type":I
    const/16 v1, 0x1002

    .line 5543
    .local v1, "stickyHideNavFlags":I
    and-int/lit16 v2, p1, 0x1002

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1002

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 5545
    .local v2, "stickyHideNav":Z
    :goto_0
    if-nez v2, :cond_1

    const/16 v5, 0x7db

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7d0

    if-eq v0, v5, :cond_1

    .line 5546
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 5545
    :goto_1
    return v3
.end method

.method private performLayoutNoTrace(ZZ)V
    .locals 6
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 4059
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4060
    return-void

    .line 4062
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 4064
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4065
    .local v0, "dw":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4066
    .local v1, "dh":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1

    .line 4067
    const-string v2, "WindowManager"

    const-string v3, "-------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
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

    .line 4072
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 4073
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    .line 4072
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 4076
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 4077
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/DisplayPolicy;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 4079
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 4080
    .local v2, "seq":I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 4081
    :cond_2
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 4085
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4086
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 4090
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_3

    .line 4091
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-static {v5}, Lcom/android/server/wm/OpQuickReplyInjector;->setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 4096
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4100
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    .line 4101
    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4106
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4109
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 4110
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4111
    if-eqz p2, :cond_4

    .line 4112
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4115
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 4116
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;IILandroid/view/DisplayCutout;)I
    .locals 7
    .param p1, "curSize"    # I
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;
    .param p5, "dw"    # I
    .param p6, "dh"    # I
    .param p7, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 1939
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, p5

    move v2, p6

    move v3, p2

    move v4, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 1941
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 1943
    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 1944
    .local v0, "scale":F
    iget v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1945
    .local v1, "size":I
    if-eqz p1, :cond_0

    if-ge v1, p1, :cond_1

    .line 1946
    :cond_0
    move p1, v1

    .line 1948
    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFIIILandroid/view/DisplayCutout;)I
    .locals 7
    .param p1, "curLayout"    # I
    .param p2, "rotation"    # I
    .param p3, "density"    # F
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "uiMode"    # I
    .param p7, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 1994
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    .line 1995
    .local v0, "w":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 1998
    .local v1, "h":I
    move v2, v0

    .line 1999
    .local v2, "longSize":I
    move v3, v1

    .line 2000
    .local v3, "shortSize":I
    if-ge v2, v3, :cond_0

    .line 2001
    move v4, v2

    .line 2002
    .local v4, "tmp":I
    move v2, v3

    .line 2003
    move v3, v4

    .line 2005
    .end local v4    # "tmp":I
    :cond_0
    int-to-float v4, v2

    div-float/2addr v4, p3

    float-to-int v2, v4

    .line 2006
    int-to-float v4, v3

    div-float/2addr v4, p3

    float-to-int v3, v4

    .line 2007
    invoke-static {p1, v2, v3}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v4

    return v4
.end method

.method private resetAnimationBackgroundAnimator()V
    .locals 2

    .line 2682
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2683
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 2682
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2685
    .end local v0    # "stackNdx":I
    :cond_0
    return-void
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "targetWaitingAnim"    # Z

    .line 3558
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_0

    .line 3559
    return-void

    .line 3562
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3563
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 3564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3565
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->onImeTargetChanged(Lcom/android/server/wm/WindowState;)V

    .line 3566
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 3567
    return-void
.end method

.method private skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 2239
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasSplitScreenPrimaryStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2241
    const/4 v0, 0x1

    return v0

    .line 2243
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .locals 12

    .line 2370
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 2371
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 2372
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

    .line 2373
    .local v3, "rotated":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_2

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_2
    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2374
    .local v4, "newWidth":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_3

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_3

    :cond_3
    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2375
    .local v5, "newHeight":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2376
    .local v6, "newDensity":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2378
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

    .line 2381
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

    .line 2383
    .local v8, "displayMetricsChanged":Z
    :goto_5
    if-eqz v8, :cond_c

    .line 2385
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

    .line 2387
    .local v9, "isDisplaySizeForced":Z
    :goto_7
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v10, v11, :cond_8

    move v1, v2

    .line 2390
    .local v1, "isDisplayDensityForced":Z
    :cond_8
    if-eqz v9, :cond_9

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_8

    :cond_9
    move v2, v4

    .line 2391
    :goto_8
    if-eqz v9, :cond_a

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_9

    :cond_a
    move v10, v5

    .line 2392
    :goto_9
    if-eqz v1, :cond_b

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_a

    :cond_b
    move v11, v6

    .line 2390
    :goto_a
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2395
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2396
    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2397
    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2398
    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2399
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2401
    .end local v1    # "isDisplayDensityForced":Z
    .end local v9    # "isDisplaySizeForced":Z
    :cond_c
    return-void
.end method

.method private updateBounds()V
    .locals 3

    .line 4003
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 4004
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setBounds(Landroid/graphics/Rect;)I

    .line 4005
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 4006
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 4007
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4008
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 4009
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 4013
    :cond_0
    return-void
.end method

.method private updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .locals 18
    .param p1, "uiMode"    # I
    .param p2, "outConfig"    # Landroid/content/res/Configuration;

    .line 1710
    move-object/from16 v8, p0

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v9

    :cond_1
    :goto_0
    move v10, v1

    .line 1711
    .local v10, "rotated":Z
    if-eqz v10, :cond_2

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    move v11, v0

    .line 1712
    .local v11, "dw":I
    if-eqz v10, :cond_3

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    move v12, v0

    .line 1715
    .local v12, "dh":I
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {v8, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v13

    .line 1716
    .local v13, "wmDisplayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {v13}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    .line 1718
    .local v14, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v4, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    move v2, v11

    move v3, v12

    move/from16 v5, p1

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v15

    .line 1720
    .local v15, "appWidth":I
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v4, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 1722
    .local v7, "appHeight":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1723
    iput v11, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1724
    iput v12, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1725
    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1726
    iput v15, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 1727
    iput v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 1728
    iget-boolean v1, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 1729
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1732
    :cond_4
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v14}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v6

    goto :goto_3

    :cond_5
    move-object v1, v14

    :goto_3
    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1733
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1734
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_6

    .line 1735
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_4

    .line 1737
    :cond_6
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 1740
    :goto_4
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v3, p1

    move v4, v11

    move/from16 v16, v5

    move v5, v12

    move-object/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "appHeight":I
    .local v16, "appHeight":I
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 1747
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    if-eqz v0, :cond_7

    .line 1748
    iget-object v6, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object/from16 v17, v6

    goto :goto_5

    :cond_7
    nop

    :goto_5
    move-object/from16 v0, v17

    .line 1749
    .local v0, "overrideDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1752
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1754
    iget-boolean v1, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_8

    .line 1755
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v8, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 1759
    :cond_8
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v1
.end method

.method private updateImeParent()V
    .locals 4

    .line 3572
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3574
    .local v0, "shouldAttachToDisplay":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 3575
    .local v1, "newParent":Landroid/view/SurfaceControl;
    :goto_1
    if-eqz v1, :cond_2

    .line 3576
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3577
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3579
    :cond_2
    return-void
.end method

.method private updateOrientationFromAppTokens(Z)Z
    .locals 2
    .param p1, "forceUpdate"    # Z

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v0

    .line 1418
    .local v0, "req":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1423
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1419
    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1420
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->setCurrentOrientation(I)V

    .line 1421
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v1

    return v1
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .locals 2
    .param p1, "visibility"    # I

    .line 3817
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_0

    .line 3818
    const/4 v0, 0x0

    return v0

    .line 3820
    :cond_0
    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    .line 3827
    .local v0, "globalDiff":I
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    .line 3828
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_1

    .line 3829
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 3831
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    .line 3832
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p2, "index"    # I

    .line 2535
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

    .line 2530
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    .line 253
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 0

    .line 253
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method adjustForImeIfNeeded()V
    .locals 19

    .line 2804
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2805
    .local v7, "imeWin":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2806
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v8, v3

    .line 2807
    .local v8, "imeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    .line 2808
    .local v9, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v9, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v10, v3

    .line 2809
    .local v10, "dockVisible":Z
    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move-object v11, v3

    .line 2810
    .local v11, "topDockedTask":Lcom/android/server/wm/Task;
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    .line 2811
    .local v12, "imeTargetStack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_3

    if-eqz v12, :cond_3

    .line 2812
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    move v13, v3

    .line 2813
    .local v13, "imeDockSide":I
    const/4 v3, 0x2

    if-ne v13, v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    move v14, v3

    .line 2814
    .local v14, "imeOnTop":Z
    const/4 v3, 0x4

    if-ne v13, v3, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v1

    :goto_5
    move v15, v4

    .line 2815
    .local v15, "imeOnBottom":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v6

    .line 2816
    .local v6, "imeHeight":I
    if-eqz v8, :cond_6

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2817
    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v4

    if-eq v6, v4, :cond_6

    move v4, v2

    goto :goto_6

    :cond_6
    move v4, v1

    :goto_6
    move/from16 v16, v4

    .line 2822
    .local v16, "imeHeightChanged":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v11, :cond_7

    if-eqz v15, :cond_7

    .line 2823
    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2824
    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v4, v5, :cond_7

    goto :goto_7

    :cond_7
    move v4, v1

    goto :goto_8

    :cond_8
    :goto_7
    move v4, v2

    :goto_8
    move/from16 v17, v4

    .line 2832
    .local v17, "dockMinimized":Z
    if-eqz v8, :cond_10

    if-eqz v10, :cond_10

    if-nez v14, :cond_a

    if-eqz v15, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v18, v6

    goto :goto_e

    :cond_a
    :goto_9
    if-nez v17, :cond_10

    .line 2833
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_a
    if-ltz v4, :cond_f

    .line 2834
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    .line 2835
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    :cond_b
    move v2, v1

    .line 2836
    .local v2, "isDockedOnBottom":Z
    :goto_b
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_e

    if-nez v15, :cond_c

    if-eqz v2, :cond_e

    .line 2837
    :cond_c
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2838
    if-eqz v15, :cond_d

    if-eqz v16, :cond_d

    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    move v3, v1

    :goto_c
    invoke-virtual {v5, v7, v3}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_d

    .line 2840
    :cond_e
    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2833
    .end local v2    # "isDockedOnBottom":Z
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_d
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x4

    goto :goto_a

    .line 2843
    .end local v4    # "i":I
    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v2, v15

    move-object v5, v7

    move/from16 v18, v6

    .end local v6    # "imeHeight":I
    .local v18, "imeHeight":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_11

    .line 2832
    .end local v18    # "imeHeight":I
    .restart local v6    # "imeHeight":I
    :cond_10
    move/from16 v18, v6

    .line 2846
    .end local v6    # "imeHeight":I
    .restart local v18    # "imeHeight":I
    :goto_e
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_12

    .line 2847
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 2848
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v10, :cond_11

    move v5, v3

    goto :goto_10

    :cond_11
    move v5, v1

    :goto_10
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2846
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 2850
    .end local v2    # "i":I
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v10

    move-object v5, v7

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    .line 2856
    :goto_11
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-static {v8, v1}, Lcom/android/server/vcaction/OpVerificationCodeInjector;->notifyImeLayoutChanged(ZLcom/android/server/wm/DisplayFrames;)V

    .line 2861
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityManagerServiceInjector;->setInputMethodVisible(Z)V

    .line 2863
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    move/from16 v2, v18

    .end local v18    # "imeHeight":I
    .local v2, "imeHeight":I
    invoke-virtual {v1, v8, v2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    .line 2864
    return-void
.end method

.method amendWindowTapExcludeRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "inOutRegion"    # Landroid/graphics/Region;

    .line 2668
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2669
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2670
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2668
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2672
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method animateForIme(FFF)Z
    .locals 8
    .param p1, "interpolatedValue"    # F
    .param p2, "animationTarget"    # F
    .param p3, "dividerAnimationTarget"    # F

    .line 2753
    const/4 v0, 0x0

    .line 2755
    .local v0, "updated":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2756
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2757
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2758
    goto :goto_2

    .line 2761
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_1

    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_1

    cmpl-float v5, p3, v5

    if-nez v5, :cond_1

    .line 2762
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2763
    const/4 v0, 0x1

    goto :goto_1

    .line 2765
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2766
    invoke-virtual {v5, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 2767
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 2768
    invoke-virtual {v5, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 2769
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v5, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v6, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2774
    :goto_1
    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    .line 2775
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    .line 2755
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2779
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 5079
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 5080
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_0

    .line 5082
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 5085
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 5087
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 5088
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 5089
    return-void
.end method

.method applyRotationLocked(II)V
    .locals 11
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I

    .line 1594
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayRotation;->setRotation(I)V

    .line 1595
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isRotatingSeamlessly()Z

    move-result v0

    .line 1602
    .local v0, "rotateSeamlessly":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1604
    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 1610
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    .line 1614
    if-eqz v2, :cond_1

    .line 1615
    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->hasScreenshot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const-wide/16 v6, 0x2710

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1617
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1616
    move-object v3, v2

    move v5, p2

    invoke-interface/range {v3 .. v10}, Lcom/android/server/wm/IScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1623
    :cond_1
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$3g7y7M5XrDR3cz8tOp9f3pwWbyQ;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$3g7y7M5XrDR3cz8tOp9f3pwWbyQ;-><init>(Lcom/android/server/wm/DisplayContent;IIZ)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1628
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1629
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 1631
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$-XeeexVnAosqA0zfHVCT_Txqwl8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$-XeeexVnAosqA0zfHVCT_Txqwl8;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1641
    if-eqz v0, :cond_2

    .line 1642
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x36

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, p0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1646
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1647
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 1648
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 1649
    .local v3, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget v4, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v4, v5, :cond_3

    .line 1651
    :try_start_0
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    goto :goto_2

    .line 1652
    :catch_0
    move-exception v4

    .line 1646
    .end local v3    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1660
    .end local v1    # "i":I
    :cond_4
    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_5

    .line 1661
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1663
    :cond_5
    return-void
.end method

.method applySurfaceChangesTransaction(Z)V
    .locals 9
    .param p1, "recoveringMemory"    # Z

    .line 3906
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 3908
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 3910
    const/4 v1, 0x0

    .line 3912
    .local v1, "repeats":I
    :cond_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3913
    const/4 v3, 0x6

    const-string v4, "WindowManager"

    const-wide/16 v5, 0x20

    if-le v1, v3, :cond_1

    .line 3914
    const-string v3, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 3916
    goto/16 :goto_2

    .line 3919
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v7, "On entry to LockedInner"

    invoke-virtual {v0, v7, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 3922
    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-eqz v3, :cond_3

    .line 3923
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 3926
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 3927
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_4

    const-string v3, "Computing new config from layout"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3929
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3930
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 3934
    :cond_5
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_6

    .line 3935
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3939
    :cond_6
    const/4 v3, 0x0

    if-ge v1, v7, :cond_8

    .line 3940
    if-ne v1, v2, :cond_7

    move v4, v2

    goto :goto_0

    :cond_7
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_1

    .line 3942
    :cond_8
    const-string v7, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :goto_1
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3948
    const-string v3, "applyPostLayoutPolicy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3950
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 3951
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3952
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3954
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3955
    nop

    .line 3956
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v4, "after finishPostLayoutPolicyLw"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 3958
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 3959
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v3, :cond_0

    .line 3961
    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 3963
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    .line 3965
    const-string v3, "applyWindowSurfaceChanges"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3967
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3969
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3970
    nop

    .line 3971
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 3975
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_a

    .line 3976
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 3977
    invoke-static {v3}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateGlobalModeId(I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 3981
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 3982
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v6, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 3988
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    .line 3989
    .local v2, "wallpaperVisible":Z
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v2, v3, :cond_b

    .line 3990
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 3991
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3994
    :cond_b
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 3995
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 3998
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    .line 3999
    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_3

    .line 4000
    :cond_c
    return-void

    .line 3969
    .end local v2    # "wallpaperVisible":Z
    :catchall_0
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 3954
    :catchall_1
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5109
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5110
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5111
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5113
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 5114
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x1

    .line 5133
    .local v2, "needAssignIme":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 5134
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isAppAnimating()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5135
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5136
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 5140
    const/4 v2, 0x0

    .line 5145
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5146
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5147
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    .line 5148
    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5147
    :goto_0
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 5149
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5150
    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 5162
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 5163
    return-void
.end method

.method assignStackOrdering()V
    .locals 2

    .line 5210
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 5211
    return-void
.end method

.method assignWindowLayers(Z)V
    .locals 3
    .param p1, "setLayoutNeeded"    # Z

    .line 3367
    const-wide/16 v0, 0x20

    const-string v2, "assignWindowLayers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3369
    if-eqz p1, :cond_0

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3377
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 3378
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3379
    return-void
.end method

.method beginImeAdjustAnimation()V
    .locals 3

    .line 2795
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2796
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2797
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2798
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 2795
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2801
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 2
    .param p1, "rotation"    # I

    .line 1763
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method calculateSystemGestureExclusion()Landroid/graphics/Region;
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5458
    move-object/from16 v9, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v10

    .line 5459
    .local v10, "unhandled":Landroid/graphics/Region;
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v1, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v0, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 5461
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 5462
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v11

    .line 5463
    .local v11, "leftEdge":Landroid/graphics/Rect;
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 5464
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v12

    .line 5466
    .local v12, "rightEdge":Landroid/graphics/Rect;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v13

    .line 5467
    .local v13, "global":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v14

    .line 5468
    .local v14, "touchableRegion":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .line 5469
    .local v15, "local":Landroid/graphics/Region;
    const/4 v0, 0x2

    new-array v5, v0, [I

    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    aput v0, v5, v2

    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v8, 0x1

    aput v0, v5, v8

    .line 5481
    .local v5, "remainingLeftRight":[I
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move-object v4, v15

    move-object v6, v13

    move-object/from16 v16, v13

    move-object v13, v7

    .end local v13    # "global":Landroid/graphics/Region;
    .local v16, "global":Landroid/graphics/Region;
    move-object v7, v11

    move-object/from16 v17, v11

    move v11, v8

    .end local v11    # "leftEdge":Landroid/graphics/Rect;
    .local v17, "leftEdge":Landroid/graphics/Rect;
    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v13, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5529
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 5530
    invoke-virtual {v14}, Landroid/graphics/Region;->recycle()V

    .line 5531
    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    .line 5532
    return-object v16
.end method

.method canAddToastWindowForUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 3159
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3161
    .local v0, "focusedWindowForUid":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3162
    return v1

    .line 3164
    :cond_0
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3167
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 2

    .line 2737
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    .line 2739
    .local v0, "stillDeferringRemoval":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_0

    .line 2740
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2741
    const/4 v1, 0x0

    return v1

    .line 2743
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method checkWaitingForWindows()Z
    .locals 6

    .line 3711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    .line 3712
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 3713
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    .line 3714
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    .line 3716
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3735
    .local v2, "visibleWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 3737
    return v1

    .line 3742
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3744
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 3748
    .local v3, "wallpaperEnabled":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "******** booted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveWall="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " wallEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " haveKeyguard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    if-nez v4, :cond_4

    .line 3758
    return v1

    .line 3763
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    if-nez v4, :cond_7

    .line 3765
    :cond_6
    return v1

    .line 3768
    :cond_7
    return v0
.end method

.method clearImeAdjustAnimation()Z
    .locals 5

    .line 2783
    const/4 v0, 0x0

    .line 2784
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2785
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2786
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2787
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 2788
    const/4 v0, 0x1

    .line 2784
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2791
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method computeImeParent()Landroid/view/SurfaceControl;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3590
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3591
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3594
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3595
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 3599
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .locals 11
    .param p1, "updateImeTarget"    # Z

    .line 3452
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "Moving IM target from "

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v0, :cond_2

    .line 3454
    if-eqz p1, :cond_1

    .line 3455
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

    .line 3457
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3459
    :cond_1
    return-object v2

    .line 3462
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3463
    .local v0, "curTarget":Lcom/android/server/wm/WindowState;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3464
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_3

    const-string v1, "Defer updating IME target"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_3
    return-object v0

    .line 3471
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 3472
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 3478
    .local v4, "target":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 3479
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3480
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_5

    .line 3481
    invoke-virtual {v5, v4}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 3482
    .local v6, "betterTarget":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_5

    .line 3483
    move-object v4, v6

    .line 3488
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "betterTarget":Lcom/android/server/wm/WindowState;
    :cond_5
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proposed new IME target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3488
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    :cond_6
    if-eqz v0, :cond_8

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v5, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3494
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3495
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_7

    const-string v1, "Not changing target till current window is closing and not removed"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    :cond_7
    return-object v0

    .line 3500
    :cond_8
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Desired input method target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " updateImeTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    :cond_9
    const/4 v5, 0x4

    const-string v6, " Callers="

    const-string v7, ""

    if-nez v4, :cond_d

    .line 3504
    if-eqz p1, :cond_c

    .line 3505
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to null."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_a

    .line 3507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_a
    nop

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3505
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3511
    :cond_c
    return-object v2

    .line 3514
    :cond_d
    if-eqz p1, :cond_14

    .line 3515
    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3516
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    if-eqz v2, :cond_11

    .line 3521
    const/4 v8, 0x0

    .line 3522
    .local v8, "highestTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 3523
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 3526
    :cond_f
    if-eqz v8, :cond_11

    .line 3527
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " animating="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3528
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3527
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    :cond_10
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 3533
    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3534
    return-object v8

    .line 3539
    .end local v8    # "highestTarget":Lcom/android/server/wm/WindowState;
    :cond_11
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3540
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_12
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3539
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    :cond_13
    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 3544
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_14
    return-object v4
.end method

.method computeImeTargetIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "candidate"    # Lcom/android/server/wm/AppWindowToken;

    .line 3552
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_0

    .line 3553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3555
    :cond_0
    return-void
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .locals 21
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1791
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v0, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v6, v0, v7}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v8

    .line 1792
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v8, v0}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/view/DisplayInfo;Landroid/graphics/Rect;)V

    .line 1793
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1795
    iget v15, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1796
    .local v15, "dw":I
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1797
    .local v5, "dh":I
    const/4 v4, 0x2

    const/4 v3, 0x1

    if-gt v15, v5, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput v0, v7, Landroid/content/res/Configuration;->orientation:I

    .line 1798
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 1799
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 1800
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v8, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1802
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1803
    .local v2, "density":F
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v12, v8, Landroid/view/DisplayInfo;->rotation:I

    iget v13, v7, Landroid/content/res/Configuration;->uiMode:I

    iget-object v14, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1804
    move v10, v15

    move v11, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1806
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v12, v8, Landroid/view/DisplayInfo;->rotation:I

    iget v13, v7, Landroid/content/res/Configuration;->uiMode:I

    iget-object v14, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1807
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1810
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v10, v8, Landroid/view/DisplayInfo;->rotation:I

    iget-object v13, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v14, v6, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move v11, v15

    move v12, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 1812
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 1813
    .local v9, "leftInset":I
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1815
    .local v10, "topInset":I
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v8, Landroid/view/DisplayInfo;->appWidth:I

    add-int/2addr v1, v9

    iget v11, v8, Landroid/view/DisplayInfo;->appHeight:I

    add-int/2addr v11, v10

    invoke-virtual {v0, v9, v10, v1, v11}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 1818
    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    const/4 v11, 0x3

    if-eq v0, v3, :cond_2

    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 1821
    .local v1, "rotated":Z
    :goto_2
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0x301

    .line 1822
    iget v13, v8, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_3

    .line 1823
    const/16 v13, 0x200

    goto :goto_3

    .line 1824
    :cond_3
    const/16 v13, 0x100

    :goto_3
    or-int/2addr v0, v13

    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 1826
    iget v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v13

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1827
    iget v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v13

    float-to-int v0, v0

    iput v0, v7, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1828
    iget v13, v7, Landroid/content/res/Configuration;->uiMode:I

    iget-object v14, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v0, p0

    move/from16 v16, v2

    .end local v2    # "density":F
    .local v16, "density":F
    move v2, v13

    move v13, v3

    move v3, v15

    move v12, v4

    move v4, v5

    move/from16 v18, v5

    .end local v5    # "dh":I
    .local v18, "dh":I
    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, v7, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1830
    iget v0, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 1832
    nop

    .line 1833
    invoke-virtual {v8}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1834
    const/16 v0, 0x8

    goto :goto_4

    .line 1835
    :cond_4
    const/4 v0, 0x4

    .line 1836
    :goto_4
    invoke-virtual {v8}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1837
    move v2, v12

    goto :goto_5

    .line 1838
    :cond_5
    move v2, v13

    :goto_5
    or-int/2addr v0, v2

    iput v0, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 1842
    iput v13, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 1843
    iput v13, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 1844
    iput v13, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1846
    const/4 v0, 0x0

    .line 1847
    .local v0, "keyboardPresence":I
    const/4 v2, 0x0

    .line 1848
    .local v2, "navigationPresence":I
    iget-object v3, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v3

    .line 1849
    .local v3, "devices":[Landroid/view/InputDevice;
    if-eqz v3, :cond_6

    array-length v4, v3

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 1850
    .local v4, "len":I
    :goto_6
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v4, :cond_10

    .line 1851
    aget-object v14, v3, v5

    .line 1853
    .local v14, "device":Landroid/view/InputDevice;
    invoke-virtual {v14}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1854
    move/from16 v20, v1

    goto :goto_c

    .line 1859
    :cond_7
    iget-object v12, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v14}, Landroid/view/InputDevice;->getId()I

    move-result v13

    .line 1860
    iget v11, v8, Landroid/view/DisplayInfo;->type:I

    move/from16 v20, v1

    .end local v1    # "rotated":Z
    .local v20, "rotated":Z
    const/4 v1, 0x5

    if-ne v11, v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    iget v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1859
    :goto_8
    invoke-virtual {v12, v13, v1}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1861
    goto :goto_c

    .line 1864
    :cond_9
    invoke-virtual {v14}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 1865
    .local v1, "sources":I
    invoke-virtual {v14}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1866
    const/4 v11, 0x2

    goto :goto_9

    :cond_a
    const/4 v11, 0x1

    .line 1868
    .local v11, "presenceFlag":I
    :goto_9
    iget-object v12, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v12, :cond_b

    .line 1869
    and-int/lit16 v12, v1, 0x1002

    const/16 v13, 0x1002

    if-ne v12, v13, :cond_c

    .line 1870
    const/4 v12, 0x3

    iput v12, v7, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_a

    .line 1873
    :cond_b
    const/4 v12, 0x1

    iput v12, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 1876
    :cond_c
    :goto_a
    const v12, 0x10004

    and-int v13, v1, v12

    if-ne v13, v12, :cond_d

    .line 1877
    const/4 v12, 0x3

    iput v12, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1878
    or-int/2addr v2, v11

    const/4 v12, 0x2

    goto :goto_b

    .line 1879
    :cond_d
    const/4 v12, 0x3

    and-int/lit16 v13, v1, 0x201

    const/16 v12, 0x201

    if-ne v13, v12, :cond_e

    iget v12, v7, Landroid/content/res/Configuration;->navigation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 1881
    const/4 v12, 0x2

    iput v12, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1882
    or-int/2addr v2, v11

    goto :goto_b

    .line 1879
    :cond_e
    const/4 v12, 0x2

    .line 1885
    :goto_b
    invoke-virtual {v14}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v13

    if-ne v13, v12, :cond_f

    .line 1886
    iput v12, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 1887
    or-int/2addr v0, v11

    .line 1850
    .end local v1    # "sources":I
    .end local v11    # "presenceFlag":I
    .end local v14    # "device":Landroid/view/InputDevice;
    :cond_f
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_7

    .end local v20    # "rotated":Z
    .local v1, "rotated":Z
    :cond_10
    move/from16 v20, v1

    .line 1891
    .end local v1    # "rotated":Z
    .end local v5    # "i":I
    .restart local v20    # "rotated":Z
    iget v1, v7, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_11

    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v1, :cond_11

    .line 1892
    const/4 v1, 0x2

    iput v1, v7, Landroid/content/res/Configuration;->navigation:I

    .line 1893
    or-int/lit8 v2, v2, 0x1

    .line 1898
    :cond_11
    iget v1, v7, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_12

    const/16 v17, 0x1

    goto :goto_d

    :cond_12
    const/16 v17, 0x0

    :goto_d
    move/from16 v1, v17

    .line 1899
    .local v1, "hardKeyboardAvailable":Z
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v1, v5, :cond_13

    .line 1900
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v5, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 1901
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x16

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1902
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1905
    :cond_13
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1908
    const/4 v5, 0x1

    iput v5, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1909
    iput v5, v7, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1910
    iput v5, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1911
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5, v7, v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 1912
    return-void
.end method

.method configureDisplayPolicy()V
    .locals 9

    .line 1666
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1667
    .local v0, "width":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1670
    .local v1, "height":I
    if-le v0, v1, :cond_0

    .line 1671
    move v2, v1

    .line 1672
    .local v2, "shortSize":I
    move v3, v0

    .local v3, "longSize":I
    goto :goto_0

    .line 1674
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_0
    move v2, v0

    .line 1675
    .restart local v2    # "shortSize":I
    move v3, v1

    .line 1678
    .restart local v3    # "longSize":I
    :goto_0
    mul-int/lit16 v4, v2, 0xa0

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    div-int/2addr v4, v5

    .line 1679
    .local v4, "shortSizeDp":I
    mul-int/lit16 v6, v3, 0xa0

    div-int/2addr v6, v5

    .line 1681
    .local v6, "longSizeDp":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 1682
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, v0, v1, v4, v6}, Lcom/android/server/wm/DisplayRotation;->configure(IIII)V

    .line 1684
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 1685
    invoke-virtual {p0, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    .line 1684
    invoke-virtual {v5, v7, v8}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1688
    const/4 v5, 0x0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/wm/DisplayContent;->isNonDecorDisplayCloseToSquare(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    .line 1689
    return-void
.end method

.method continueUpdateImeTarget()V
    .locals 2

    .line 5225
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    .line 5226
    return-void

    .line 5229
    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5230
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_1

    .line 5231
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5233
    :cond_1
    return-void
.end method

.method deferUpdateImeTarget()V
    .locals 1

    .line 5217
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5218
    return-void
.end method

.method destroyLeakedSurfaces()Z
    .locals 2

    .line 3401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3402
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3426
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2989
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2990
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display: mDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2992
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2993
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2994
    const-string v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2995
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_1

    .line 2998
    :cond_0
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2999
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3000
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3002
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_2

    .line 3003
    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    :cond_2
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3006
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3007
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3008
    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3009
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3010
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3011
    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3012
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3013
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3014
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3015
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

    .line 3017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTouchExcludeRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3020
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3021
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3022
    const-string v2, "mDeferredRotationPauseCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3024
    const-string v2, "  mCurrentFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3025
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v2, v3, :cond_3

    .line 3026
    const-string v2, "  mLastFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3028
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "    "

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-lez v2, :cond_5

    .line 3029
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3030
    const-string v2, "  Windows losing focus:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 3032
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3033
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 3034
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3035
    if-eqz p3, :cond_4

    .line 3036
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3039
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3031
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3043
    .end local v2    # "i":I
    :cond_5
    const-string v2, "  mFocusedApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3044
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    if-eqz v2, :cond_6

    .line 3045
    const-string v2, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3046
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3050
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3052
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3053
    const-string v2, "mSystemGestureExclusion="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3054
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 3055
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 3057
    :cond_7
    const-string v2, "<no lstnrs>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Application tokens in top down Z order:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "stackNdx":I
    :goto_3
    if-ltz v2, :cond_8

    .line 3063
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 3064
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p3}, Lcom/android/server/wm/TaskStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3062
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 3067
    .end local v2    # "stackNdx":I
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3068
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3069
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3070
    const-string v2, "  Exiting tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_9

    .line 3072
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 3073
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    const-string v6, "  Exiting #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3074
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3075
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 3076
    invoke-virtual {v5, p1, v3, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3071
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 3080
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3083
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 3084
    .local v2, "homeStack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_a

    .line 3085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "homeStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 3088
    .local v3, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_b

    .line 3089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "pinnedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 3092
    .local v4, "splitScreenPrimaryStack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_c

    .line 3093
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "splitScreenPrimaryStack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    :cond_c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3097
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3098
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3099
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3101
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3102
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3103
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3104
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3105
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3106
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3107
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3108
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3109
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3110
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3111
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 3649
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3650
    return-void

    .line 3652
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

    .line 3653
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3654
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_2

    .line 3655
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 3656
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3658
    if-eqz p2, :cond_1

    .line 3659
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 3660
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3662
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3664
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :goto_1
    goto :goto_0

    .line 3666
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3667
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3668
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3669
    const-string v1, "  mOpeningApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3671
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3672
    const-string v1, "  mClosingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3674
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3675
    const-string v1, "  mChangingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3679
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3680
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "subPrefix"    # Ljava/lang/String;

    .line 3683
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3684
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3689
    return-void
.end method

.method executeAppTransition()V
    .locals 2

    .line 5284
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5285
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 5286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execute app transition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 5292
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5286
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 5296
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5298
    :cond_1
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 2209
    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 3194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3196
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3200
    invoke-static {}, Lcom/android/server/wm/OpUtilInjector;->onFindFocusedWindow()V

    .line 3203
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1

    .line 3204
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "findFocusedWindow: No focusable windows."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    :cond_0
    return-object v0

    .line 3207
    :cond_1
    return-object v1
.end method

.method findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "topFocusedDisplayId"    # I

    .line 3189
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3190
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3189
    :goto_1
    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2596
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 2597
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    .line 2598
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 2599
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2600
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2601
    return-object v2

    .line 2606
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickReply: skip resize for stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    return-object v2

    .line 2611
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3, p1, p2, v0, v2}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    .line 2612
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v2, :cond_2

    .line 2613
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v2

    .line 2598
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2616
    .end local v1    # "stackNdx":I
    :cond_3
    return-object v2
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

    .line 2278
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2250
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 2251
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2252
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2253
    .local v2, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2254
    goto :goto_1

    .line 2257
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2258
    return v0

    .line 2251
    .end local v2    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_4

    .line 2262
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 2263
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 2264
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2265
    .local v3, "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2266
    goto :goto_3

    .line 2269
    :cond_4
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2270
    return v0

    .line 2263
    .end local v3    # "child":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2274
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1085
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_0

    .line 1086
    const/4 v1, 0x0

    return-object v1

    .line 1088
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .line 1072
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .locals 1

    .line 2081
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 2100
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .locals 1

    .line 5243
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method getLastHasContent()Z
    .locals 1

    .line 5250
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return v0
.end method

.method getLastOrientation()I
    .locals 1

    .line 1250
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .locals 1

    .line 1254
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLocationInParentWindow()Landroid/graphics/Point;
    .locals 1

    .line 5416
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 5644
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 5645
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 5647
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 3119
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

    .line 4045
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ge v0, v1, :cond_0

    .line 4046
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4045
    :goto_0
    return v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "top"    # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3603
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3604
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3608
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3611
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3631
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getOldRotation()I
    .locals 1

    .line 1239
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mOldRotation:I

    return v0
.end method

.method getOrientation()I
    .locals 5

    .line 2283
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2285
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIgnoreRotationForApps:Z

    if-eqz v1, :cond_0

    .line 2286
    const/4 v1, 0x2

    return v1

    .line 2289
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_4

    .line 2290
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v2, -0x1

    const-string v3, "Display id="

    const-string v4, "WindowManager"

    if-eq v1, v2, :cond_2

    .line 2291
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is frozen, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_1
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v1

    .line 2298
    :cond_2
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2304
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is frozen while keyguard locked, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v1

    .line 2309
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getOrientation()I

    move-result v1

    .line 2310
    .local v1, "orientation":I
    const/4 v2, -0x2

    if-eq v1, v2, :cond_5

    .line 2311
    return v1

    .line 2316
    .end local v1    # "orientation":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v1

    return v1
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 5390
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 2124
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .locals 1

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getPreferredOptionsPanelGravity()I
    .locals 9

    .line 2050
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 2051
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const v3, 0x800053

    const/16 v4, 0x55

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x51

    if-ge v1, v2, :cond_3

    .line 2053
    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    .line 2056
    return v8

    .line 2062
    :cond_0
    return v3

    .line 2060
    :cond_1
    return v8

    .line 2058
    :cond_2
    return v4

    .line 2067
    :cond_3
    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    .line 2070
    return v4

    .line 2076
    :cond_4
    return v8

    .line 2074
    :cond_5
    return v3

    .line 2072
    :cond_6
    return v8
.end method

.method getRotation()I
    .locals 1

    .line 1232
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 5045
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .locals 2

    .line 2107
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2108
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 2120
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 2501
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2502
    return-void
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2144
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStacks()Lcom/android/server/wm/WindowList;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wm/WindowList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->mChildren:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2154
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;
    .locals 1
    .param p1, "windowingMode"    # I

    .line 2136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .line 3130
    float-to-int v0, p1

    .line 3131
    .local v0, "x":I
    float-to-int v1, p2

    .line 3132
    .local v1, "y":I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3152
    .local v2, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v2
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowCornerRadius()F
    .locals 1

    .line 1076
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    return v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method getWindowingLayer()Landroid/view/SurfaceControl;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5421
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransition()V
    .locals 5

    .line 5304
    const/4 v0, 0x0

    .line 5306
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 5308
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5309
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 5310
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5308
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5312
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5314
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    .line 5316
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 5318
    or-int/2addr v0, v2

    .line 5319
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_1

    .line 5320
    const-string v1, "WindowManager"

    const-string v3, "Wallpaper layer changed: assigning layers + relayout"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5322
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5323
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 5326
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 5328
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5329
    return-void
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 1

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v0

    return v0
.end method

.method hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 2092
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .locals 2

    .line 3805
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3807
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasSplitScreenPrimaryStack()Z
    .locals 1

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initializeDisplayBaseInfo()V
    .locals 4

    .line 2347
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2348
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_0

    .line 2350
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2351
    .local v1, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 2352
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 2356
    .end local v1    # "newDisplayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2358
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2359
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2360
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 2361
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2362
    return-void
.end method

.method initializeDisplayOverrideConfiguration()V
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1312
    :cond_0
    return-void
.end method

.method isInputMethodClientFocus(II)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 3784
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3785
    .local v1, "imFocus":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    .line 3786
    return v0

    .line 3789
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_1

    .line 3790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
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

    .line 3792
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

    .line 3795
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_2

    .line 3796
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

    .line 3798
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

    .line 3801
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

    .line 3645
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isNextTransitionForward()Z
    .locals 2

    .line 5333
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 5334
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

    .line 2096
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

    .line 1068
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

.method isRemovalDeferred()Z
    .locals 1

    .line 2748
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .locals 2
    .param p1, "windowingMode"    # I

    .line 3124
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3125
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isUntrustedVirtualDisplay()Z
    .locals 2

    .line 5354
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5361
    invoke-virtual {v0}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5362
    invoke-virtual {v0}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.screenrecord"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5354
    :goto_0
    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 2214
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$applyRotationLocked$10$DisplayContent(IIZLcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I
    .param p3, "rotateSeamlessly"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1624
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 1626
    return-void
.end method

.method public synthetic lambda$applyRotationLocked$11$DisplayContent(ZLcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "rotateSeamlessly"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1632
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1633
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set mOrientationChanging of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1635
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 1636
    iput v2, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1638
    :cond_1
    iput-boolean v1, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 1639
    return-void
.end method

.method public synthetic lambda$calculateSystemGestureExclusion$26$DisplayContent(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "unhandled"    # Landroid/graphics/Region;
    .param p2, "touchableRegion"    # Landroid/graphics/Region;
    .param p3, "local"    # Landroid/graphics/Region;
    .param p4, "remainingLeftRight"    # [I
    .param p5, "global"    # Landroid/graphics/Region;
    .param p6, "leftEdge"    # Landroid/graphics/Rect;
    .param p7, "rightEdge"    # Landroid/graphics/Rect;
    .param p8, "w"    # Lcom/android/server/wm/WindowState;

    .line 5482
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5483
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_3

    .line 5484
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5490
    :cond_0
    invoke-virtual {p8, p2}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 5491
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5493
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5494
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    .line 5496
    :cond_1
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 5499
    iget v0, p8, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p3, v0}, Landroid/graphics/Region;->scale(F)V

    .line 5500
    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 5501
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 5504
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5508
    .end local v0    # "frame":Landroid/graphics/Rect;
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDispatchedSystemUiVisibility:I

    invoke-static {p8, v0}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5511
    const/4 v0, 0x0

    aget v1, p4, v0

    invoke-static {p3, p5, p6, v1}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;I)I

    move-result v1

    aput v1, p4, v0

    .line 5515
    const/4 v0, 0x1

    aget v1, p4, v0

    invoke-static {p3, p5, p7, v1}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;I)I

    move-result v1

    aput v1, p4, v0

    .line 5519
    invoke-static {p3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 5520
    .local v0, "middle":Landroid/graphics/Region;
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p6, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5521
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p7, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5522
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5523
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5524
    .end local v0    # "middle":Landroid/graphics/Region;
    goto :goto_1

    .line 5525
    :cond_2
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p5, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5527
    :goto_1
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5528
    return-void

    .line 5485
    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic lambda$checkWaitingForWindows$20$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3717
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3718
    return v1

    .line 3720
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3721
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e5

    if-ne v0, v2, :cond_1

    .line 3722
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    goto :goto_1

    .line 3723
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 3726
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_3

    .line 3727
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_1

    .line 3728
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_5

    .line 3729
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_1

    .line 3725
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    .line 3732
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$destroyLeakedSurfaces$16$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3403
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 3404
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    .line 3405
    return-void

    .line 3407
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

    .line 3408
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

    .line 3413
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3414
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3415
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 3416
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "LEAK DESTROY"

    invoke-static {p1, v2, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 3421
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 3422
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3424
    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$getNeedsMenu$17$DisplayContent(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "top"    # Lcom/android/server/wm/WindowState;
    .param p2, "bottom"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3612
    if-ne p3, p1, :cond_0

    .line 3614
    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3616
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3617
    return v1

    .line 3620
    :cond_1
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3621
    return v2

    .line 3625
    :cond_2
    if-ne p3, p2, :cond_3

    .line 3626
    return v2

    .line 3628
    :cond_3
    return v1
.end method

.method public synthetic lambda$getTouchableWinAtPointLocked$13$DisplayContent(IILcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3133
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3134
    .local v0, "flags":I
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3135
    return v2

    .line 3137
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 3138
    return v2

    .line 3141
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 3142
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3143
    return v2

    .line 3146
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3148
    and-int/lit8 v1, v0, 0x28

    .line 3149
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

.method public synthetic lambda$new$0$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 625
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 626
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 627
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 628
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 631
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 638
    :cond_1
    return-void
.end method

.method public synthetic lambda$new$2$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 663
    .local v0, "lostFocusUid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 664
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_0

    .line 665
    const/16 v2, 0x34

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 666
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 670
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 674
    .local v0, "focusedApp":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for focus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", canReceive="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v1, v3, :cond_2

    .line 680
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/OpUtilInjector;->mayAddFloatingWindow(Lcom/android/server/wm/WindowState;)V

    .line 684
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 685
    return v3

    .line 693
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_4

    .line 694
    return v3

    .line 698
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 701
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_8

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v4, :cond_8

    .line 702
    :cond_5
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v5, :cond_6

    const-string v5, "removed"

    goto :goto_0

    :cond_6
    const-string v5, "sendingToBottom"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_7
    return v3

    .line 707
    :cond_8
    const/4 v3, 0x1

    if-nez v0, :cond_a

    .line 708
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp=null using new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 711
    return v3

    .line 714
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v4

    if-nez v4, :cond_c

    .line 716
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp windows not focusable using new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 719
    return v3

    .line 724
    :cond_c
    if-eqz v1, :cond_e

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_e

    .line 725
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_e

    .line 727
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Reached focused app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 730
    return v3

    .line 734
    :cond_e
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Found new focus @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_f
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 736
    return v3
.end method

.method public synthetic lambda$new$4$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 11
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 745
    .local v0, "gone":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_6

    .line 746
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

    .line 748
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 750
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    const-string v5, " parentHidden="

    const-string v6, " hiddenRequested="

    const-string v7, " hidden="

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

    .line 751
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 754
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

    .line 755
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 754
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v3, :cond_c

    :cond_7
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_c

    .line 764
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v3, :cond_8

    .line 765
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 767
    :cond_8
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v3, v5, :cond_9

    .line 770
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 772
    :cond_9
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 773
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 774
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 775
    .local v1, "firstLayout":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 776
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 780
    if-eqz v1, :cond_a

    .line 781
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 784
    :cond_a
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_b

    .line 785
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 788
    :cond_b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  LAYOUT: mFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mContainingFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .end local v1    # "firstLayout":Z
    :cond_c
    return-void
.end method

.method public synthetic lambda$new$5$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 795
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_5

    .line 796
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

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    return-void

    .line 805
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

    if-eqz v0, :cond_6

    .line 807
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_4

    .line 809
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 811
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 812
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 813
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 814
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 815
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LAYOUT: mFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContainingFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_6

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 824
    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$6$DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 827
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

    .line 828
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$7$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 833
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
    .locals 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 838
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

    .line 840
    .local v1, "obscuredChanged":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 843
    .local v2, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 844
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v4, :cond_6

    .line 845
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    .line 847
    .local v4, "isDisplayed":Z
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 850
    iput-object p1, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 851
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v3, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 854
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 855
    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 859
    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 860
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 861
    .local v5, "type":I
    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_2

    const/16 v6, 0x7da

    if-eq v5, v6, :cond_2

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_3

    .line 863
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v3, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 865
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 867
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v7, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 877
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v6

    .line 878
    invoke-virtual {v6, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v6

    .line 879
    .local v6, "preferredModeId":I
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_5

    .line 880
    invoke-static {p1, v6}, Lcom/android/server/wm/OpScreenModeServiceInjector;->getPreferredModeId(Lcom/android/server/wm/WindowState;I)I

    move-result v6

    .line 883
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    .line 885
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v6, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 890
    .end local v4    # "isDisplayed":Z
    .end local v5    # "type":I
    .end local v6    # "preferredModeId":I
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 893
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 896
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 898
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 901
    .local v4, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 904
    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_a

    .line 906
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v5

    .line 907
    .local v5, "committed":Z
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 908
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7e7

    if-ne v6, v7, :cond_8

    .line 912
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 913
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_8

    .line 914
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v7, "dream and commitFinishDrawingLocked true"

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 919
    :cond_8
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    .line 920
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

    .line 922
    :cond_9
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 923
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 924
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_a

    .line 925
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v6, "wallpaper and commitFinishDrawingLocked true"

    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 933
    .end local v5    # "committed":Z
    :cond_a
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 934
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_b

    .line 935
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 936
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 937
    .local v5, "updateAllDrawn":Z
    if-eqz v5, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 938
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 942
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

    .line 943
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 946
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    .line 947
    return-void
.end method

.method public synthetic lambda$onSeamlessRotationTimeout$25$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4210
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_0

    .line 4211
    return-void

    .line 4213
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4214
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 4215
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    .line 4216
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 4217
    return-void
.end method

.method public synthetic lambda$onWindowFreezeTimeout$23$DisplayContent(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3876
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3877
    return-void

    .line 3879
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 3880
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing orientation change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    return-void
.end method

.method public synthetic lambda$waitForAllWindowsDrawn$24$DisplayContent(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 3890
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    .line 3891
    .local v0, "keyguard":Z
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 3892
    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3894
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 3897
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " drawn."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3901
    :cond_2
    return-void
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .locals 3

    .line 3385
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3386
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3388
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3390
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3393
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3394
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3395
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3396
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 4
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 5050
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 5051
    .local v0, "s":Landroid/view/SurfaceSession;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 5052
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    if-nez p1, :cond_1

    .line 5053
    return-object v1

    .line 5056
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5057
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 5056
    return-object v2
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .locals 2

    .line 5067
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 5068
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 5067
    return-object v0
.end method

.method makeSurface(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 2
    .param p1, "s"    # Landroid/view/SurfaceSession;

    .line 5039
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5040
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 5039
    return-object v0
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "onTop"    # Z

    .line 2513
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2514
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    const-string v1, "Trying to move stackId="

    if-eqz v0, :cond_1

    .line 2518
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v2, v3, :cond_0

    .line 2523
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    .line 2524
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 2525
    return-void

    .line 2519
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to its current displayId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2515
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " which is not currently attached to any display"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method okToAnimate()Z
    .locals 1

    .line 4260
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4261
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4260
    :goto_0
    return v0
.end method

.method okToDisplay()Z
    .locals 4

    .line 4252
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4253
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4254
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4253
    :goto_0
    return v1

    .line 4256
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method onAppTransitionDone()V
    .locals 2

    .line 2219
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 2220
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2221
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2167
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2168
    .local v0, "lastOrientation":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2169
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v1, :cond_0

    .line 2170
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2173
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x67b

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2176
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x67c

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2174
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2182
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2183
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 2185
    :cond_2
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .locals 6
    .param p1, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p2, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1322
    nop

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1322
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1327
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->respectAppRequestedOrientation()Z

    move-result v2

    .line 1328
    .local v2, "handled":Z
    if-nez v0, :cond_0

    .line 1329
    return v2

    .line 1332
    :cond_0
    if-eqz v2, :cond_2

    instance-of v3, p2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2

    .line 1333
    move-object v3, p2

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1334
    .local v3, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 1334
    invoke-virtual {v4, v0, v3, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    move-result v1

    .line 1336
    .local v1, "kept":Z
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1337
    if-nez v1, :cond_1

    .line 1338
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1340
    .end local v1    # "kept":Z
    .end local v3    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    goto :goto_0

    .line 1343
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x0

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 1343
    invoke-virtual {v3, v0, v4, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z

    .line 1346
    :goto_0
    return v2
.end method

.method onDescendantOverrideConfigurationChanged()V
    .locals 1

    .line 4247
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4248
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4249
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 2336
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    .line 2338
    return-void
.end method

.method onParentChanged()V
    .locals 0

    .line 5103
    return-void
.end method

.method onSeamlessRotationTimeout()V
    .locals 2

    .line 4207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4209
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4219
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 4220
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4222
    :cond_0
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 2162
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 2163
    return-void
.end method

.method onWindowFreezeTimeout()V
    .locals 2

    .line 3872
    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 3875
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3884
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3885
    return-void
.end method

.method pauseRotationLocked()V
    .locals 1

    .line 1271
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    .line 1272
    return-void
.end method

.method performLayout(ZZ)V
    .locals 3
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 4050
    const-wide/16 v0, 0x20

    const-string v2, "performLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4052
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4054
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4055
    nop

    .line 4056
    return-void

    .line 4054
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method pointWithinAppWindow(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2565
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2566
    .local v1, "targetWindowType":[I
    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;

    invoke-direct {v3, v1, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$9GF6f8baPGZRvxJVeBknIuDUb_Y;-><init>([III)V

    const-class v4, Lcom/android/server/wm/WindowState;

    .line 2584
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 2566
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    .line 2585
    .local v3, "fn":Ljava/util/function/Consumer;
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2586
    move-object v4, v3

    check-cast v4, Lcom/android/internal/util/function/pooled/PooledConsumer;

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2587
    aget v4, v1, v2

    if-gt v0, v4, :cond_0

    aget v4, v1, v2

    const/16 v5, 0x63

    if-gt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
    .param p3, "includingParents"    # Z

    .line 2553
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2554
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 253
    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/TaskStack;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/TaskStack;
    .param p3, "includingParents"    # Z

    .line 2557
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 2558
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 2559
    return-void
.end method

.method preOnConfigurationChanged()V
    .locals 3

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    .line 2196
    .local v0, "dividerController":Lcom/android/server/wm/DockedStackDividerController;
    if-eqz v0, :cond_0

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    .line 2200
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 2202
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-eqz v1, :cond_1

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    .line 2205
    :cond_1
    return-void
.end method

.method prepareAppTransition(IZ)V
    .locals 1
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .line 5263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 5264
    return-void
.end method

.method prepareAppTransition(IZIZ)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 5269
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v0

    .line 5271
    .local v0, "prepared":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5276
    invoke-static {}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->skipAppTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 5281
    :cond_0
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 2867
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2868
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2869
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 2867
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2871
    .end local v0    # "stackNdx":I
    :cond_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 10

    .line 5167
    const-wide/16 v0, 0x20

    const-string v2, "prepareSurfaces"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5175
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5177
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 5178
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 5179
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5180
    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5181
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v6, v4, v6

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v7, v4, v7

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v8, v4, v8

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v9, v4, v9

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 5184
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 5186
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5187
    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    .line 5186
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 5191
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_0

    .line 5194
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->prepareSurfaces()V

    .line 5199
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 5203
    invoke-static {v3}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5205
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5206
    nop

    .line 5207
    return-void

    .line 5205
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 1150
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1151
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-ne v0, p0, :cond_0

    .line 1152
    return-void

    .line 1154
    :cond_0
    if-eqz v0, :cond_2

    .line 1155
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1160
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_2

    .line 1163
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 1167
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1168
    return-void
.end method

.method reapplyMagnificationSpec()V
    .locals 2

    .line 5092
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_0

    .line 5093
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 5095
    :cond_0
    return-void
.end method

.method reevaluateStatusBarVisibility()V
    .locals 2

    .line 3865
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 3866
    .local v0, "visibility":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3867
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3869
    :cond_0
    return-void
.end method

.method registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5254
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5255
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 1
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransitionController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1259
    return-void
.end method

.method registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;

    .line 5580
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5582
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5583
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    .local v0, "changed":Z
    goto :goto_0

    .line 5585
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .line 5588
    .restart local v0    # "changed":Z
    :goto_0
    if-nez v0, :cond_1

    .line 5592
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v1, v2}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5595
    goto :goto_1

    .line 5593
    :catch_0
    move-exception v1

    .line 5594
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to notify SystemGestureExclusionListener during register"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5597
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1171
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1172
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    const-string v1, "WindowManager"

    if-nez v0, :cond_0

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-void

    .line 1177
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1179
    .local v2, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_1

    .line 1180
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

    .line 1181
    return-void

    .line 1184
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 1185
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    .line 2542
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_0

    .line 2543
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 2544
    return-void

    .line 2546
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 253
    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .locals 3

    .line 4234
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4235
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 4236
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_0

    .line 4237
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4234
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4242
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    .line 4243
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 2691
    return-void

    .line 2693
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 2694
    return-void
.end method

.method removeImmediately()V
    .locals 4

    .line 2698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2701
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2702
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2703
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 2704
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 2705
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 2707
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 2708
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2709
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    .line 2711
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 2712
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2713
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 2714
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V

    .line 2718
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_1

    .line 2719
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->removeImmediately()V

    .line 2724
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->onDisplayRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2728
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    .line 2729
    nop

    .line 2731
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2732
    return-void

    .line 2727
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 2728
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    throw v1
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 1142
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1143
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    .line 1145
    :cond_0
    return-object v0
.end method

.method reparentDisplayContent(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 5375
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    .line 5376
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 5377
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    if-nez v0, :cond_0

    .line 5378
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->createPortalWindowHandle(Ljava/lang/String;)Landroid/view/InputWindowHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    .line 5380
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPortalWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 5381
    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5382
    return-void
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;

    .line 5075
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5076
    return-void
.end method

.method resumeRotationLocked()V
    .locals 1

    .line 1278
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_0

    .line 1279
    return-void

    .line 1282
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    .line 1283
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_1

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    .line 1286
    :cond_1
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 2874
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 2875
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 2876
    return-void
.end method

.method rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 2881
    invoke-static {p3, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 2882
    .local v0, "deltaRotation":I
    nop

    .line 2883
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 2882
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 2885
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2886
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2887
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2888
    return-void
.end method

.method rotationNeedsUpdate()Z
    .locals 4

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    .line 1297
    .local v0, "lastOrientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    .line 1299
    .local v1, "oldRotation":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v2

    .line 1300
    .local v2, "rotation":I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 3171
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3176
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3178
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3179
    return-void

    .line 3172
    :cond_1
    :goto_0
    return-void
.end method

.method screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 4125
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4126
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 4127
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    :cond_0
    return-object v2

    .line 4132
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4133
    .local v0, "dw":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4135
    .local v3, "dh":I
    if-lez v0, :cond_9

    if-gtz v3, :cond_2

    goto :goto_2

    .line 4139
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4142
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 4144
    .local v6, "rot":I
    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    if-ne v6, v7, :cond_5

    .line 4145
    :cond_3
    if-ne v6, v8, :cond_4

    goto :goto_0

    :cond_4
    move v7, v8

    :goto_0
    move v6, v7

    .line 4150
    :cond_5
    invoke-static {v4, v6, v0, v3}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    .line 4158
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 4160
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v7

    .line 4161
    .local v7, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v7, :cond_6

    .line 4162
    invoke-interface {v7}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v8

    goto :goto_1

    :cond_6
    nop

    .line 4163
    .local v5, "inRotation":Z
    :goto_1
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v8, :cond_7

    if-eqz v5, :cond_7

    const-string v8, "Taking screenshot while rotating"

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :cond_7
    invoke-static {v4, v0, v3, v5, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4169
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_8

    .line 4170
    const-string v9, "Failed to take screenshot"

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    return-object v2

    .line 4176
    :cond_8
    invoke-virtual {v8, p1}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4177
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 4178
    return-object v1

    .line 4136
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
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1317
    return-void
.end method

.method setDisplayRotation(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0
    .param p1, "displayRotation"    # Lcom/android/server/wm/DisplayRotation;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1229
    return-void
.end method

.method setDisplayWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 2232
    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 2
    .param p1, "hasVisible"    # Z

    .line 4225
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4226
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 4225
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4230
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    .line 4231
    return-void
.end method

.method setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 4
    .param p1, "newFocus"    # Lcom/android/server/wm/AppWindowToken;

    .line 3341
    if-eqz p1, :cond_1

    .line 3342
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3343
    .local v0, "appDisplay":Lcom/android/server/wm/DisplayContent;
    if-eq v0, p0, :cond_1

    .line 3344
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

    .line 3345
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

    .line 3348
    .end local v0    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_2

    .line 3349
    const/4 v0, 0x0

    return v0

    .line 3353
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_3

    .line 3356
    invoke-static {p1}, Lcom/android/server/wm/OpDisplayContentInjector;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)V

    .line 3359
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3360
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3361
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 3362
    const/4 v0, 0x1

    return v0
.end method

.method setForcedDensity(II)V
    .locals 4
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .line 2448
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2449
    .local v0, "clear":Z
    :goto_0
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2450
    .local v1, "updateCurrent":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v2, p2, :cond_2

    if-eqz v1, :cond_3

    .line 2451
    :cond_2
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2452
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2454
    :cond_3
    if-eqz v1, :cond_4

    .line 2456
    return-void

    .line 2459
    :cond_4
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne p1, v2, :cond_5

    .line 2460
    const/4 p1, 0x0

    .line 2462
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 2463
    return-void
.end method

.method setForcedScalingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 2467
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2468
    const/4 p1, 0x0

    .line 2471
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 2472
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

    .line 2473
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2475
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    .line 2476
    return-void
.end method

.method setForcedSize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2480
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2481
    .local v0, "clear":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2484
    const/16 v2, 0xc8

    .line 2485
    .local v2, "minSize":I
    const/4 v3, 0x2

    .line 2486
    .local v3, "maxScale":I
    const/16 v4, 0xc8

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2487
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2490
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

    .line 2491
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2492
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 2494
    if-eqz v0, :cond_2

    .line 2495
    move p2, v1

    move p1, v1

    .line 2497
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 2498
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 5632
    if-nez p1, :cond_0

    .line 5633
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 5635
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getForwardedInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5636
    return-void

    .line 5638
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->setForwardedInsets(Landroid/graphics/Insets;)V

    .line 5639
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5640
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5641
    return-void
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 3434
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3436
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 3437
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 3438
    .local v0, "imePid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3439
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    .line 3438
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onImeWindowSetOnDisplay(II)V

    .line 3441
    .end local v0    # "imePid":I
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 3442
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 3444
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

    .line 1219
    .local p3, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1220
    return-void
.end method

.method setLayoutNeeded()V
    .locals 2

    .line 3635
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

    .line 3636
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 3637
    return-void
.end method

.method setMaxUiWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 2405
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 2406
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

    .line 2409
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 2412
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 2413
    return-void
.end method

.method setRotation(I)V
    .locals 1
    .param p1, "newRotation"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1245
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1246
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->setRotation(I)V

    .line 1247
    return-void
.end method

.method setStackOnDisplay(IZLcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "onTop"    # Z
    .param p3, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 2505
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 2510
    return-void
.end method

.method public setWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 2225
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 2226
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setDisplayWindowingMode(I)V

    .line 2227
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZ)V
    .locals 3
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z

    .line 3695
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3696
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3707
    return-void
.end method

.method statusBarVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 3811
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastStatusBarVisibility:I

    .line 3812
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 3813
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateStatusBarVisibilityLocked(I)Z

    .line 3814
    return-void
.end method

.method supportsSystemDecorations()Z
    .locals 2

    .line 5343
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5344
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_1

    .line 5345
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isUntrustedVirtualDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5343
    :goto_0
    return v0
.end method

.method switchUser()V
    .locals 2

    .line 2676
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2678
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    .line 2679
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3115
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

.method unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5259
    return-void
.end method

.method unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;

    .line 5600
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5601
    return-void
.end method

.method updateBackgroundForAnimator()V
    .locals 2

    .line 3779
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 3780
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3781
    return-void
.end method

.method updateBaseDisplayMetrics(III)V
    .locals 4
    .param p1, "baseWidth"    # I
    .param p2, "baseHeight"    # I
    .param p3, "baseDensity"    # I

    .line 2417
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2418
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2419
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2421
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le v1, v0, :cond_0

    .line 2422
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2423
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 2424
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2426
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    .line 2427
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

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2427
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2435
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    .line 2436
    return-void
.end method

.method updateDisplayInfo()V
    .locals 2

    .line 2321
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 2323
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2324
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2326
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2330
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->updateSizeForResolutionChanged()V

    .line 2332
    return-void
.end method

.method updateFocusedWindowLocked(IZI)Z
    .locals 11
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z
    .param p3, "topFocusedDisplayId"    # I

    .line 3224
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3225
    .local v0, "newFocus":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 3226
    return v2

    .line 3228
    :cond_0
    const/4 v1, 0x0

    .line 3229
    .local v1, "imWindowChanged":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3230
    .local v3, "imWindow":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 3231
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 3232
    .local v6, "prevTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 3233
    .local v7, "newTarget":Lcom/android/server/wm/WindowState;
    if-eq v6, v7, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    move v1, v8

    .line 3235
    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    .line 3237
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3241
    .end local v6    # "prevTarget":Lcom/android/server/wm/WindowState;
    .end local v7    # "newTarget":Lcom/android/server/wm/WindowState;
    :cond_2
    if-eqz v1, :cond_3

    .line 3242
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3243
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3244
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3246
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x2

    if-eq v6, v0, :cond_4

    .line 3247
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3256
    :cond_4
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    const/4 v8, 0x4

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_6

    .line 3257
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changing focus from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " displayId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Callers="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3257
    const-string v9, "WindowManager"

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3262
    .local v6, "oldFocus":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 3263
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3267
    invoke-static {p0, v0, v6}, Lcom/android/server/wm/OpDisplayContentInjector;->updateFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3270
    if-eqz v0, :cond_7

    .line 3271
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3272
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3274
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3278
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v2, v9, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 3282
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v9

    invoke-virtual {v9, v6, v0}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v9

    .line 3284
    .local v9, "focusChanged":I
    if-eqz v1, :cond_9

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v6, v10, :cond_9

    .line 3286
    if-ne p1, v7, :cond_8

    .line 3287
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 3288
    and-int/lit8 v9, v9, -0x2

    goto :goto_1

    .line 3289
    :cond_8
    if-ne p1, v4, :cond_9

    .line 3292
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 3296
    :cond_9
    :goto_1
    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_b

    .line 3298
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3299
    if-ne p1, v7, :cond_a

    .line 3300
    invoke-virtual {p0, v5, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_2

    .line 3301
    :cond_a
    if-ne p1, v8, :cond_b

    .line 3302
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 3306
    :cond_b
    :goto_2
    if-eq p1, v5, :cond_c

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 3311
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 3323
    invoke-static {v6}, Lcom/android/server/wm/OpDisplayContentInjector;->shouldScheduleToastTimeout(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3324
    invoke-virtual {p0, v6, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3328
    :cond_d
    if-ne p1, v7, :cond_e

    .line 3329
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3331
    :cond_e
    return v5
.end method

.method updateLocation(Lcom/android/server/wm/WindowState;II)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 5402
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mParentWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    .line 5406
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p3, :cond_1

    .line 5407
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLocationInParentWindow:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 5408
    iput p3, v0, Landroid/graphics/Point;->y:I

    .line 5409
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_1

    .line 5410
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 5413
    :cond_1
    return-void

    .line 5403
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given window is not the parent window of this display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;Z)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p3, "forceUpdate"    # Z

    .line 1376
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-nez v0, :cond_0

    .line 1377
    const/4 v0, 0x0

    return-object v0

    .line 1380
    :cond_0
    const/4 v0, 0x0

    .line 1381
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1384
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_1

    .line 1385
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 1386
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_1

    .line 1387
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 1390
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    move-object v0, v1

    .line 1391
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1392
    :cond_2
    if-eqz p1, :cond_3

    .line 1398
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 1399
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1400
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1401
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1402
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1403
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1404
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1405
    .local v2, "anim":[I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1407
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    aget v4, v2, v4

    aget v1, v2, v1

    invoke-virtual {v3, v4, v1, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1408
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v1

    .line 1412
    .end local v2    # "anim":[I
    :cond_3
    :goto_0
    return-object v0
.end method

.method updateOrientationFromAppTokens()Z
    .locals 1

    .line 1364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationAndSendNewConfigIfNeeded()Z
    .locals 1

    .line 1432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    .line 1433
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1436
    :cond_0
    return v0
.end method

.method updateRotationUnchecked()Z
    .locals 1

    .line 1446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .locals 12
    .param p1, "forceUpdate"    # Z

    .line 1473
    const/4 v0, 0x0

    const-string v1, "WindowManager"

    if-nez p1, :cond_5

    .line 1474
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRotationPauseCount:I

    if-lez v2, :cond_1

    .line 1477
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_0

    const-string v2, "Deferring rotation, rotation is paused."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    return v0

    .line 1481
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1482
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 1483
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1487
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_2

    const-string v3, "Deferring rotation, animation in progress."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_2
    return v0

    .line 1490
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v3, :cond_5

    .line 1494
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    const-string v3, "Deferring rotation, still finishing previous rotation"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_4
    return v0

    .line 1500
    .end local v2    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v2, :cond_7

    .line 1502
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_6

    const-string v2, "Deferring rotation, display is not enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_6
    return v0

    .line 1506
    :cond_7
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1510
    .local v2, "oldRotation":I
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mOldRotation:I

    .line 1512
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    .line 1513
    .local v3, "lastOrientation":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v4

    .line 1514
    .local v4, "rotation":I
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Computed rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for display id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " based on lastOrientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and oldRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/server/wm/DisplayPolicy;->shouldRotateSeamlessly(Lcom/android/server/wm/DisplayRotation;II)Z

    move-result v5

    .line 1520
    .local v5, "mayRotateSeamlessly":Z
    if-eqz v5, :cond_c

    .line 1521
    sget-object v6, Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 1522
    .local v6, "seamlessRotated":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_9

    if-nez p1, :cond_9

    .line 1527
    return v0

    .line 1532
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1533
    const/4 v5, 0x0

    .line 1535
    :cond_a
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 1536
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Session;

    invoke-virtual {v8}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1537
    const/4 v5, 0x0

    .line 1538
    goto :goto_1

    .line 1535
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1542
    .end local v6    # "seamlessRotated":Lcom/android/server/wm/WindowState;
    .end local v7    # "i":I
    :cond_c
    :goto_1
    move v6, v5

    .line 1544
    .local v6, "rotateSeamlessly":Z
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const-string v8, "Display id="

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " selected orientation "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", got rotation "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_d
    if-ne v2, v4, :cond_e

    .line 1550
    return v0

    .line 1553
    :cond_e
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rotation changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", lastOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_f
    invoke-static {v4, v2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v7, :cond_10

    .line 1559
    iput-boolean v8, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1562
    :cond_10
    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    .line 1564
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v8, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 1565
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0xb

    const-wide/16 v10, 0x7d0

    invoke-virtual {v1, v9, p0, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 1568
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1569
    new-array v1, v7, [I

    .line 1570
    .local v1, "anim":[I
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1572
    if-nez v6, :cond_11

    .line 1573
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    aget v0, v1, v0

    aget v9, v1, v8

    invoke-virtual {v7, v0, v9, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    goto :goto_2

    .line 1580
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->startSeamlessRotation()V

    .line 1583
    :goto_2
    return v8
.end method

.method updateSystemGestureExclusion()Z
    .locals 6

    .line 5430
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5432
    return v1

    .line 5435
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion()Landroid/graphics/Region;

    move-result-object v0

    .line 5437
    .local v0, "systemGestureExclusion":Landroid/graphics/Region;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 5438
    nop

    .line 5452
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5438
    return v1

    .line 5440
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5441
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5443
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5444
    invoke-interface {v3, v4, v0}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5447
    goto :goto_1

    .line 5445
    :catch_0
    move-exception v3

    .line 5446
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "WindowManager"

    const-string v5, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5441
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5449
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5450
    nop

    .line 5452
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5450
    return v2

    .line 5452
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    throw v1
.end method

.method updateSystemGestureExclusionLimit()V
    .locals 2

    .line 2341
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 2344
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "globalDiff"    # I

    .line 3836
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3862
    return-void
.end method

.method updateTouchExcludeRegion()V
    .locals 10

    .line 2620
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2621
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_0
    if-nez v0, :cond_1

    .line 2622
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_2

    .line 2624
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2625
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v7

    .line 2626
    .local v7, "delta":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2627
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    .local v8, "stackNdx":I
    :goto_1
    if-ltz v8, :cond_2

    .line 2629
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/TaskStack;

    .line 2630
    .local v9, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v1, v9

    move-object v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2628
    .end local v9    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2636
    .end local v8    # "stackNdx":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2637
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2640
    .end local v7    # "delta":I
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2644
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2645
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2647
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 2648
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2649
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2650
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2647
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2652
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->amendWindowTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2654
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2655
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    .line 2656
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2657
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2659
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 2660
    return-void
.end method

.method updateWindowsForAnimator()V
    .locals 2

    .line 3772
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3773
    return-void
.end method

.method waitForAllWindowsDrawn()V
    .locals 3

    .line 3888
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3889
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3902
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 2930
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2931
    return-void

    .line 2934
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2935
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2936
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2937
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2938
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 2939
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/TaskStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2937
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2941
    .end local v2    # "stackNdx":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2942
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/PinnedStackController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2943
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2944
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2945
    .local v3, "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000006L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2943
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2947
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 2948
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2949
    .restart local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000007L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2947
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2951
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_3
    if-ltz v2, :cond_4

    .line 2952
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 2953
    .restart local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    const-wide v4, 0x20b00000008L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2951
    .end local v3    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2955
    .end local v2    # "i":I
    :cond_4
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2956
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2957
    const-wide v2, 0x1050000000bL

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2964
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2966
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v2

    .line 2967
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v2, :cond_5

    .line 2968
    const-wide v3, 0x10b0000000cL

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/wm/IScreenRotationAnimation;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2970
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/DisplayFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2971
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v4, 0x10b00000010L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/AppTransition;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2972
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_6

    .line 2973
    const-wide v4, 0x1090000000fL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2975
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_4
    if-ltz v3, :cond_7

    .line 2976
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000011L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2975
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 2978
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_5
    if-ltz v3, :cond_8

    .line 2979
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000012L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2978
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 2981
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_6
    if-ltz v3, :cond_9

    .line 2982
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000013L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2981
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 2984
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2985
    return-void
.end method
