.class Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$MoveAnimationSpec;,
        Lcom/android/server/wm/WindowState$WindowId;,
        Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;,
        Lcom/android/server/wm/WindowState$DeathRecipient;,
        Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;,
        Lcom/android/server/wm/WindowState$PowerManagerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;",
        "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
        "Lcom/android/server/wm/InsetsControlTarget;"
    }
.end annotation


# static fields
.field static final BLAST_TIMEOUT_DURATION:I = 0x1388

.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field private static final DISABLE_MOVE_ANIM_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final EXCLUSION_LEFT:I = 0x0

.field static final EXCLUSION_RIGHT:I = 0x1

.field static final INPUT_WINDOW:Ljava/lang/String; = "input"

.field static final LEGACY_POLICY_VISIBILITY:I = 0x1

.field static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field private static final POLICY_VISIBILITY_ALL:I = 0x3

.field static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0x1e

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VISIBLE_FOR_USER:I = 0x2

.field private static final sTmpSB:Ljava/lang/StringBuilder;

.field private static final sWindowSubLayerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mAnimateReplacingWindow:Z

.field mAnimatingExit:Z

.field mAppDied:Z

.field mAppFreezing:Z

.field final mAppOp:I

.field private mAppOpVisibility:Z

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field mBehindIme:Z

.field final mClient:Landroid/view/IWindow;

.field private mClientChannel:Landroid/view/InputChannel;

.field final mContext:Landroid/content/Context;

.field private mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

.field private mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field mDestroying:Z

.field private mDragResizing:Z

.field private mDragResizingChangeReported:Z

.field private mDrawLock:Landroid/os/PowerManager$WakeLock;

.field private mDrawnStateEvaluated:Z

.field private final mEmbeddedDisplayContents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFinishSeamlessRotateFrameNumber:J

.field private mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mForceHideNonSystemOverlayWindow:Z

.field final mForceSeamlesslyRotate:Z

.field private mFrameNumber:J

.field mFrameRateSelectionPriority:I

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mHidden:Z

.field private mHiddenWhileSuspended:Z

.field mImeOffsetRect:Landroid/graphics/Rect;

.field mInRelayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Landroid/view/InputWindowHandle;

.field private final mInsetFrame:Landroid/graphics/Rect;

.field mInvGlobalScale:F

.field mIsAppWindowCompat:Z

.field private mIsChildWindow:Z

.field private mIsDimming:Z

.field private final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field mIsNotchUnLimited:Z

.field mIsQuickReplyImeWindow:Z

.field final mIsWallpaper:Z

.field private mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

.field private mLastConfigReportedToClient:Z

.field private final mLastExclusionLogUptimeMillis:[J

.field mLastFreezeDuration:I

.field private final mLastGrantedExclusionHeight:[I

.field mLastHScale:F

.field mLastInputmethodShow:Z

.field final mLastRelayoutContentInsets:Landroid/graphics/Rect;

.field private final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private final mLastReportedDisplayOffset:Landroid/graphics/Point;

.field private final mLastRequestedExclusionHeight:[I

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private mLastShownChangedReported:Z

.field final mLastSurfaceInsets:Landroid/graphics/Rect;

.field private mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field mLastVisibleLayoutRotation:I

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mLegacyPolicyVisibilityAfterAnim:Z

.field private mLocalSyncId:I

.field private mMovedByResize:Z

.field private mNotifyBlastOnSurfacePlacement:Z

.field mObscured:Z

.field private mOrientationChangeTimedOut:Z

.field private mOrientationChanging:Z

.field final mOwnerCanAddInternalSystemWindow:Z

.field final mOwnerUid:I

.field mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

.field mPermanentlyHidden:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPolicyVisibility:I

.field private mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

.field private mRedrawForSyncReported:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field private mReplacementWindow:Lcom/android/server/wm/WindowState;

.field private mReplacingRemoveRequested:Z

.field mReportOrientationChanged:Z

.field mRequestedHeight:I

.field private final mRequestedInsetsState:Landroid/view/InsetsState;

.field mRequestedWidth:I

.field private mResizeMode:I

.field mResizedWhileGone:Z

.field mSeamlesslyRotated:Z

.field mSeq:I

.field final mSession:Lcom/android/server/wm/Session;

.field mShouldScaleWallpaper:Z

.field final mShowUserId:I

.field private mSimulatedWindowFrames:Lcom/android/server/wm/WindowFrames;

.field mSkipEnterAnimationForSeamlessReplacement:Z

.field private mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field private final mSurfacePosition:Landroid/graphics/Point;

.field mSystemUiVisibility:I

.field private final mTapExcludeRegion:Landroid/graphics/Region;

.field private final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field final mTmpMatrixArray:[F

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mVScale:F

.field mViewVisibility:I

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWallpaperZoomOut:F

.field private mWasExiting:Z

.field mWillReplaceWindow:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private final mWindowFrames:Lcom/android/server/wm/WindowFrames;

.field final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field mWindowRemovalAllowed:Z

.field private final mWpcForDisplayConfigChanges:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 342
    const-string v0, "com.baidu.haokan/com.baidu.haokan.app.activity.HomeActivity"

    const-string v1, "com.qiyi.video/org.iqiyi.video.activity.PlayerActivity"

    const-string v2, "air.tv.douyu.android"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowState;->DISABLE_MOVE_ANIM_LIST:Ljava/util/List;

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 718
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIIZ)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "parentWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "ownerId"    # I
    .param p11, "showUserId"    # I
    .param p12, "ownerCanAddInternalSystemWindow"    # Z

    .line 898
    new-instance v13, Lcom/android/server/wm/WindowState$2;

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V

    .line 910
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V
    .locals 19
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "parentWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "ownerId"    # I
    .param p11, "showUserId"    # I
    .param p12, "ownerCanAddInternalSystemWindow"    # Z
    .param p13, "powerManagerWrapper"    # Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 916
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 322
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    .line 364
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 377
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 382
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 385
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 413
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 416
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    .line 423
    new-instance v7, Landroid/util/MergedConfiguration;

    invoke-direct {v7}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 428
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 437
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 449
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 455
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 460
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 468
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 471
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 472
    iput v8, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 473
    iput v8, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 474
    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 475
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 476
    const/16 v8, 0x9

    new-array v8, v8, [F

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 478
    new-instance v8, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v8}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 487
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 494
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 497
    const/4 v8, 0x2

    new-array v9, v8, [I

    fill-array-data v9, :array_0

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    .line 498
    new-array v9, v8, [I

    fill-array-data v9, :array_1

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    .line 499
    new-array v9, v8, [J

    fill-array-data v9, :array_2

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    .line 505
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 506
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 510
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 518
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 519
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 523
    const/high16 v9, -0x80000000

    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 524
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 581
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 615
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 620
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 622
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 624
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 627
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 632
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 645
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 646
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 652
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    .line 657
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 666
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 671
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mBehindIme:Z

    .line 677
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 686
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 691
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    .line 701
    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 739
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 742
    new-instance v10, Landroid/view/InsetsState;

    invoke-direct {v10}, Landroid/view/InsetsState;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mRequestedInsetsState:Landroid/view/InsetsState;

    .line 752
    iput v6, v1, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 761
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLocalSyncId:I

    .line 890
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsAppWindowCompat:Z

    .line 891
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    .line 917
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 918
    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 919
    move/from16 v10, p6

    iput v10, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 920
    iput-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 922
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 923
    move/from16 v11, p10

    iput v11, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 924
    move/from16 v12, p11

    iput v12, v1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 925
    move/from16 v13, p12

    iput-boolean v13, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 926
    new-instance v14, Lcom/android/server/wm/WindowState$WindowId;

    invoke-direct {v14, v1, v9}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 927
    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v14, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 928
    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v15, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 929
    move/from16 v14, p9

    iput v14, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 930
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 931
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 932
    new-instance v15, Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-direct {v15, v1, v9}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 933
    .local v15, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v9, p7

    iput v9, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 934
    move-object/from16 v8, p13

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 935
    iget-boolean v0, v3, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 936
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " client="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " token="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") params="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "WindowManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v15, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    nop

    .line 956
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 958
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v0, v7, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v0, v7, :cond_5

    .line 961
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v4}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    const/16 v7, 0x3e8

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 963
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v7}, Lcom/android/server/policy/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 966
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3eb

    if-eq v0, v7, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 968
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v0, v7, :cond_3

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v0, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 970
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v0, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto :goto_7

    .line 974
    :cond_5
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    const/16 v7, 0x3e8

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 976
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 977
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 978
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 979
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v0, v7, :cond_7

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v0, v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 981
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v0, v7, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 983
    :goto_7
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 987
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 989
    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsQuickReplyImeWindow:Z

    .line 992
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v0, :cond_e

    .line 995
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v18, 0x80000

    or-int v7, v7, v18

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 998
    :cond_e
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 999
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1001
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 1002
    iput v7, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 1003
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1004
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1005
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1006
    new-instance v0, Landroid/view/InputWindowHandle;

    .line 1007
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_f

    .line 1008
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v7

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    .line 1009
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-direct {v0, v7, v3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 1013
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_11

    .line 1014
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_10

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/16 v16, 0x1

    aput-object v3, v5, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    const v0, -0x369ab4d5

    const/4 v3, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .local v16, "protoLogParam0":Ljava/lang/String;
    .local v17, "protoLogParam1":Ljava/lang/String;
    invoke-static {v7, v0, v6, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    .end local v16    # "protoLogParam0":Ljava/lang/String;
    .end local v17    # "protoLogParam1":Ljava/lang/String;
    :cond_10
    sget-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/wm/WindowState;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1019
    :cond_11
    iget v0, v2, Lcom/android/server/wm/Session;->mPid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v3, :cond_13

    iget v0, v2, Lcom/android/server/wm/Session;->mPid:I

    if-gez v0, :cond_12

    move-object/from16 v3, p1

    goto :goto_c

    .line 1021
    :cond_12
    move-object/from16 v3, p1

    iget-object v0, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v5, v2, Lcom/android/server/wm/Session;->mPid:I

    iget v6, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    goto :goto_d

    .line 1019
    :cond_13
    move-object/from16 v3, p1

    .line 1020
    :goto_c
    const/4 v0, 0x0

    .line 1021
    :goto_d
    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWpcForDisplayConfigChanges:Lcom/android/server/wm/WindowProcessController;

    .line 1022
    return-void

    .line 942
    :catch_0
    move-exception v0

    move-object/from16 v3, p1

    .line 943
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 944
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 945
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 946
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 947
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 948
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 949
    iput v5, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 950
    iput v5, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 951
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 952
    iput-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 953
    iput-object v5, v1, Lcom/android/server/wm/WindowState;->mWpcForDisplayConfigChanges:Lcom/android/server/wm/WindowProcessController;

    .line 954
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;

    .line 282
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;
    .param p1, "x1"    # Z

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method private adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "inOutRect"    # Landroid/graphics/Rect;

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2777
    return-void

    .line 2782
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2783
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 2785
    .local v1, "delta":I
    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 2786
    return-void
.end method

.method private applyDims()V
    .locals 4

    .line 5613
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v0, :cond_0

    .line 5614
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5615
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    goto :goto_0

    .line 5616
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-nez v0, :cond_1

    .line 5622
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5623
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/wm/Dimmer;->dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    .line 5628
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    .line 5629
    invoke-static {v0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-nez v0, :cond_2

    .line 5630
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5631
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->getIMDimAmount()F

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    .line 5634
    :cond_2
    return-void
.end method

.method private applyGravityAndUpdateFrame(Lcom/android/server/wm/WindowFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 21
    .param p1, "windowFrames"    # Lcom/android/server/wm/WindowFrames;
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "displayFrame"    # Landroid/graphics/Rect;

    .line 4415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 4416
    .local v2, "pw":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 4417
    .local v3, "ph":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 4418
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inAppWindowThatMatchesParentBounds()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 4419
    .local v5, "inNonFullscreenContainer":Z
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x200

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v8

    .line 4428
    .local v7, "noLimits":Z
    :goto_0
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v9, v6, :cond_1

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v8

    .line 4433
    .local v6, "fitToDisplay":Z
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v8

    .line 4434
    .local v8, "inSizeCompatMode":Z
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x4000

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v9, :cond_7

    .line 4435
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v9, :cond_3

    .line 4436
    move v9, v2

    .local v9, "w":I
    goto :goto_2

    .line 4437
    .end local v9    # "w":I
    :cond_3
    if-eqz v8, :cond_4

    .line 4438
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v9, v9

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    .restart local v9    # "w":I
    goto :goto_2

    .line 4440
    .end local v9    # "w":I
    :cond_4
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4442
    .restart local v9    # "w":I
    :goto_2
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v11, :cond_5

    .line 4443
    move v10, v3

    .local v10, "h":I
    goto :goto_4

    .line 4444
    .end local v10    # "h":I
    :cond_5
    if-eqz v8, :cond_6

    .line 4445
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v11, v11

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v10

    float-to-int v10, v11

    .restart local v10    # "h":I
    goto :goto_4

    .line 4447
    .end local v10    # "h":I
    :cond_6
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v10    # "h":I
    goto :goto_4

    .line 4450
    .end local v9    # "w":I
    .end local v10    # "h":I
    :cond_7
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v9, v11, :cond_8

    .line 4451
    move v9, v2

    .restart local v9    # "w":I
    goto :goto_3

    .line 4452
    .end local v9    # "w":I
    :cond_8
    if-eqz v8, :cond_9

    .line 4453
    iget v9, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v9, v9

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v9, v12

    add-float/2addr v9, v10

    float-to-int v9, v9

    .restart local v9    # "w":I
    goto :goto_3

    .line 4455
    .end local v9    # "w":I
    :cond_9
    iget v9, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 4457
    .restart local v9    # "w":I
    :goto_3
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v12, v11, :cond_a

    .line 4458
    move v10, v3

    .restart local v10    # "h":I
    goto :goto_4

    .line 4459
    .end local v10    # "h":I
    :cond_a
    if-eqz v8, :cond_b

    .line 4460
    iget v11, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v11, v11

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v10

    float-to-int v10, v11

    .restart local v10    # "h":I
    goto :goto_4

    .line 4462
    .end local v10    # "h":I
    :cond_b
    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 4466
    .restart local v10    # "h":I
    :goto_4
    if-eqz v8, :cond_c

    .line 4467
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v11, v12

    .line 4468
    .local v11, "x":F
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v12, v12

    iget v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v12, v13

    .local v12, "y":F
    goto :goto_5

    .line 4470
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_c
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    .line 4471
    .restart local v11    # "x":F
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v12, v12

    .line 4474
    .restart local v12    # "y":F
    :goto_5
    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v13

    if-nez v13, :cond_d

    .line 4477
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 4478
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4482
    :cond_d
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v15, v2

    mul-float/2addr v14, v15

    add-float/2addr v14, v11

    float-to-int v15, v14

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v20, v2

    .end local v2    # "pw":I
    .local v20, "pw":I
    int-to-float v2, v3

    mul-float/2addr v14, v2

    add-float/2addr v14, v12

    float-to-int v2, v14

    iget-object v14, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v14

    move v14, v9

    move/from16 v17, v15

    move v15, v10

    move-object/from16 v16, p2

    move/from16 v18, v2

    invoke-static/range {v13 .. v19}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 4487
    if-eqz v6, :cond_e

    .line 4488
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v13, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v14, p3

    invoke-static {v2, v14, v13}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_6

    .line 4487
    :cond_e
    move-object/from16 v14, p3

    .line 4493
    :goto_6
    iget-object v2, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v13, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4494
    if-eqz v8, :cond_f

    .line 4496
    iget-object v2, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->scale(F)V

    .line 4498
    :cond_f
    return-void
.end method

.method private applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    .line 4897
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4898
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4899
    const/4 v0, 0x1

    return v0

    .line 4902
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4907
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4908
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4909
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4910
    :cond_0
    return v0

    .line 4913
    :cond_1
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4914
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4918
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 4915
    :cond_3
    :goto_0
    return v0
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    .line 3640
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 3643
    return-void
.end method

.method private calculateSystemDecorRect(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "systemDecorRect"    # Landroid/graphics/Rect;

    .line 5231
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 5232
    .local v0, "decorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 5233
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 5235
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 5236
    .local v3, "left":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 5239
    .local v4, "top":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 5248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 5249
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v7, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 5250
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 5251
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5249
    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5252
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 5253
    :cond_0
    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5262
    :goto_0
    nop

    .line 5263
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    if-nez v5, :cond_2

    move v6, v7

    :cond_2
    move v5, v6

    .line 5264
    .local v5, "cropToDecor":Z
    if-eqz v5, :cond_3

    .line 5266
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    invoke-virtual {p1, v6, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 5276
    :cond_3
    iget v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5277
    iget v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 5278
    .local v6, "scale":F
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 5279
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 5280
    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v7

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 5281
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    int-to-float v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 5284
    .end local v6    # "scale":F
    :cond_4
    return-void
.end method

.method private canWindowInEmbeddedDisplayBeImeTarget()Z
    .locals 5

    .line 2518
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2519
    .local v0, "embeddedDisplayContentsSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2520
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 2521
    .local v2, "edc":Lcom/android/server/wm/DisplayContent;
    sget-object v3, Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2522
    return v4

    .line 2519
    .end local v2    # "edc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2525
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private computeDragResizing()Z
    .locals 4

    .line 4106
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4107
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4108
    return v1

    .line 4110
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4111
    return v1

    .line 4114
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 4117
    return v1

    .line 4119
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 4123
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 4124
    return v3

    .line 4131
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 4132
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4133
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    nop

    .line 4131
    :goto_0
    return v1

    .line 4121
    :cond_7
    :goto_1
    return v1
.end method

.method private cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 3705
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3706
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3710
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3711
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3715
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3716
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V

    .line 3717
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3718
    return-void

    .line 3712
    :cond_2
    :goto_0
    return-void

    .line 3707
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :goto_1
    return-void
.end method

.method private cutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "toRemove"    # Landroid/graphics/Rect;

    .line 1667
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1668
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_2

    .line 1669
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1

    .line 1670
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1671
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_2

    .line 1672
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1675
    :cond_2
    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_4

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_4

    .line 1676
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    .line 1677
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1678
    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_4

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_4

    .line 1679
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1682
    :cond_4
    :goto_1
    return-void
.end method

.method private forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 4822
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 4823
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4824
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4826
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_2

    iget v5, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v5, :cond_2

    .line 4827
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4828
    return v4

    .line 4830
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 4831
    if-lt v0, v1, :cond_1

    .line 4832
    goto :goto_1

    .line 4834
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 4837
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4838
    return v4

    .line 4841
    :cond_3
    :goto_2
    if-ge v0, v1, :cond_6

    .line 4842
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4843
    return v4

    .line 4845
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 4846
    if-lt v0, v1, :cond_5

    .line 4847
    goto :goto_3

    .line 4849
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4852
    :cond_6
    :goto_3
    return v3
.end method

.method private forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 4859
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4860
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4862
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_0
    if-ltz v0, :cond_2

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_2

    .line 4863
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4864
    return v1

    .line 4866
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 4867
    if-gez v0, :cond_1

    .line 4868
    goto :goto_1

    .line 4870
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 4873
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4874
    return v1

    .line 4877
    :cond_3
    :goto_2
    if-ltz v0, :cond_6

    .line 4878
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4879
    return v1

    .line 4881
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 4882
    if-gez v0, :cond_5

    .line 4883
    goto :goto_3

    .line 4885
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4888
    :cond_6
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method private frameCoversEntireAppTokenBounds()Z
    .locals 2

    .line 4056
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4057
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 4058
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getLastReportedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 2939
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .line 2916
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2917
    .local v0, "parentWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    :goto_0
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 2918
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2919
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 2920
    .local v2, "processConfig":Landroid/content/res/Configuration;
    return-object v2
.end method

.method private getRootTaskId()I
    .locals 2

    .line 3974
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3975
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 3976
    const/4 v1, -0x1

    return v1

    .line 3978
    :cond_0
    iget v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    return v1
.end method

.method private hasMoved()Z
    .locals 2

    .line 2224
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasContentChanged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_2

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2224
    :goto_0
    return v0
.end method

.method private inAppWindowThatMatchesParentBounds()Z
    .locals 1

    .line 4005
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private initExclusionRestrictions()V
    .locals 4

    .line 3553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3554
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 3555
    const/4 v3, 0x1

    aput-wide v0, v2, v3

    .line 3556
    return-void
.end method

.method private isDragResizingChangeReported()Z
    .locals 1

    .line 4089
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return v0
.end method

.method private isLegacyPolicyVisibility()Z
    .locals 2

    .line 1801
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOpaqueDrawn()Z
    .locals 2

    .line 2027
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_2

    .line 2029
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2027
    :goto_0
    return v0
.end method

.method private isParentWindowGoneForLayout()Z
    .locals 2

    .line 4555
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4556
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRecentsAnimationConsumingAppInput()Z
    .locals 2

    .line 3084
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3085
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3086
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3087
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3086
    :goto_0
    return v1
.end method

.method private logExclusionRestrictions(I)V
    .locals 14
    .param p1, "side"    # I

    .line 3530
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v4, v4, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 3538
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3539
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v3, v2, p1

    sub-long v3, v0, v3

    .line 3540
    .local v3, "duration":J
    aput-wide v0, v2, p1

    .line 3542
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v2, v2, p1

    .line 3543
    .local v2, "requested":I
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v13, v5, p1

    .line 3545
    .local v13, "granted":I
    const/16 v5, 0xdf

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sub-int v8, v2, v13

    add-int/lit8 v9, p1, 0x1

    .line 3548
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    move v10, v7

    .line 3549
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v7

    invoke-static {v7}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v11

    long-to-int v12, v3

    .line 3545
    move v7, v2

    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIZZI)V

    .line 3550
    return-void

    .line 3535
    .end local v0    # "now":J
    .end local v2    # "requested":I
    .end local v3    # "duration":J
    .end local v13    # "granted":I
    :cond_2
    :goto_1
    return-void
.end method

.method private logPerformShow(Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 4740
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_5

    .line 4742
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mDrawState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4743
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " readyForDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4744
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " starting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " during animation: policyVis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4746
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " parentHidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4747
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tok.visibleRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tok.visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3

    .line 4750
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " animating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4751
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tok animating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4

    .line 4753
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 4754
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4742
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    :cond_5
    return-void
.end method

.method private matchesDisplayBounds()Z
    .locals 3

    .line 2247
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2248
    .local v0, "displayBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 2250
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2252
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private notifyBlastSyncTransaction()V
    .locals 4

    .line 6159
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 6161
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mNotifyBlastOnSurfacePlacement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6171
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLocalSyncId:I

    if-ltz v0, :cond_1

    .line 6172
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLocalSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 6173
    return-void

    .line 6176
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWaitingSyncId:I

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(ILjava/util/Set;)V

    .line 6178
    iput v1, p0, Lcom/android/server/wm/WindowState;->mWaitingSyncId:I

    .line 6179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mWaitingListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 6180
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotifyBlastOnSurfacePlacement:Z

    .line 6181
    return-void

    .line 6162
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotifyBlastOnSurfacePlacement:Z

    .line 6163
    return-void
.end method

.method private registeredForDisplayConfigChanges()Z
    .locals 3

    .line 3779
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3780
    .local v0, "parentWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 3781
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWpcForDisplayConfigChanges:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    .line 3782
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWpcForDisplayConfigChanges:Lcom/android/server/wm/WindowProcessController;

    :goto_0
    nop

    .line 3783
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->registeredForDisplayConfigChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private removeIfPossible(Z)V
    .locals 27
    .param p1, "keepVisibleDeadWindow"    # Z

    .line 2366
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 2367
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v9, 0x59a7c888

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v2, v10, v6

    aput-object v7, v10, v0

    invoke-static {v8, v9, v6, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2370
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v6

    .line 2371
    .local v2, "startingWindow":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 2372
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v8, :cond_2

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v10, -0x3ad0901b

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v8, v11, v6

    invoke-static {v9, v10, v6, v5, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2375
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    int-to-long v8, v8

    .local v8, "protoLogParam0":J
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam1":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam2":Ljava/lang/String;
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

    const v13, -0x3e766175

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v6

    aput-object v10, v14, v0

    aput-object v11, v14, v3

    invoke-static {v12, v13, v0, v5, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2381
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":Ljava/lang/String;
    .end local v11    # "protoLogParam2":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2384
    .local v8, "origId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2386
    sget-boolean v10, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v10, :cond_5

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    iget-boolean v13, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .local v13, "protoLogParam2":Z
    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .local v14, "protoLogParam3":Z
    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .local v15, "protoLogParam4":Z
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    .local v5, "protoLogParam5":Z
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v16

    .local v16, "protoLogParam6":Z
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v6

    .local v4, "protoLogParam7":Z
    :goto_1
    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .local v11, "protoLogParam8":Z
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .local v7, "protoLogParam9":Z
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "protoLogParam10":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v10, v0, v6

    const/16 v23, 0x1

    aput-object v12, v0, v23

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v22, 0x2

    aput-object v26, v0, v22

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v19, 0x3

    aput-object v26, v0, v19

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v18, 0x4

    aput-object v26, v0, v18

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v17, 0x5

    aput-object v26, v0, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v0, v20

    const/16 v20, 0x7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v0, v20

    const/16 v20, 0x8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v0, v20

    const/16 v20, 0x9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v0, v20

    const/16 v20, 0xa

    aput-object v21, v0, v20

    move/from16 v24, v4

    move/from16 v25, v5

    const v4, 0xffff0

    const/4 v5, 0x0

    const v6, 0x236bb2ae

    .end local v4    # "protoLogParam7":Z
    .end local v5    # "protoLogParam5":Z
    .local v24, "protoLogParam7":Z
    .local v25, "protoLogParam5":Z
    invoke-static {v3, v6, v4, v5, v0}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .end local v7    # "protoLogParam9":Z
    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "protoLogParam8":Z
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    .end local v13    # "protoLogParam2":Z
    .end local v14    # "protoLogParam3":Z
    .end local v15    # "protoLogParam4":Z
    .end local v16    # "protoLogParam6":Z
    .end local v21    # "protoLogParam10":Ljava/lang/String;
    .end local v24    # "protoLogParam7":Z
    .end local v25    # "protoLogParam5":Z
    :cond_5
    move/from16 v22, v3

    move/from16 v17, v4

    const/16 v18, 0x4

    .line 2398
    :goto_2
    const/4 v0, 0x0

    .line 2403
    .local v0, "wasVisible":Z
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2404
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v3, :cond_7

    .line 2407
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_6

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x728caa0f

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    const/4 v10, 0x0

    invoke-static {v4, v5, v6, v10, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2413
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2414
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2415
    return-void

    .line 2419
    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    move v0, v3

    .line 2421
    if-eqz p1, :cond_9

    .line 2422
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_8

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x7e035e26

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    const/4 v10, 0x0

    invoke-static {v4, v5, v6, v10, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2425
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mAppDied:Z

    .line 2426
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2427
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2431
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    .line 2432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2493
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    return-void

    .line 2436
    :cond_9
    if-eqz v0, :cond_c

    .line 2437
    if-nez v2, :cond_a

    move/from16 v3, v22

    goto :goto_3

    :cond_a
    move/from16 v3, v17

    .line 2440
    .local v3, "transit":I
    :goto_3
    :try_start_2
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2441
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2445
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2446
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2448
    :cond_b
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_c

    .line 2449
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2452
    .end local v3    # "transit":I
    :cond_c
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2453
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    .line 2454
    .local v3, "isAnimating":Z
    :goto_4
    if-eqz v2, :cond_f

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2455
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    .line 2461
    .local v4, "lastWindowIsStartingWindow":Z
    :goto_5
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_14

    if-eqz v4, :cond_11

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    const/4 v11, 0x0

    goto :goto_7

    .line 2464
    :cond_11
    :goto_6
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_12

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x41c9625a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v12, 0x0

    invoke-static {v6, v7, v11, v12, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2468
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_12
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2469
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 2468
    invoke-static {v5, v0, v6}, Lcom/android/server/wm/WindowStateInjector;->lockOrientationWhenShowDialog(Ljava/lang/String;ZLcom/android/server/wm/DisplayContent;)V

    .line 2471
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    .line 2472
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_13

    .line 2473
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2493
    :cond_13
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2475
    return-void

    .line 2461
    :cond_14
    const/4 v11, 0x0

    goto :goto_7

    .line 2403
    .end local v3    # "isAnimating":Z
    .end local v4    # "lastWindowIsStartingWindow":Z
    :cond_15
    const/4 v11, 0x0

    .line 2479
    :goto_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2482
    if-eqz v0, :cond_16

    .line 2483
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2484
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2485
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 2488
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_16
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2489
    move/from16 v6, v18

    goto :goto_8

    .line 2490
    :cond_17
    move v6, v11

    :goto_8
    nop

    .line 2488
    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2493
    nop

    .end local v0    # "wasVisible":Z
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2494
    nop

    .line 2495
    return-void

    .line 2493
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2494
    throw v0
.end method

.method private removeReplacedWindow()V
    .locals 6

    .line 2682
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x1319373d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2683
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2684
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 2685
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 2686
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2687
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1

    if-nez v2, :cond_2

    .line 2688
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2690
    :cond_2
    return-void
.end method

.method private setAppOpVisibilityLw(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canSetAppOpVisibilityLw(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3250
    const/4 p1, 0x0

    .line 3253
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_2

    .line 3254
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 3255
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3262
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto :goto_0

    .line 3264
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 3267
    :cond_2
    :goto_0
    return-void
.end method

.method private setTouchableRegionCropIfNeeded(Landroid/view/InputWindowHandle;)V
    .locals 4
    .param p1, "handle"    # Landroid/view/InputWindowHandle;

    .line 3689
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3690
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3695
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 3696
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3701
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 3702
    return-void

    .line 3697
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 3698
    return-void

    .line 3691
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 3692
    return-void
.end method

.method private setupWindowForRemoveOnExit()V
    .locals 3

    .line 2498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2499
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2502
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 2504
    .local v0, "focusChanged":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2505
    if-eqz v0, :cond_0

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2508
    :cond_0
    return-void
.end method

.method private shouldKeepVisibleDeadAppWindow()Z
    .locals 3

    .line 3020
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3025
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 3028
    return v1

    .line 3031
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3034
    return v1

    .line 3037
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->keepVisibleDeadAppWindowOnScreen()Z

    move-result v0

    return v0

    .line 3022
    :cond_3
    :goto_0
    return v1
.end method

.method private shouldSendRedrawForSync()Z
    .locals 3

    .line 6237
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6238
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6239
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    xor-int/2addr v1, v2

    return v1

    .line 6240
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private skipDecorCrop()Z
    .locals 1

    .line 5185
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5186
    const/4 v0, 0x1

    return v0

    .line 5190
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 5191
    const/4 v0, 0x0

    return v0

    .line 5196
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->canLayerAboveSystemBars()Z

    move-result v0

    return v0
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "adapter"    # Lcom/android/server/wm/AnimationAdapter;

    .line 5465
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    const/16 v1, 0x10

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 5466
    return-void
.end method

.method private startMoveAnimation(II)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 5448
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    .line 5449
    return-void

    .line 5452
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting move animation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5454
    .local v0, "oldPosition":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 5455
    .local v1, "newPosition":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 5457
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 5458
    new-instance v2, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v10, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$1;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v2, v10, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 5461
    .local v2, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 5462
    return-void
.end method

.method private subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "layoutFrame"    # Landroid/graphics/Rect;
    .param p3, "insetFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 1101
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1102
    .local v0, "left":I
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1103
    .local v2, "top":I
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1104
    .local v3, "right":I
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1105
    .local v1, "bottom":I
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1106
    return-void
.end method

.method private subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "touchableRegion"    # Landroid/graphics/Region;

    .line 3725
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3726
    return-void

    .line 3728
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 3729
    .local v0, "touchExcludeRegion":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3730
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3731
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3733
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 3734
    return-void
.end method

.method private transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "outPoint"    # Landroid/graphics/Point;

    .line 5693
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 5696
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 5697
    .local v0, "parentWindowContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5703
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 5704
    .local v1, "parent":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5705
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .end local v1    # "parent":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 5707
    :cond_0
    if-eqz v0, :cond_1

    .line 5708
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 5709
    .local v1, "parentBounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    goto :goto_1

    .line 5707
    .end local v1    # "parentBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    nop

    .line 5712
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 5718
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_2

    .line 5719
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTaskOutset()I

    move-result v2

    .line 5720
    .local v2, "outset":I
    invoke-virtual {p3, v2, v2}, Landroid/graphics/Point;->offset(II)V

    .line 5724
    .end local v2    # "outset":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5725
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 5726
    return-void
.end method

.method private transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outPos"    # Landroid/graphics/Point;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 5733
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5734
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5735
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 5736
    return-void

    .line 5738
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5739
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 5740
    return-void
.end method

.method private updateRegionForModalActivityWindow(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 2797
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 2798
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2804
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2805
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2806
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2807
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2808
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2811
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V

    .line 2812
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2813
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 2818
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2819
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 2822
    :cond_2
    return-void
.end method


# virtual methods
.method addEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 5390
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method addWinAnimatorToList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;)V"
        }
    .end annotation

    .line 3374
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3376
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3377
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3378
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->addWinAnimatorToList(Ljava/util/ArrayList;)V

    .line 3376
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3380
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method adjustStartingWindowFlags()V
    .locals 5

    .line 2943
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 2948
    const v0, 0x480001

    .line 2950
    .local v0, "mask":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2951
    .local v1, "sa":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x480002

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x480001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2953
    .end local v0    # "mask":I
    .end local v1    # "sa":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5808
    const/4 v0, 0x2

    .line 5809
    .local v0, "layer":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5810
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5816
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_1

    .line 5817
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const/4 v4, -0x2

    if-eqz v3, :cond_0

    .line 5818
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowState;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_1

    .line 5820
    :cond_0
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_1

    .line 5822
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_3

    .line 5823
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 5824
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowState;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_1

    .line 5826
    :cond_2
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_1

    .line 5829
    :cond_3
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5831
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5832
    nop

    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, 0x1

    .line 5809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5834
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 5790
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5791
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 5792
    return-void

    .line 5794
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5795
    return-void
.end method

.method attach()V
    .locals 2

    .line 1025
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->windowAddedLocked(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method calculatePolicyCrop(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "policyCrop"    # Landroid/graphics/Rect;

    .line 5205
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5207
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5210
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 5211
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 5212
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 5211
    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5213
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 5216
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->skipDecorCrop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5218
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 5219
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 5218
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5222
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->calculateSystemDecorRect(Landroid/graphics/Rect;)V

    .line 5224
    :goto_0
    return-void
.end method

.method public canAcquireSleepToken()Z
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    return v0
.end method

.method public canAddInternalSystemWindow()Z
    .locals 1

    .line 1085
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return v0
.end method

.method canAffectSystemUiFlags()Z
    .locals 5

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1935
    return v1

    .line 1937
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 1938
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    .line 1939
    .local v0, "shown":Z
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 1940
    .local v3, "exiting":Z
    :goto_1
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1942
    .end local v0    # "shown":Z
    .end local v3    # "exiting":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1943
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    .line 1944
    .local v3, "canFromTask":Z
    :goto_2
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method canBeImeTarget()Z
    .locals 5

    .line 2533
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->canWindowInEmbeddedDisplayBeImeTarget()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2534
    return v1

    .line 2537
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2540
    return v2

    .line 2543
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2544
    return v2

    .line 2547
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f4

    if-ne v0, v3, :cond_3

    .line 2549
    return v2

    .line 2552
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    move v0, v1

    .line 2553
    .local v0, "windowsAreFocusable":Z
    if-nez v0, :cond_6

    .line 2555
    return v2

    .line 2558
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2559
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2562
    return v2

    .line 2565
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    goto :goto_1

    .line 2577
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x20008

    and-int/2addr v3, v4

    .line 2581
    .local v3, "fl":I
    if-eqz v3, :cond_9

    if-eq v3, v4, :cond_9

    .line 2582
    return v2

    .line 2586
    .end local v3    # "fl":I
    :cond_9
    :goto_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_a

    .line 2587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleOrAdding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSurfaceController="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " relayoutCalled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " viewVis="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " policyVis="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " policyVisAfterAnim="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " parentHidden="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " exiting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " destroying="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2589
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_a

    .line 2597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mActivityRecord.visibleRequested="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v2

    return v2
.end method

.method canDoMoveAnim(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2162
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2163
    return v0

    .line 2165
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget-object v2, Lcom/android/server/wm/WindowState;->DISABLE_MOVE_ANIM_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2166
    sget-object v2, Lcom/android/server/wm/WindowState;->DISABLE_MOVE_ANIM_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2167
    .local v2, "disableName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2168
    const/4 v0, 0x0

    return v0

    .line 2165
    .end local v2    # "disableName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2171
    .end local v1    # "index":I
    :cond_2
    return v0
.end method

.method public canReceiveKeys()Z
    .locals 1

    .line 3042
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result v0

    return v0
.end method

.method public canReceiveKeys(Z)Z
    .locals 4
    .param p1, "fromUserTouch"    # Z

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 3049
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3050
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3051
    .local v0, "canReceiveKeys":Z
    :goto_0
    if-nez v0, :cond_2

    .line 3052
    return v2

    .line 3056
    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isOnTop()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3057
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    nop

    .line 3056
    :goto_2
    return v1
.end method

.method public canShowTransient()Z
    .locals 3

    .line 3943
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsQuickReplyApp:Z

    if-eqz v0, :cond_0

    .line 3944
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickReply: canShowTransient for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    return v1

    .line 3949
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canShowWhenLocked()Z
    .locals 5

    .line 3062
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3063
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3064
    .local v0, "showBecauseOfActivity":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3065
    .local v3, "showBecauseOfWindow":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method cantReceiveTouchInput()Z
    .locals 2

    .line 3070
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3074
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldIgnoreInput()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    .line 3076
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isRecentsAnimationConsumingAppInput()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 3074
    :cond_2
    return v1

    .line 3071
    :cond_3
    :goto_0
    return v1
.end method

.method checkPolicyVisibilityChange()V
    .locals 6

    .line 2825
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_4

    .line 2826
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy visibility changing after anim in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2831
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_0

    .line 2833
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2835
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2836
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v2, "checkPolicyVisibilityChange"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2838
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x2954cf78

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2840
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2842
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2846
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2849
    :cond_4
    return-void
.end method

.method clearAnimatingFlags()Z
    .locals 3

    .line 5052
    const/4 v0, 0x0

    .line 5060
    .local v0, "didSomething":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_1

    .line 5068
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5069
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 5070
    const/4 v0, 0x1

    .line 5072
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_1

    .line 5073
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 5074
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5075
    const/4 v0, 0x1

    .line 5079
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5080
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v2

    or-int/2addr v0, v2

    .line 5079
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5083
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method clearPolicyVisibilityFlag(I)V
    .locals 2
    .param p1, "policyVisibilityFlag"    # I

    .line 1791
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1792
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1793
    return-void
.end method

.method clearWillReplaceWindow()V
    .locals 2

    .line 4578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 4579
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 4580
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 4582
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4583
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4584
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 4582
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4586
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method computeFrame(Lcom/android/server/wm/DisplayFrames;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSimulatedWindowFrames:Lcom/android/server/wm/WindowFrames;

    if-nez v1, :cond_0

    .line 1114
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame()V

    .line 1116
    :cond_0
    return-void
.end method

.method public computeFrameLw()V
    .locals 25

    .line 1120
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    if-nez v1, :cond_1

    .line 1125
    :cond_0
    return-void

    .line 1127
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1130
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1131
    .local v3, "isFullscreenAndFillsDisplay":Z
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v4

    .line 1132
    .local v5, "windowsAreFloating":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 1133
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 1134
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v8

    .line 1136
    .local v8, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1148
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    .line 1149
    .local v9, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_5

    .line 1150
    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_4

    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-ne v2, v10, :cond_4

    move v10, v1

    goto :goto_2

    :cond_4
    move v10, v4

    goto :goto_2

    .line 1151
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v10

    :goto_2
    nop

    .line 1152
    .local v10, "isInputMethodAdjustTarget":Z
    if-eqz v9, :cond_6

    .line 1153
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    move v11, v1

    goto :goto_3

    :cond_6
    move v11, v4

    .line 1157
    .local v11, "isImeTarget":Z
    :goto_3
    sget-boolean v12, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v12, :cond_7

    .line 1158
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-static {v0, v12}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->adjustWindowFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowFrames;)V

    .line 1162
    :cond_7
    if-nez v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v17, v2

    move-object/from16 v18, v9

    goto/16 :goto_5

    .line 1170
    :cond_8
    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1171
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_9

    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1175
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1176
    .local v12, "frozen":Landroid/graphics/Rect;
    iget-object v13, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    .line 1177
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 1178
    iget-object v13, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    .line 1179
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 1182
    .end local v12    # "frozen":Landroid/graphics/Rect;
    :cond_9
    if-eqz v11, :cond_b

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1186
    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    .line 1188
    .local v12, "bottomOverlap":I
    if-lez v12, :cond_b

    .line 1189
    iget-object v13, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1191
    .local v13, "distanceToTop":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1192
    .local v14, "offs":I
    iget-object v15, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    neg-int v1, v14

    invoke-virtual {v15, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1193
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    neg-int v15, v14

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 1195
    .end local v12    # "bottomOverlap":I
    .end local v13    # "distanceToTop":I
    .end local v14    # "offs":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-le v1, v12, :cond_b

    .line 1200
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iput v12, v1, Landroid/graphics/Rect;->bottom:I

    nop

    .line 1204
    :cond_b
    :goto_4
    if-eqz v5, :cond_c

    .line 1208
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1209
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1213
    :cond_c
    new-instance v1, Landroid/graphics/Rect;

    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1214
    .local v1, "layoutDisplayFrame":Landroid/graphics/Rect;
    iget-object v12, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v13, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1215
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    .line 1216
    .local v12, "layoutXDiff":I
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    .line 1217
    .local v13, "layoutYDiff":I
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 1218
    .local v14, "layoutContainingFrame":Landroid/graphics/Rect;
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v17, v2

    .end local v2    # "task":Lcom/android/server/wm/Task;
    .local v17, "task":Lcom/android/server/wm/Task;
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v18, v9

    .end local v9    # "imeWin":Lcom/android/server/wm/WindowState;
    .local v18, "imeWin":Lcom/android/server/wm/WindowState;
    iget v9, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v15, v4, v4, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1219
    iget-object v2, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v14, v1, v9}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1222
    iget-object v2, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v14, v9, v15}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1224
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v14, v9, v15}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1227
    :cond_d
    invoke-virtual {v1, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_6

    .line 1162
    .end local v1    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v12    # "layoutXDiff":I
    .end local v13    # "layoutYDiff":I
    .end local v14    # "layoutContainingFrame":Landroid/graphics/Rect;
    .end local v17    # "task":Lcom/android/server/wm/Task;
    .end local v18    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v2    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_e
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    .line 1164
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v17    # "task":Lcom/android/server/wm/Task;
    .restart local v18    # "imeWin":Lcom/android/server/wm/WindowState;
    :goto_5
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1165
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1166
    .restart local v1    # "layoutDisplayFrame":Landroid/graphics/Rect;
    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 1167
    .restart local v14    # "layoutContainingFrame":Landroid/graphics/Rect;
    const/4 v12, 0x0

    .line 1168
    .restart local v12    # "layoutXDiff":I
    const/4 v13, 0x0

    .line 1230
    .restart local v13    # "layoutYDiff":I
    :goto_6
    iget-object v2, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1231
    .local v2, "pw":I
    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1233
    .local v9, "ph":I
    iget v15, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v15, v4, :cond_f

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v15, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v4, v15, :cond_10

    .line 1234
    :cond_f
    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1235
    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1236
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 1239
    :cond_10
    iget-object v4, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1240
    .local v4, "fw":I
    iget-object v15, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1242
    .local v15, "fh":I
    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Lcom/android/server/wm/WindowFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1246
    move-object/from16 v20, v1

    .end local v1    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .local v20, "layoutDisplayFrame":Landroid/graphics/Rect;
    if-eqz v5, :cond_14

    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1247
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1248
    .local v1, "visBottom":I
    move-object/from16 v21, v7

    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .local v21, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 1251
    .local v7, "contentBottom":I
    move/from16 v22, v10

    .end local v10    # "isInputMethodAdjustTarget":Z
    .local v22, "isInputMethodAdjustTarget":Z
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1253
    .local v10, "contentTop":I
    move-object/from16 v23, v14

    .end local v14    # "layoutContainingFrame":Landroid/graphics/Rect;
    .local v23, "layoutContainingFrame":Landroid/graphics/Rect;
    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    move/from16 v24, v9

    .end local v9    # "ph":I
    .local v24, "ph":I
    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1254
    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1255
    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1256
    if-eqz v11, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1259
    add-int v9, v7, v13

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v14, :cond_11

    .line 1260
    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    add-int v14, v7, v13

    iput v14, v9, Landroid/graphics/Rect;->bottom:I

    .line 1262
    :cond_11
    add-int v9, v1, v13

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v14, :cond_12

    .line 1263
    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    add-int v14, v1, v13

    iput v14, v9, Landroid/graphics/Rect;->bottom:I

    .line 1269
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/OpQuickReplyInjector;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1270
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    const/4 v14, 0x0

    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 1272
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 1273
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 1276
    .end local v1    # "visBottom":I
    .end local v7    # "contentBottom":I
    .end local v10    # "contentTop":I
    :cond_13
    move/from16 v16, v11

    goto/16 :goto_7

    .line 1246
    .end local v21    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "isInputMethodAdjustTarget":Z
    .end local v23    # "layoutContainingFrame":Landroid/graphics/Rect;
    .end local v24    # "ph":I
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v9    # "ph":I
    .local v10, "isInputMethodAdjustTarget":Z
    .restart local v14    # "layoutContainingFrame":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v21, v7

    move/from16 v24, v9

    move/from16 v22, v10

    move-object/from16 v23, v14

    .line 1276
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v9    # "ph":I
    .end local v10    # "isInputMethodAdjustTarget":Z
    .end local v14    # "layoutContainingFrame":Landroid/graphics/Rect;
    .restart local v21    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22    # "isInputMethodAdjustTarget":Z
    .restart local v23    # "layoutContainingFrame":Landroid/graphics/Rect;
    .restart local v24    # "ph":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7f2

    if-ne v1, v7, :cond_16

    .line 1277
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1278
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1279
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    move/from16 v16, v11

    goto/16 :goto_7

    .line 1278
    :cond_15
    move/from16 v16, v11

    goto/16 :goto_7

    .line 1282
    :cond_16
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 1283
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1284
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    .line 1285
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v11

    .end local v11    # "isImeTarget":Z
    .local v16, "isImeTarget":Z
    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 1286
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1282
    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1288
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 1289
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1290
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 1291
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 1292
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1288
    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1294
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 1295
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1296
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 1297
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 1298
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1294
    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1301
    :goto_7
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7f2

    if-ne v1, v7, :cond_17

    .line 1302
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1304
    .local v1, "c":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowFrames;->calculateDockedDividerInsets(Landroid/graphics/Rect;)V

    .line 1305
    .end local v1    # "c":Lcom/android/server/wm/utils/WmDisplayCutout;
    goto :goto_8

    .line 1306
    :cond_17
    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1307
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1306
    invoke-virtual {v8, v5, v3, v1}, Lcom/android/server/wm/WindowFrames;->calculateInsets(ZZLandroid/graphics/Rect;)V

    .line 1310
    :goto_8
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1311
    invoke-virtual {v1, v7}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1310
    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1314
    neg-int v1, v12

    neg-int v7, v13

    invoke-virtual {v8, v1, v7}, Lcom/android/server/wm/WindowFrames;->offsetFrames(II)V

    .line 1316
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1321
    iget v1, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowFrames;->scaleInsets(F)V

    .line 1325
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v7, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 1328
    :cond_18
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_1a

    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v4, v1, :cond_19

    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1329
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v15, v1, :cond_1a

    .line 1330
    :cond_19
    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 1334
    :cond_1a
    iget-object v1, v8, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v7, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1336
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v7, 0x0

    .line 1337
    .local v7, "parentLeft":I
    const/4 v9, 0x0

    .line 1338
    .local v9, "parentTop":I
    iget-boolean v10, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v10, :cond_1b

    .line 1339
    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v7, v10, Landroid/graphics/Rect;->left:I

    .line 1340
    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v9, v10, Landroid/graphics/Rect;->top:I

    goto :goto_9

    .line 1341
    :cond_1b
    if-eqz v1, :cond_1c

    .line 1342
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 1343
    .local v10, "parentBounds":Landroid/graphics/Rect;
    iget v7, v10, Landroid/graphics/Rect;->left:I

    .line 1344
    iget v9, v10, Landroid/graphics/Rect;->top:I

    .line 1346
    .end local v10    # "parentBounds":Landroid/graphics/Rect;
    :cond_1c
    :goto_9
    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v7

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v9

    invoke-virtual {v10, v11, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1349
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-nez v10, :cond_1e

    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v10, :cond_1d

    goto :goto_a

    :cond_1d
    move-object/from16 v19, v1

    move/from16 v11, v24

    goto :goto_b

    .line 1350
    :cond_1e
    :goto_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resolving (mRequestedWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mRequestedheight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to (pw="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", ph="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v24

    .end local v24    # "ph":I
    .local v11, "ph":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "): frame="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1353
    invoke-virtual {v14}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    move-object/from16 v19, v1

    .end local v1    # "parent":Lcom/android/server/wm/WindowContainer;
    .local v19, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowFrames;->getInsetsInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1355
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1350
    const-string v10, "WindowManager"

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_b
    return-void
.end method

.method destroySurface(ZZ)Z
    .locals 17
    .param p1, "cleanupOnResume"    # Z
    .param p2, "appStopped"    # Z

    .line 3458
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 3461
    .local v3, "destroyedSomething":Z
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3462
    .local v4, "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 3463
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 3464
    .local v7, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7, v1, v2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v8

    or-int/2addr v3, v8

    .line 3462
    .end local v7    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3467
    .end local v5    # "i":I
    :cond_0
    if-nez v2, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 3468
    return v3

    .line 3471
    :cond_1
    if-nez v2, :cond_2

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-eqz v5, :cond_3

    .line 3472
    :cond_2
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 3475
    :cond_3
    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v5, :cond_9

    .line 3476
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    move/from16 v8, p2

    .local v8, "protoLogParam1":Z
    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .local v9, "protoLogParam2":Z
    iget-boolean v10, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .local v10, "protoLogParam3":Z
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x5e07f409

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v5, v15, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v6

    const/4 v6, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v6

    const/4 v6, 0x3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/server/protolog/ProtoLogImpl;->e(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3481
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Z
    .end local v9    # "protoLogParam2":Z
    .end local v10    # "protoLogParam3":Z
    :cond_4
    if-eqz v1, :cond_5

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v5, :cond_6

    .line 3482
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 3484
    :cond_6
    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v5, :cond_7

    .line 3485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 3487
    :cond_7
    if-eqz v1, :cond_8

    .line 3488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3490
    :cond_8
    iput-boolean v7, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 3491
    const/4 v3, 0x1

    .line 3495
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3496
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3497
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3501
    :cond_9
    return v3
.end method

.method destroySurfaceUnchecked()V
    .locals 1

    .line 3508
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 3512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3513
    return-void
.end method

.method dispatchWallpaperVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .line 5115
    nop

    .line 5116
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5120
    .local v0, "hideAllowed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p1, :cond_4

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 5121
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 5123
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating vis of wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " from:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const-string v4, "  "

    .line 5125
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5123
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5128
    goto :goto_1

    .line 5127
    :catch_0
    move-exception v1

    .line 5130
    :cond_4
    :goto_1
    return-void
.end method

.method disposeInputChannel()V
    .locals 3

    .line 2643
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    .line 2645
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2653
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2655
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 2656
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2657
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2659
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v2, v2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v2, v2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 2662
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 4219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rootTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 4224
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4223
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOwnerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " showForAllUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4226
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 4228
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Requested w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4233
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v0, v2, :cond_2

    .line 4234
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LastRequested w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4237
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_4

    .line 4238
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mParentWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4241
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v0, :cond_6

    .line 4242
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsFloatingLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4247
    :cond_6
    if-eqz p3, :cond_7

    .line 4248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4249
    const-string v0, " mSubLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4251
    :cond_7
    if-eqz p3, :cond_9

    .line 4252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4253
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    .line 4254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAppDied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "drawnStateEvaluated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mightAffectAllDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4259
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHaveFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mObscured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSystemUiVisibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 4263
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4262
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4265
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_a

    .line 4266
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_b

    .line 4268
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPolicyVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLegacyPolicyVisibilityAfterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppOpVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parentHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPermanentlyHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHiddenWhileSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mForceHideNonSystemOverlayWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4268
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4276
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_d

    .line 4277
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRelayoutCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    :cond_d
    if-eqz p3, :cond_10

    .line 4281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mGivenContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 4282
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_f

    .line 4284
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouchableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGivenInsetsPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4286
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 4287
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 4288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "touchable region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4290
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFullConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4293
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isReadyForDisplay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWindowRemovalAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4293
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4296
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCompatFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4299
    :cond_11
    if-eqz p3, :cond_12

    .line 4300
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowFrames;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4303
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4305
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4306
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_14

    .line 4307
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAnimatingExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRemoveOnExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDestroying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4312
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v0, :cond_17

    .line 4313
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOrientationChanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " configOrientationChanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4315
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_0

    :cond_16
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppFreezing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mReportOrientationChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4319
    :cond_17
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v0, :cond_18

    .line 4320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFreezeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4321
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4322
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4324
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mForceSeamlesslyRotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " seamlesslyRotate: pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4326
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_19

    .line 4327
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 4329
    :cond_19
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4331
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " finishedFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4333
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    .line 4334
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mVScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4337
    :cond_1b
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    .line 4338
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4341
    :cond_1d
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    .line 4342
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperXStep="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperYStep="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4345
    :cond_1f
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    .line 4346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperZoomOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4348
    :cond_20
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_22

    .line 4350
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperDisplayOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperDisplayOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4353
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_23

    .line 4354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDrawLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4356
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isDragResizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4359
    :cond_24
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "computeDragResizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4362
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4364
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 4365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEmbeddedDisplayContents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    :cond_26
    if-eqz p3, :cond_27

    .line 4368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRequestedInsetsState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRequestedInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4370
    :cond_27
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 4166
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    .line 4167
    .local v0, "isVisible":Z
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    if-nez v0, :cond_0

    .line 4168
    return-void

    .line 4171
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4172
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4173
    const-wide v3, 0x10b00000002L

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4174
    const-wide v3, 0x10500000003L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4175
    const-wide v3, 0x10500000004L

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getRootTaskId()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4176
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/WindowManager$LayoutParams;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4177
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4178
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const-wide v4, 0x10b00000029L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/WindowFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4179
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const-wide v4, 0x10b0000000cL

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4180
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const-wide v4, 0x10b00000010L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Point;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4181
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4182
    const-wide v3, 0x1080000000eL

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4183
    const-wide v3, 0x10500000012L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4184
    const-wide v3, 0x10500000013L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4185
    const-wide v3, 0x10500000014L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4186
    const-wide v3, 0x10500000015L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4187
    const-wide v3, 0x10800000016L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4188
    const-wide v3, 0x10800000017L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4189
    const-wide v3, 0x10800000022L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4190
    const-wide v3, 0x10800000023L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4191
    const-wide v3, 0x10800000024L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4192
    const-wide v3, 0x10800000025L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4193
    const-wide v3, 0x10800000026L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4194
    const-wide v3, 0x10800000027L

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4195
    const-wide v3, 0x10300000028L

    iget-wide v5, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4196
    const-wide v3, 0x1080000002aL

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4197
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4198
    return-void
.end method

.method expandForSurfaceInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 5293
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 5297
    return-void
.end method

.method fillsDisplay()Z
    .locals 3

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2241
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method finishDrawing(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2
    .param p1, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 6146
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mUsingBLASTSyncTransaction:Z

    if-nez v0, :cond_0

    .line 6147
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    return v0

    .line 6150
    :cond_0
    if-eqz p1, :cond_1

    .line 6151
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mBLASTSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 6154
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mNotifyBlastOnSurfacePlacement:Z

    .line 6155
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    return v0
.end method

.method finishSeamlessRotation(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SeamlessRotator;->finish(Lcom/android/server/wm/WindowState;Z)V

    .line 826
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 828
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->finishSeamlessRotation(Z)V

    .line 834
    :cond_0
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    .line 4806
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4808
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 4811
    :cond_0
    if-eqz p2, :cond_1

    .line 4812
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0

    .line 4814
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 2288
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 2292
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 2293
    return-void
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 6065
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6066
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 6067
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6074
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6077
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 6079
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 6073
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6081
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6084
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 6085
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowState;->getStableInsets(Landroid/graphics/Rect;)V

    .line 6086
    return-void
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 3959
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3960
    .local v0, "resizing":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->useWindowFrameForBackdrop()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 3968
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 3969
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3970
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object v1

    .line 3964
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3965
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3966
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method public getBaseType()I
    .locals 1

    .line 1454
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1365
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getClientViewRootSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 6117
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getCompatFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 1415
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1416
    return-void
.end method

.method getCompatFrameSize(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 1419
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1420
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .line 3760
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3761
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0

    .line 3766
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->registeredForDisplayConfigChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3767
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0

    .line 3772
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3773
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3774
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getContainingFrame()Landroid/graphics/Rect;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getContentInsets()Landroid/graphics/Rect;
    .locals 1

    .line 5938
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getContentInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outContentInsets"    # Landroid/graphics/Rect;

    .line 5934
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5935
    return-void
.end method

.method getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .locals 1

    .line 5997
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method getDecorFrame()Landroid/graphics/Rect;
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .locals 1
    .param p1, "originalFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1613
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v0

    .line 1614
    .local v0, "diplayFrames":Lcom/android/server/wm/DisplayFrames;
    if-eqz v0, :cond_0

    .line 1615
    return-object v0

    .line 1617
    :cond_0
    return-object p1
.end method

.method public getDisplayId()I
    .locals 2

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1639
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 1640
    const/4 v1, -0x1

    return v1

    .line 1642
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    return v1
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .line 1621
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1622
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_0

    .line 1623
    return-object v0

    .line 1625
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    return-object v1
.end method

.method getDrawnStateEvaluated()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return v0
.end method

.method getEffectiveTouchableRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 3676
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3677
    .local v0, "modal":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3679
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3680
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3681
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3682
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_1

    .line 3684
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3686
    :goto_1
    return-void
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getFrameNumber()J
    .locals 2

    .line 5894
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    :goto_0
    return-wide v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .line 1424
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    .line 5780
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5781
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 5784
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    return-object v2
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .line 1731
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 1732
    iget-wide v0, v0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutNanos:J

    goto :goto_0

    .line 1733
    :cond_0
    const-wide v0, 0x12a05f200L

    .line 1731
    :goto_0
    return-wide v0
.end method

.method getInsetsForRelayout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outContentInsets"    # Landroid/graphics/Rect;
    .param p2, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;

    .line 5926
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5927
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5928
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5930
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5931
    return-void
.end method

.method getInsetsState()Landroid/view/InsetsState;
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1630
    .local v0, "insetsState":Landroid/view/InsetsState;
    if-eqz v0, :cond_0

    .line 1631
    return-object v0

    .line 1633
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v1

    return-object v1
.end method

.method getKeyInterceptionInfo()Lcom/android/internal/policy/KeyInterceptionInfo;
    .locals 4

    .line 6048
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 6049
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 6050
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    iget-object v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 6051
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 6052
    :cond_0
    new-instance v0, Lcom/android/internal/policy/KeyInterceptionInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6053
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/KeyInterceptionInfo;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 6055
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    return-object v0
.end method

.method getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 2935
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2936
    return-void
.end method

.method getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;
    .locals 1

    .line 5975
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSimulatedWindowFrames:Lcom/android/server/wm/WindowFrames;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    :goto_0
    return-object v0
.end method

.method public getMaxVisibleBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 5902
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5903
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5904
    return-void

    .line 5907
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    .line 5908
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5910
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    .line 5911
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5913
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3

    .line 5914
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5916
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_4

    .line 5917
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5919
    :cond_4
    return-void
.end method

.method getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "outConfiguration"    # Landroid/util/MergedConfiguration;

    .line 2924
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2925
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2926
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2927
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 4374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4375
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4374
    return-object v0
.end method

.method getOrientationChanging()Z
    .locals 2

    .line 1576
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1576
    :goto_0
    return v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .locals 1

    .line 1075
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method getParentFrame()Landroid/graphics/Rect;
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 4530
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 4202
    const-wide v0, 0x10b00000008L

    return-wide v0
.end method

.method getRelativeFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 4656
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v0, :cond_0

    .line 4657
    return-object p0

    .line 4659
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4660
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4661
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4662
    .local v2, "replacing":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    .line 4663
    return-object v2

    .line 4659
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    .end local v2    # "replacing":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4666
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestedInsetsState()Landroid/view/InsetsState;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRequestedInsetsState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getResizeMode()I
    .locals 1

    .line 4102
    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    return v0
.end method

.method getRootTask()Lcom/android/server/wm/ActivityStack;
    .locals 4

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1651
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    return-object v1

    .line 1656
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1658
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1657
    :goto_0
    return-object v2
.end method

.method public getRotationAnimationHint()I
    .locals 1

    .line 4671
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 4672
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    return v0

    .line 4674
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 5593
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v0, :cond_0

    .line 5594
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    return-object v0

    .line 5596
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0
.end method

.method getStableFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStableInsets()Landroid/graphics/Rect;
    .locals 1

    .line 5946
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStableInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outStableInsets"    # Landroid/graphics/Rect;

    .line 5942
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5943
    return-void
.end method

.method public getStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 6262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .line 1449
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method getSurfaceTouchableRegion(Landroid/view/InputWindowHandle;I)I
    .locals 8
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "flags"    # I

    .line 2732
    and-int/lit8 v0, p2, 0x28

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2733
    .local v0, "modal":Z
    :goto_0
    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 2734
    .local v1, "region":Landroid/graphics/Region;
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->setTouchableRegionCropIfNeeded(Landroid/view/InputWindowHandle;)V

    .line 2736
    if-eqz v0, :cond_2

    .line 2737
    or-int/lit8 p2, p2, 0x20

    .line 2738
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    .line 2740
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->updateRegionForModalActivityWindow(Landroid/graphics/Region;)V

    goto :goto_1

    .line 2745
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 2746
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2747
    .local v2, "dw":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2748
    .local v3, "dh":I
    neg-int v4, v2

    neg-int v5, v3

    add-int v6, v2, v2

    add-int v7, v3, v3

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 2750
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_2

    .line 2753
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2757
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 2763
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 2765
    iget v2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->scale(F)V

    .line 2768
    :cond_3
    return p2
.end method

.method getSystemGestureExclusion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    return-object v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .line 1444
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method getTapExcludeRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 5871
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5872
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5874
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5875
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5879
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->translate(II)V

    .line 5880
    return-void
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getTopParentWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 4535
    move-object v0, p0

    .line 4536
    .local v0, "current":Lcom/android/server/wm/WindowState;
    move-object v1, v0

    .line 4537
    .local v1, "topParent":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_1

    .line 4538
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4542
    if-eqz v0, :cond_0

    .line 4543
    move-object v1, v0

    goto :goto_0

    .line 4546
    :cond_1
    return-object v1
.end method

.method getTouchableRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 3647
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 3648
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3651
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3652
    goto :goto_0

    .line 3660
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3661
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 3657
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3658
    goto :goto_0

    .line 3654
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3655
    nop

    .line 3665
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3666
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    .line 3667
    return-void
.end method

.method getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .locals 9
    .param p1, "float9"    # [F
    .param p2, "outMatrix"    # Landroid/graphics/Matrix;

    .line 5481
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 5482
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 5483
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 5484
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 5485
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5486
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    .line 5487
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    .line 5491
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 5492
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5493
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 5494
    .local v3, "displayParent":Lcom/android/server/wm/WindowState;
    int-to-float v4, v0

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 5495
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 5496
    int-to-float v4, v1

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 5497
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v8, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 5498
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 5499
    .end local v3    # "displayParent":Lcom/android/server/wm/WindowState;
    goto :goto_0

    .line 5502
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 5503
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5504
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 5505
    .local v4, "parentWindow":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 5506
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    goto :goto_1

    .line 5507
    :cond_1
    if-eqz v3, :cond_2

    .line 5508
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 5509
    .local v4, "parentBounds":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    .line 5510
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    goto :goto_2

    .line 5507
    .end local v4    # "parentBounds":Landroid/graphics/Rect;
    :cond_2
    :goto_1
    nop

    .line 5512
    :goto_2
    const/4 v4, 0x2

    int-to-float v5, v0

    aput v5, p1, v4

    .line 5513
    const/4 v4, 0x5

    int-to-float v5, v1

    aput v5, p1, v4

    .line 5514
    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 5515
    const/4 v4, 0x7

    aput v5, p1, v4

    .line 5516
    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p1, v4

    .line 5517
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 5518
    return-void
.end method

.method getVisibleBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1690
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1691
    .local v1, "intersectWithStackBounds":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1692
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1693
    if-eqz v1, :cond_3

    .line 1694
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1695
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_1

    .line 1696
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1698
    :cond_1
    const/4 v1, 0x0

    .line 1700
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1705
    nop

    .line 1706
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1707
    .local v3, "rootSecondary":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1708
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1709
    .local v4, "topTask":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1710
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowState;->cutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1716
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "rootSecondary":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "topTask":Lcom/android/server/wm/WindowContainer;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1717
    if-eqz v1, :cond_4

    .line 1718
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1721
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1722
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1723
    if-eqz v1, :cond_5

    .line 1724
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1726
    :cond_5
    return-void

    .line 1728
    :cond_6
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getVisibleInsets()Landroid/graphics/Rect;
    .locals 1

    .line 5954
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 3918
    return-object p0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 4922
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4923
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    .line 4929
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4930
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4932
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_0
    if-ltz v0, :cond_4

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_4

    .line 4933
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4934
    return-object v2

    .line 4936
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 4937
    if-gez v0, :cond_3

    .line 4938
    goto :goto_1

    .line 4940
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 4943
    :cond_4
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4944
    return-object p0

    .line 4947
    :cond_5
    :goto_2
    if-ltz v0, :cond_8

    .line 4948
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4949
    return-object v2

    .line 4951
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 4952
    if-gez v0, :cond_7

    .line 4953
    goto :goto_3

    .line 4955
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4958
    :cond_8
    :goto_3
    return-object v1
.end method

.method public getWindowFrames()Lcom/android/server/wm/WindowFrames;
    .locals 1

    .line 5959
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    return-object v0
.end method

.method getWindowInfo()Landroid/view/WindowInfo;
    .locals 9

    .line 4759
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 4760
    .local v0, "windowInfo":Landroid/view/WindowInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 4761
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 4762
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 4763
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 4764
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_0

    .line 4765
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord$Token;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 4767
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4770
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 4774
    .local v1, "isPanelWindow":Z
    :goto_0
    iget v2, v0, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7f0

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4776
    .local v2, "isAccessibilityOverlay":Z
    :goto_1
    iget-object v5, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 4777
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 4778
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move-object v6, v5

    :goto_2
    iput-object v6, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4780
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v5, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 4781
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v0, Landroid/view/WindowInfo;->focused:Z

    .line 4782
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 4783
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    iput-boolean v6, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 4784
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    move v3, v4

    :cond_7
    iput-boolean v3, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 4787
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v3, :cond_8

    .line 4788
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 4791
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 4792
    .local v3, "childCount":I
    if-lez v3, :cond_a

    .line 4793
    iget-object v4, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v4, :cond_9

    .line 4794
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 4796
    :cond_9
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v3, :cond_a

    .line 4797
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4798
    .local v6, "child":Lcom/android/server/wm/WindowState;
    iget-object v7, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4796
    .end local v6    # "child":Lcom/android/server/wm/WindowState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4801
    .end local v4    # "j":I
    :cond_a
    return-object v0
.end method

.method public getWindowPid()I
    .locals 1

    .line 1971
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    return v0
.end method

.method getWindowTag()Ljava/lang/CharSequence;
    .locals 2

    .line 4379
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4380
    .local v0, "tag":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 4381
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4383
    :cond_1
    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 6187
    const/4 v0, 0x0

    .line 6193
    .local v0, "token":Landroid/os/IBinder;
    return-object v0
.end method

.method getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method handleWindowMovedIfNeeded()V
    .locals 6

    .line 2181
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2182
    return-void

    .line 2187
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 2188
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2189
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_1

    .line 2191
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2192
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v2, :cond_1

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->canDoMoveAnim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2200
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowState;->startMoveAnimation(II)V

    .line 2203
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2204
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v4, 0x1

    new-array v4, v4, [I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    aput v5, v4, v3

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked([I)V

    .line 2206
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V

    .line 2209
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string v4, "window moved"

    invoke-static {v2, v4}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2213
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    goto :goto_0

    .line 2214
    :catch_0
    move-exception v2

    .line 2216
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 2217
    return-void
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasContentToDisplay()Z
    .locals 1

    .line 1764
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1765
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1767
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1770
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v0

    return v0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .line 3092
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasTapExcludeRegion()Z
    .locals 1

    .line 5883
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasVisibleNotDrawnWallpaper()Z
    .locals 4

    .line 5133
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5134
    return v1

    .line 5136
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5137
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5138
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5139
    return v1

    .line 5136
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5142
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hideInsets(IZ)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 3933
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindow;->hideInsets(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3936
    goto :goto_0

    .line 3934
    :catch_0
    move-exception v0

    .line 3935
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver showInsets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3937
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .line 3163
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 8
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .line 3167
    if-eqz p1, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3169
    const/4 p1, 0x0

    .line 3173
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    .line 3174
    .local v0, "current":Z
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3176
    return v1

    .line 3178
    :cond_2
    if-eqz p1, :cond_3

    .line 3179
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 3180
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3181
    const/4 p1, 0x0

    .line 3184
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 3185
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    .line 3186
    .local v2, "isFocused":Z
    const/4 v3, 0x1

    if-nez p1, :cond_6

    .line 3187
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 3192
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 3193
    if-eqz v2, :cond_6

    .line 3194
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x4cd07ca6    # 1.09307184E8f

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3196
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 3199
    :cond_6
    if-eqz p2, :cond_7

    .line 3200
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3202
    :cond_7
    if-eqz v2, :cond_8

    .line 3203
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3206
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8

    .line 3207
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 3211
    :cond_8
    return v3
.end method

.method hideNonSystemOverlayWindowsWhenVisible()Z
    .locals 3

    .line 4518
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canSetAppOpVisibilityLw(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4519
    return v1

    .line 4522
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hidePermanentlyLw()V
    .locals 1

    .line 3335
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_0

    .line 3336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 3337
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 3339
    :cond_0
    return-void
.end method

.method hideWallpaperWindow(ZLjava/lang/String;)V
    .locals 4
    .param p1, "wasDeferred"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 5091
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5092
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5093
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 5091
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5095
    .end local v0    # "j":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 5096
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 5098
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 5099
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5100
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 5101
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5102
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_2

    .line 5103
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideWallpaperWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 5108
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    return-void
.end method

.method immediatelyNotifyBlastSync()V
    .locals 1

    .line 6226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;)Z

    .line 6227
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->notifyBlastSyncTransaction()V

    .line 6228
    return-void
.end method

.method inSizeCompatMode()Z
    .locals 3

    .line 1038
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 1040
    return v1

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1044
    :goto_1
    return v1
.end method

.method initAppOpsState()V
    .locals 9

    .line 3270
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3275
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowPid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canInitAppOpVisibilityLw(Ljava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3276
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 3277
    return-void

    .line 3284
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v4

    .line 3285
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3284
    const-string v8, "init-default-visibility"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3287
    .local v0, "mode":I
    if-eqz v0, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 3288
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 3290
    :cond_2
    return-void

    .line 3271
    .end local v0    # "mode":I
    :cond_3
    :goto_0
    return-void
.end method

.method public isActivityTypeHome()Z
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    .line 3366
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .locals 1

    .line 1965
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    return v0
.end method

.method isChildWindow()Z
    .locals 1

    .line 4501
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return v0
.end method

.method isClientLocal()Z
    .locals 1

    .line 3855
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v0, v0, Landroid/view/IWindow$Stub;

    return v0
.end method

.method isClosing()Z
    .locals 1

    .line 3370
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isClosingOrEnteringPip()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDefaultDisplay()Z
    .locals 2

    .line 3560
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3561
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 3563
    const/4 v1, 0x0

    return v1

    .line 3565
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v1
.end method

.method public isDimming()Z
    .locals 1

    .line 5799
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1955
    .local v0, "atoken":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    .line 1957
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1955
    :goto_0
    return v1
.end method

.method isDockedResizing()Z
    .locals 2

    .line 4158
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4159
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 4158
    :goto_0
    return v1
.end method

.method isDragResizeChanged()Z
    .locals 2

    .line 4074
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDragResizing()Z
    .locals 1

    .line 4154
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return v0
.end method

.method public isDrawFinishedLw()Z
    .locals 2

    .line 2003
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawnLw()Z
    .locals 2

    .line 2015
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDreamWindow()Z
    .locals 2

    .line 1877
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 1878
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1877
    :goto_0
    return v0
.end method

.method isFocused()Z
    .locals 1

    .line 3999
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFullyTransparent()Z
    .locals 2

    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .line 1984
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1985
    .local v0, "atoken":Lcom/android/server/wm/ActivityRecord;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    .line 1991
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_5

    .line 1993
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isParentWindowGoneForLayout()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_2

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 1985
    :goto_1
    return v1
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 4
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .line 1742
    const v0, 0x3f7fff58    # 0.99999f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_7

    const v1, 0x3f800054    # 1.00001f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_0

    goto :goto_3

    .line 1743
    :cond_0
    cmpg-float v0, p4, v0

    if-ltz v0, :cond_6

    cmpl-float v0, p4, v1

    if-lez v0, :cond_1

    goto :goto_2

    .line 1744
    :cond_1
    const v0, -0x4a79c843    # -1.0E-6f

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_5

    const v1, 0x358637bd    # 1.0E-6f

    cmpl-float v3, p2, v1

    if-lez v3, :cond_2

    goto :goto_1

    .line 1745
    :cond_2
    cmpg-float v0, p3, v0

    if-ltz v0, :cond_4

    cmpl-float v0, p3, v1

    if-lez v0, :cond_3

    goto :goto_0

    .line 1746
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1745
    :cond_4
    :goto_0
    return v2

    .line 1744
    :cond_5
    :goto_1
    return v2

    .line 1743
    :cond_6
    :goto_2
    return v2

    .line 1742
    :cond_7
    :goto_3
    return v2
.end method

.method isImplicitlyExcludingAllSystemGestures()Z
    .locals 6

    .line 855
    const/16 v0, 0x1002

    .line 857
    .local v0, "immersiveStickyFlags":I
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    const/16 v2, 0x1002

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 859
    .local v1, "immersiveSticky":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v5, 0x1d

    if-ge v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .line 5888
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInputMethodWindow()Z
    .locals 1

    .line 4680
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    return v0
.end method

.method isInteresting()Z
    .locals 2

    .line 1905
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v1, :cond_1

    .line 1906
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFreezingScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1905
    :goto_0
    return v0
.end method

.method isLaidOut()Z
    .locals 2

    .line 5379
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLastConfigReportedToClient()Z
    .locals 1

    .line 2260
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return v0
.end method

.method isLetterboxedAppWindow()Z
    .locals 3

    .line 4018
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4019
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inZoomWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4020
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutoutLw()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    .line 4019
    :cond_2
    return v1

    .line 4022
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4023
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutoutLw()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    .line 4022
    :cond_6
    return v1
.end method

.method public isLetterboxedForDisplayCutoutLw()Z
    .locals 3

    .line 4030
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4032
    return v1

    .line 4034
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->parentFrameWasClippedByDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4036
    return v1

    .line 4038
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 4040
    return v1

    .line 4042
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4044
    return v1

    .line 4048
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->frameCoversEntireAppTokenBounds()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 4070
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNonToastOrStarting()Z
    .locals 2

    .line 6094
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNonToastWindowVisibleForPid(I)Z
    .locals 1
    .param p1, "pid"    # I

    .line 6102
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isNonToastOrStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNonToastWindowVisibleForUid(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 6098
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isNonToastOrStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isObscuringDisplay()Z
    .locals 3

    .line 2232
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2233
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->fillsParent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2234
    return v1

    .line 2236
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isOnScreen()Z
    .locals 5

    .line 1865
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1869
    .local v0, "atoken":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_2

    .line 1871
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    .line 1870
    :cond_3
    return v1

    .line 1873
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v1, v3

    :cond_6
    return v1

    .line 1866
    .end local v0    # "atoken":Lcom/android/server/wm/ActivityRecord;
    :cond_7
    :goto_0
    return v1
.end method

.method isParentWindowHidden()Z
    .locals 2

    .line 4550
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4551
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReadyForDisplay()Z
    .locals 4

    .line 1915
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    return v1

    .line 1918
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1919
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1920
    .local v0, "parentAndClientVisible":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    const/4 v3, 0x3

    .line 1921
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    nop

    .line 1920
    :goto_1
    return v1
.end method

.method public isRtl()Z
    .locals 2

    .line 5087
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isSecureLocked()Z
    .locals 4

    .line 1882
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1883
    return v1

    .line 1885
    :cond_0
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(IZ)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method protected isSelfAnimating(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "typesToCheck"    # I

    .line 5419
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    .line 5420
    const/4 v0, 0x0

    return v0

    .line 5422
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    return v0
.end method

.method isSelfOrAncestorWindowAnimatingExit()Z
    .locals 2

    .line 4967
    move-object v0, p0

    .line 4969
    .local v0, "window":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_0

    .line 4970
    const/4 v1, 0x1

    return v1

    .line 4972
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4973
    if-nez v0, :cond_1

    .line 4974
    const/4 v1, 0x0

    return v1

    .line 4973
    :cond_1
    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1775
    :goto_0
    return v0
.end method

.method isVisibleByPolicy()Z
    .locals 2

    .line 1787
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisibleLw()Z
    .locals 1

    .line 1815
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    return v0
.end method

.method isVisibleNow()Z
    .locals 2

    .line 1833
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1833
    :goto_0
    return v0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .line 1852
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1853
    .local v0, "atoken":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    .line 1854
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1853
    :goto_0
    return v1
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWinVisibleLw()Z
    .locals 2

    .line 1824
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x3

    .line 1825
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1824
    :goto_0
    return v0
.end method

.method layoutInParentFrame()Z
    .locals 2

    .line 4505
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method letterboxNotIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 4065
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 4066
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->letterboxNotIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4065
    :goto_1
    return v0
.end method

.method public longshotStart()V
    .locals 2

    .line 6199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v0, :cond_0

    .line 6202
    const/16 v0, 0x7530

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeServiceInjector;->pokeDynamicVsyncAnimation(I)V

    .line 6203
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->longshotStart()V

    .line 6204
    const-string v0, "WindowManager"

    const-string v1, " longshotStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6207
    :cond_0
    goto :goto_0

    .line 6206
    :catch_0
    move-exception v0

    .line 6209
    :goto_0
    return-void
.end method

.method public longshotStop()V
    .locals 2

    .line 6213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v0, :cond_0

    .line 6216
    const/16 v0, 0xbb8

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeServiceInjector;->pokeDynamicVsyncAnimation(I)V

    .line 6217
    const-string v0, "WindowManager"

    const-string v1, " longshotStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6218
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->longshotStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6221
    :cond_0
    goto :goto_0

    .line 6220
    :catch_0
    move-exception v0

    .line 6222
    :goto_0
    return-void
.end method

.method mightAffectAllDrawn()Z
    .locals 4

    .line 1895
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1897
    .local v0, "isAppType":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method needsRelativeLayeringToIme()Z
    .locals 5

    .line 5745
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5746
    return v1

    .line 5749
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5751
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5752
    return v2

    .line 5754
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    .line 5758
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 5759
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 5762
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5763
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowState;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-gtz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    nop

    .line 5764
    .local v1, "inTokenWithAndAboveImeTarget":Z
    :goto_0
    return v1

    .line 5766
    .end local v0    # "imeTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "inTokenWithAndAboveImeTarget":Z
    :cond_3
    return v1
.end method

.method needsZBoost()Z
    .locals 3

    .line 5602
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 5603
    .local v0, "inputMethodTarget":Lcom/android/server/wm/WindowState;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5604
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5605
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_0

    .line 5606
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->needsZBoost()Z

    move-result v2

    return v2

    .line 5609
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    return v1
.end method

.method notifyImeWindowStateChange(Z)V
    .locals 2
    .param p1, "hasShow"    # Z

    .line 6252
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastInputmethodShow:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    .line 6253
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastInputmethodShow:Z

    .line 6255
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifyWindowStateChange(IZI)V

    .line 6257
    const-string v0, "WindowManager"

    const-string v1, "notifyWindowStateChange input show"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    :cond_0
    return-void
.end method

.method notifyInsetsChanged()V
    .locals 6

    .line 3892
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x5b6215d9

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3894
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindow;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3897
    goto :goto_0

    .line 3895
    :catch_0
    move-exception v0

    .line 3896
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deliver inset state change w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3898
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .locals 6

    .line 3902
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x4e40addc

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3903
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3906
    :cond_1
    nop

    .line 3907
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 3909
    .local v0, "stateController":Lcom/android/server/wm/InsetsStateController;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 3910
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v3

    .line 3909
    invoke-interface {v1, v2, v3}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3913
    goto :goto_0

    .line 3911
    :catch_0
    move-exception v1

    .line 3912
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deliver inset state change to w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3914
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3904
    .end local v0    # "stateController":Lcom/android/server/wm/InsetsStateController;
    :cond_2
    :goto_1
    return-void
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 5470
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 5471
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->onAnimationFinished()V

    .line 5472
    return-void
.end method

.method onAppVisibilityChanged(ZZ)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "runningAppAnimation"    # Z

    .line 2073
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2074
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)V

    .line 2073
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2077
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    .line 2078
    .local v0, "isVisibleNow":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2082
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2083
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2084
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2085
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    goto :goto_1

    .line 2087
    :cond_1
    if-eq p1, v0, :cond_3

    .line 2092
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 2093
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2095
    .local v1, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    const/4 v2, 0x2

    .line 2096
    .local v2, "winTransit":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2097
    if-eqz v1, :cond_2

    .line 2098
    invoke-virtual {v1, p0, v5}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2101
    .end local v1    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v2    # "winTransit":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2103
    :cond_3
    :goto_1
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1598
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setInputMethodInputTarget(Lcom/android/server/wm/WindowState;)V

    .line 1601
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 1603
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1605
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1606
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1607
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->displayId:I

    .line 1609
    :cond_1
    return-void
.end method

.method onExitAnimationDone()V
    .locals 10

    .line 4978
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExitAnimationDone in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": exiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " selfAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4980
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4978
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4984
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4985
    .local v0, "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4986
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 4985
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4990
    .end local v0    # "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4991
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4992
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4995
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_2

    .line 4997
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4999
    goto :goto_1

    .line 4998
    :catch_0
    move-exception v0

    .line 5003
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5004
    return-void

    .line 5006
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_4

    .line 5007
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    new-array v3, v1, [I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    aput v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked([I)V

    .line 5012
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v0, :cond_5

    .line 5013
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->putSnapshot(Lcom/android/server/wm/ActivityRecord;)V

    .line 5017
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5018
    return-void

    .line 5021
    :cond_6
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .local v3, "protoLogParam1":Z
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x3ead5136

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5024
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Z
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 5026
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    .line 5030
    .local v0, "hasSurface":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const-string v4, "onExitAnimationDone"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 5036
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8

    .line 5037
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    goto :goto_2

    .line 5039
    :cond_8
    if-eqz v0, :cond_9

    .line 5040
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5042
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v1, :cond_a

    .line 5043
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5044
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 5047
    :cond_a
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 5048
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 5049
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .locals 1

    .line 2265
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 2266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 2267
    return-void
.end method

.method onMovedByResize()V
    .locals 7

    .line 2067
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x617b2d3b

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2068
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 2069
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 2070
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 1
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1067
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    .line 1071
    return-void
.end method

.method onResize()V
    .locals 8

    .line 2130
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2131
    .local v0, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2132
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x18dfab50

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2133
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2136
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 2139
    :cond_2
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 2140
    return-void
.end method

.method onSetAppExiting()Z
    .locals 5

    .line 2106
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2107
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 2109
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2110
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2111
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_0

    .line 2112
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2114
    :cond_0
    const/4 v1, 0x1

    .line 2115
    if-eqz v0, :cond_1

    .line 2116
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2120
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2121
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2122
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v4

    or-int/2addr v1, v4

    .line 2120
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2125
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method onStartFreezingScreen()V
    .locals 2

    .line 3425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3426
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3427
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 3428
    .local v0, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 3426
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3430
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method onStopFreezingScreen()Z
    .locals 8

    .line 3433
    const/4 v0, 0x0

    .line 3434
    .local v0, "unfrozeWindows":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3435
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3436
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v0, v4

    .line 3434
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3439
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_1

    .line 3440
    return v0

    .line 3443
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3445
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 3447
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x682823b2

    const/4 v6, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3449
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 3450
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v3, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 3452
    :cond_3
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3453
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3454
    return v2
.end method

.method onSurfaceShownChanged(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 3516
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-ne v0, p1, :cond_0

    .line 3517
    return-void

    .line 3519
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    .line 3521
    if-eqz p1, :cond_1

    .line 3522
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->initExclusionRestrictions()V

    goto :goto_0

    .line 3524
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 3525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 3527
    :goto_0
    return-void
.end method

.method onUnfreezeBounds()V
    .locals 3

    .line 2143
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2144
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2145
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 2143
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2148
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_1

    .line 2149
    return-void

    .line 2152
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2154
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2155
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    :cond_2
    return-void
.end method

.method onWindowReplacementTimeout()V
    .locals 2

    .line 2270
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_0

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_1

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2280
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2281
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 2279
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2284
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method openInputChannel(Landroid/view/InputChannel;)V
    .locals 4
    .param p1, "outInputChannel"    # Landroid/view/InputChannel;

    .line 2620
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    .line 2623
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2624
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 2625
    .local v1, "inputChannels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2626
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2627
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 2628
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 2629
    if-eqz p1, :cond_0

    .line 2630
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2631
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 2632
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_0

    .line 2637
    :cond_0
    new-instance v2, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2639
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v3, v3, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2640
    return-void

    .line 2621
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "inputChannels":[Landroid/view/InputChannel;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method orientationChangeTimedOut()V
    .locals 1

    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1589
    return-void
.end method

.method performShowLocked()Z
    .locals 7

    .line 4685
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4686
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiding "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", belonging to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 4688
    return v2

    .line 4691
    :cond_1
    const-string v0, "performShow on "

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4693
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4694
    .local v0, "drawState":I
    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_4

    .line 4695
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v4, :cond_3

    .line 4696
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/ActivityRecord;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    goto :goto_0

    .line 4698
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->onStartingWindowDrawn()V

    .line 4702
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v5, v4, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 4706
    :cond_5
    const-string v4, "Showing "

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4708
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 4709
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 4712
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 4713
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performShowLocked: mDrawState=HAS_DRAWN in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4716
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 4718
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 4719
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 4720
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4722
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_8

    .line 4723
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4724
    .local v4, "c":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_7

    .line 4725
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 4729
    if-eqz v1, :cond_7

    .line 4730
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4722
    .end local v4    # "c":Lcom/android/server/wm/WindowState;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4736
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    :cond_8
    return v3

    .line 4703
    :cond_9
    :goto_2
    return v2
.end method

.method public pokeDrawLockLw(J)V
    .locals 6
    .param p1, "timeout"    # J

    .line 3342
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_2

    .line 3343
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 3347
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3348
    .local v0, "tag":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 3349
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3350
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3353
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_1

    .line 3354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 3358
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_3

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_3
    :goto_0
    return-void
.end method

.method prelayout()V
    .locals 2

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1754
    invoke-static {p0}, Lcom/android/server/wm/OpScreenCompatInjector;->overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1756
    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    goto :goto_0

    .line 1758
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1760
    :goto_0
    return-void
.end method

.method prepareForSync(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)Z
    .locals 5
    .param p1, "waitingListener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    .param p2, "waitingId"    # I

    .line 6123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->setPendingListener(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)Z

    move-result v0

    .line 6124
    .local v0, "willSync":Z
    if-nez v0, :cond_0

    .line 6125
    const/4 v1, 0x0

    return v1

    .line 6127
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    .line 6129
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowState;->mLocalSyncId:I

    .line 6130
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->addChildrenToSyncSet(I)Z

    .line 6138
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 6139
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 6142
    const/4 v1, 0x1

    return v1
.end method

.method prepareSurfaces()V
    .locals 2

    .line 5656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5657
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->applyDims()V

    .line 5658
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition()V

    .line 5660
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateFrameRateSelectionPriorityIfNeeded()V

    .line 5662
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 5663
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->notifyBlastSyncTransaction()V

    .line 5664
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 5665
    return-void
.end method

.method prepareWindowToDisplayDuringRelayout(Z)V
    .locals 11
    .param p1, "wasVisible"    # Z

    .line 2861
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 2862
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2875
    .local v0, "hasTurnScreenOnFlag":Z
    :goto_1
    const-string v3, "WindowManager"

    if-eqz v0, :cond_a

    .line 2876
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2877
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "theater_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    .line 2879
    .local v4, "allowTheaterMode":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v1

    .line 2881
    .local v5, "canTurnScreenOn":Z
    :goto_5
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2882
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 2883
    invoke-interface {v6}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2884
    :cond_6
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v6, :cond_8

    .line 2885
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Relayout window turning screen on: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    const-string v10, "android.server.wm:SCREEN_ON_FLAG"

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    .line 2891
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_a

    .line 2892
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 2897
    .end local v4    # "allowTheaterMode":Z
    .end local v5    # "canTurnScreenOn":Z
    :cond_a
    if-eqz p1, :cond_c

    .line 2898
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already visible and does not turn on screen, skip preparing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_b
    return-void

    .line 2903
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d

    .line 2905
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2908
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2909
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 2911
    :cond_e
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .line 3982
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3983
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 3984
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 3986
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3987
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3988
    return-void

    .line 3987
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method relayoutVisibleWindow(II)I
    .locals 6
    .param p1, "result"    # I
    .param p2, "attrChanges"    # I

    .line 5304
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 5306
    .local v0, "wasVisible":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    :goto_1
    or-int/2addr p1, v2

    .line 5308
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_3

    .line 5309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relayoutVisibleWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mAnimatingExit=true, mRemoveOnExit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDestroying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5314
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 5315
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 5317
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 5319
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_4

    .line 5320
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 5321
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5323
    :cond_4
    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 5324
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 5327
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 5329
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 5331
    const-wide/16 v3, 0x20

    const-string v5, "prepareToDisplay"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5333
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5335
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5336
    nop

    .line 5338
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_6

    .line 5342
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->tryChangeFormatInPlaceLocked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5343
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 5344
    or-int/lit8 p1, p1, 0x6

    .line 5354
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5355
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    .line 5360
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5361
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 5362
    or-int/lit8 p1, p1, 0x6

    .line 5366
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5367
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v3

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    .line 5368
    .local v3, "freeformResizing":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5369
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v4

    if-ne v4, v2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v1

    .line 5370
    .local v2, "dockedResizing":Z
    :goto_3
    if-eqz v3, :cond_a

    const/16 v4, 0x10

    goto :goto_4

    :cond_a
    move v4, v1

    :goto_4
    or-int/2addr p1, v4

    .line 5371
    if-eqz v2, :cond_b

    const/16 v1, 0x8

    :cond_b
    or-int/2addr p1, v1

    .line 5372
    return p1

    .line 5335
    .end local v2    # "dockedResizing":Z
    .end local v3    # "freeformResizing":Z
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5336
    throw v1
.end method

.method removeEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 5401
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeIfPossible()V
    .locals 1

    .line 2360
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 2361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    .line 2362
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 2363
    return-void
.end method

.method removeImmediately()V
    .locals 6

    .line 2297
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2301
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2302
    invoke-static {p0}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->removeTapExcluedWindow(Lcom/android/server/wm/WindowState;)V

    .line 2306
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2308
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x784f2ce5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v3, v1, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2310
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    return-void

    .line 2313
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2315
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2316
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    .line 2317
    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2320
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2321
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2322
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2324
    :cond_4
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, p0, :cond_5

    .line 2325
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setInputMethodInputTarget(Lcom/android/server/wm/WindowState;)V

    .line 2328
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2329
    .local v1, "type":I
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2330
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2335
    :cond_6
    invoke-static {p0, v0}, Lcom/android/server/wm/OpQuickReplyInjector;->checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    .line 2340
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2341
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2345
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 2346
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 2347
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 2349
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    goto :goto_0

    .line 2350
    :catch_0
    move-exception v2

    .line 2355
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    .line 2356
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "replacement"    # Lcom/android/server/wm/WindowState;

    .line 2666
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2668
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->removeReplacedWindow()V

    .line 2669
    return v2

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2673
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2674
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2675
    return v2

    .line 2672
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2678
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method reportFocusChangedSerialized(Z)V
    .locals 4
    .param p1, "focused"    # Z

    .line 3741
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_2

    .line 3742
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3743
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3744
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 3746
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    .line 3747
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    goto :goto_1

    .line 3749
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3752
    :goto_1
    goto :goto_2

    .line 3751
    :catch_0
    move-exception v3

    .line 3743
    .end local v2    # "obs":Landroid/view/IWindowFocusObserver;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3754
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3756
    .end local v0    # "N":I
    :cond_2
    return-void
.end method

.method reportResized()V
    .locals 26

    .line 3787
    move-object/from16 v1, p0

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wm.reportResized_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3791
    :cond_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x6cc0dae1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v5

    aput-object v7, v10, v6

    invoke-static {v8, v9, v5, v4, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3793
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v6, :cond_2

    .line 3794
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x4367ae2f

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3797
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 3798
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 3800
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 3805
    .local v4, "reportOrientation":Z
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 3806
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3807
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 3808
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->resetInsetsChanged()V

    .line 3812
    iget v0, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string v7, "reportResized"

    invoke-static {v0, v7}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 3815
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 3816
    .local v14, "frame":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    .line 3817
    .local v13, "contentInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v0, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 3818
    .local v11, "visibleInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v0, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    .line 3819
    .local v10, "stableInsets":Landroid/graphics/Rect;
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 3820
    .local v9, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v0, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->useBLASTSync()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v12, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v12, v6

    .line 3821
    .local v12, "reportDraw":Z
    :goto_1
    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v15, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v15, v6

    .line 3822
    .local v15, "forceRelayout":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v19

    .line 3823
    .local v19, "displayId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 3825
    .local v8, "displayCutout":Landroid/view/DisplayCutout;
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 3830
    :try_start_0
    iget v0, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    const/16 v2, 0x24b8

    invoke-static {v2, v0, v7}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 3832
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3833
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3834
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z

    move-result v16

    new-instance v3, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v3, v8}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3832
    move-object/from16 v20, v8

    .end local v8    # "displayCutout":Landroid/view/DisplayCutout;
    .local v20, "displayCutout":Landroid/view/DisplayCutout;
    move-object v8, v14

    move-object/from16 v21, v9

    .end local v9    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v21, "mergedConfiguration":Landroid/util/MergedConfiguration;
    move-object v9, v13

    move-object/from16 v22, v10

    .end local v10    # "stableInsets":Landroid/graphics/Rect;
    .local v22, "stableInsets":Landroid/graphics/Rect;
    move-object v10, v11

    move-object/from16 v23, v11

    .end local v11    # "visibleInsets":Landroid/graphics/Rect;
    .local v23, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v11, v22

    move-object/from16 v24, v13

    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .local v24, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v13, v21

    move-object/from16 v25, v14

    .end local v14    # "frame":Landroid/graphics/Rect;
    .local v25, "frame":Landroid/graphics/Rect;
    move-object v14, v0

    move/from16 v17, v19

    move-object/from16 v18, v3

    :try_start_1
    invoke-interface/range {v7 .. v18}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 3838
    invoke-static {v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V

    .line 3840
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_7

    .line 3841
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    new-array v2, v6, [I

    aput v19, v2, v5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked([I)V

    .line 3843
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3850
    goto :goto_5

    .line 3844
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v20    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v21    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v22    # "stableInsets":Landroid/graphics/Rect;
    .end local v23    # "visibleInsets":Landroid/graphics/Rect;
    .end local v24    # "contentInsets":Landroid/graphics/Rect;
    .end local v25    # "frame":Landroid/graphics/Rect;
    .restart local v8    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v10    # "stableInsets":Landroid/graphics/Rect;
    .restart local v11    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v13    # "contentInsets":Landroid/graphics/Rect;
    .restart local v14    # "frame":Landroid/graphics/Rect;
    :catch_1
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .line 3846
    .end local v8    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v9    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v10    # "stableInsets":Landroid/graphics/Rect;
    .end local v11    # "visibleInsets":Landroid/graphics/Rect;
    .end local v13    # "contentInsets":Landroid/graphics/Rect;
    .end local v14    # "frame":Landroid/graphics/Rect;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v21    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v22    # "stableInsets":Landroid/graphics/Rect;
    .restart local v23    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v24    # "contentInsets":Landroid/graphics/Rect;
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 3847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v2, v5

    long-to-int v2, v2

    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report \'resized\' to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3852
    return-void
.end method

.method requestDrawIfNeeded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 2034
    .local p1, "outWaitingForDrawn":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2035
    return-void

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    .line 2038
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v0, :cond_1

    .line 2041
    return-void

    .line 2043
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2046
    return-void

    .line 2048
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    .line 2051
    return-void

    .line 2053
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2054
    return-void

    .line 2059
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 2062
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2063
    return-void
.end method

.method requestRedrawForSync()V
    .locals 1

    .line 6244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 6245
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 3

    .line 4603
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4604
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 4605
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4606
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4607
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 4610
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4611
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4612
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 4610
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4614
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method resetAppOpsState()V
    .locals 5

    .line 3293
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 3297
    :cond_0
    return-void
.end method

.method resetContentChanged()V
    .locals 2

    .line 5979
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 5980
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 1

    .line 4097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 4098
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 4099
    return-void
.end method

.method resetLastContentInsets()V
    .locals 1

    .line 5950
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->resetLastContentInsets()V

    .line 5951
    return-void
.end method

.method seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .locals 3
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "oldRotation"    # I
    .param p3, "rotation"    # I
    .param p4, "requested"    # Z

    .line 792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {v0}, Lcom/android/server/wm/SeamlessRotator;->getOldRotation()I

    move-result p2

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_3

    .line 807
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 808
    return-void

    .line 811
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-nez v0, :cond_4

    if-eqz p4, :cond_6

    .line 812
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_5

    .line 813
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->startSeamlessRotation()V

    .line 815
    :cond_5
    new-instance v0, Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 817
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 821
    :cond_6
    return-void

    .line 793
    :cond_7
    :goto_0
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 4

    .line 3383
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 3385
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    .line 3386
    .local v0, "clientVisible":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 3388
    return-void

    .line 3391
    :cond_0
    if-nez v0, :cond_2

    .line 3395
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3396
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3397
    .local v2, "c":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 3395
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3400
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 3405
    :cond_2
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string v2, "sendAppVisibilityToClients"

    invoke-static {v1, v2}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 3409
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting visibility of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    const/16 v3, 0x2454

    invoke-static {v3, v1, v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 3415
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v0}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V

    .line 3418
    invoke-static {v3}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3421
    goto :goto_1

    .line 3420
    :catch_0
    move-exception v1

    .line 3422
    :goto_1
    return-void
.end method

.method setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0
    .param p1, "insetProvider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 5993
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 5994
    return-void
.end method

.method setDisplayLayoutNeeded()V
    .locals 1

    .line 2712
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2713
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2714
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2716
    :cond_0
    return-void
.end method

.method setDragResizing()V
    .locals 3

    .line 4138
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    .line 4139
    .local v0, "resizing":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v1, :cond_0

    .line 4140
    return-void

    .line 4142
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 4143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4144
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4145
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    goto :goto_1

    .line 4147
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4148
    const/4 v2, 0x1

    goto :goto_0

    .line 4149
    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    .line 4151
    :goto_1
    return-void
.end method

.method setDrawnStateEvaluated(Z)V
    .locals 0
    .param p1, "evaluated"    # Z

    .line 1062
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 1063
    return-void
.end method

.method setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .locals 2
    .param p1, "forceHide"    # Z

    .line 3215
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3216
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3219
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_1

    .line 3220
    return-void

    .line 3222
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 3223
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3224
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0

    .line 3226
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 3228
    :goto_0
    return-void

    .line 3217
    :cond_3
    :goto_1
    return-void
.end method

.method setFrameNumber(J)V
    .locals 0
    .param p1, "frameNumber"    # J

    .line 5898
    iput-wide p1, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 5899
    return-void
.end method

.method setHasSurface(Z)V
    .locals 0
    .param p1, "hasSurface"    # Z

    .line 2511
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2512
    return-void
.end method

.method setHiddenWhileSuspended(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 3231
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3232
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3235
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-ne v0, p1, :cond_1

    .line 3236
    return-void

    .line 3238
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 3239
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3240
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0

    .line 3242
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 3244
    :goto_0
    return-void

    .line 3233
    :cond_3
    :goto_1
    return-void
.end method

.method setLastExclusionHeights(III)V
    .locals 2
    .param p1, "side"    # I
    .param p2, "requested"    # I
    .param p3, "granted"    # I

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 867
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 868
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz v1, :cond_2

    .line 869
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 872
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aput p3, v1, p1

    .line 873
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aput p2, v1, p1

    .line 875
    :cond_3
    return-void
.end method

.method setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 2930
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 2932
    return-void
.end method

.method setOrientationChanging(Z)V
    .locals 1
    .param p1, "changing"    # Z

    .line 1583
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1585
    return-void
.end method

.method setPolicyVisibilityFlag(I)V
    .locals 1
    .param p1, "policyVisibilityFlag"    # I

    .line 1796
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1797
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1798
    return-void
.end method

.method setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "replacementCandidate"    # Lcom/android/server/wm/WindowState;

    .line 2693
    const/4 v0, 0x0

    .line 2695
    .local v0, "replacementSet":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    .line 2696
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2698
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2699
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2700
    const/4 v0, 0x1

    .line 2703
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2704
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2705
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2703
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2708
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method setReportResizeHints()Z
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->setReportResizeHints()Z

    move-result v0

    return v0
.end method

.method setRequestedSize(II)V
    .locals 1
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    .line 2852
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 2853
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2854
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2855
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2857
    :cond_1
    return-void
.end method

.method setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V
    .locals 0
    .param p1, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 5967
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mSimulatedWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 5968
    return-void
.end method

.method setSystemGestureExclusion(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 846
    .local p1, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    const/4 v0, 0x0

    return v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 850
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 851
    const/4 v0, 0x1

    return v0
.end method

.method setViewVisibility(I)V
    .locals 1
    .param p1, "viewVisibility"    # I

    .line 6106
    iput p1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 6111
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mUsingBLASTSyncTransaction:Z

    if-eqz v0, :cond_0

    .line 6112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 6114
    :cond_0
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .locals 1

    .line 4079
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4080
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4082
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 4083
    return-void
.end method

.method setWillReplaceChildWindows()V
    .locals 2

    .line 4646
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4647
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 4649
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4650
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4651
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 4649
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4653
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setWillReplaceWindow(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 4560
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4561
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4562
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 4560
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4565
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 4572
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 4573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 4574
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 4575
    return-void

    .line 4569
    :cond_2
    :goto_1
    return-void
.end method

.method setWindowScale(II)V
    .locals 4
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    .line 2956
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2958
    .local v0, "scaledWindow":Z
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 2962
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, p1, :cond_1

    .line 2963
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2964
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, p2, :cond_2

    .line 2965
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    goto :goto_3

    .line 2967
    :cond_3
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2969
    :goto_3
    return-void
.end method

.method shouldBeReplacedWithChildren()Z
    .locals 2

    .line 4641
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method shouldMagnify()Z
    .locals 2

    .line 5579
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7eb

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5588
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 5586
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method showForAllUsers()Z
    .locals 2

    .line 3573
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7ea

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7eb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 3580
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 3581
    const/4 v0, 0x0

    return v0

    .line 3612
    :cond_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showInsets(IZ)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 3924
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindow;->showInsets(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3927
    goto :goto_0

    .line 3925
    :catch_0
    move-exception v0

    .line 3926
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver showInsets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .line 3097
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 5
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .line 3101
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_0

    .line 3103
    return v1

    .line 3105
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3106
    return v1

    .line 3108
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_2

    .line 3110
    return v1

    .line 3112
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_3

    .line 3115
    return v1

    .line 3117
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_4

    .line 3119
    return v1

    .line 3121
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_5

    .line 3123
    return v1

    .line 3125
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v2, "WindowManager"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_6
    if-eqz p1, :cond_9

    .line 3127
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAnimation: mPolicyVisibility="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " animating="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3127
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3131
    const/4 p1, 0x0

    goto :goto_0

    .line 3132
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3136
    const/4 p1, 0x0

    .line 3142
    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3147
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 3148
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 3149
    if-eqz p1, :cond_b

    .line 3150
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 3152
    :cond_b
    if-eqz p2, :cond_c

    .line 3153
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3155
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_d

    .line 3156
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3158
    :cond_d
    return v0
.end method

.method showToCurrentUser()Z
    .locals 4

    .line 3619
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3620
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    if-ge v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v1, :cond_0

    .line 3626
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v1, v3, :cond_0

    .line 3627
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v1, v3, :cond_0

    .line 3628
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStableFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v1, v3, :cond_0

    .line 3629
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStableFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_0

    .line 3631
    return v2

    .line 3635
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 3636
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 3635
    :goto_1
    return v2
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 5428
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_0

    .line 5429
    return-void

    .line 5432
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 5433
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 5435
    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 5436
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 5437
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 5441
    .local v1, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 5442
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->commitPendingTransaction()V

    .line 5443
    return-void
.end method

.method surfaceInsetsChanging()Z
    .locals 2

    .line 5300
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method switchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2720
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 2722
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2723
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_0

    .line 2725
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user changing, hiding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", attrs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", belonging to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2729
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 4388
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4389
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_2

    .line 4390
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 4391
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 4392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4394
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_1

    const-string v2, " EXITING}"

    goto :goto_0

    :cond_1
    const-string v2, "}"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 4396
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1
.end method

.method transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 4400
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 4401
    return-void

    .line 4403
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 4404
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4405
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4407
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 4408
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4409
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4411
    :cond_2
    return-void
.end method

.method translateToWindowX(F)F
    .locals 2
    .param p1, "x"    # F

    .line 4617
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 4618
    .local v0, "winX":F
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4619
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    .line 4621
    :cond_0
    return v0
.end method

.method translateToWindowY(F)F
    .locals 2
    .param p1, "y"    # F

    .line 4625
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 4626
    .local v0, "winY":F
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4627
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    .line 4629
    :cond_0
    return v0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .line 3991
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3992
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    .line 3993
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3995
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3996
    return-void

    .line 3995
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateAppOpsState()V
    .locals 11

    .line 3300
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3301
    return-void

    .line 3303
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    .line 3304
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v9

    .line 3305
    .local v9, "packageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v10, 0x3

    if-eqz v2, :cond_3

    .line 3308
    invoke-static {v1, v9}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isBlockDisplayOverApp(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3309
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 3314
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v1, v3, v0, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 3315
    .local v1, "mode":I
    if-eqz v1, :cond_2

    if-eq v1, v10, :cond_2

    .line 3316
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v9, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 3317
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 3319
    .end local v1    # "mode":I
    :cond_2
    goto :goto_0

    .line 3320
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "attempt-to-be-visible"

    move v4, v0

    move-object v5, v9

    invoke-virtual/range {v2 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3324
    .local v2, "mode":I
    invoke-static {v1, v9}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isBlockDisplayOverApp(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3325
    return-void

    .line 3328
    :cond_4
    if-eqz v2, :cond_5

    if-ne v2, v10, :cond_6

    .line 3329
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 3332
    .end local v2    # "mode":I
    :cond_6
    :goto_0
    return-void
.end method

.method updateFrameRateSelectionPriorityIfNeeded()V
    .locals 4

    .line 5645
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 5646
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->calculatePriority(Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 5647
    .local v0, "priority":I
    iget v1, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    if-eq v1, v0, :cond_0

    .line 5648
    iput v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 5649
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 5652
    :cond_0
    return-void
.end method

.method updateLastFrames()V
    .locals 2

    .line 5406
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5407
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5408
    return-void
.end method

.method updateLastInsetValues()V
    .locals 1

    .line 5414
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->updateLastInsetValues()V

    .line 5415
    return-void
.end method

.method updateLocationInParentDisplayIfNeeded()V
    .locals 6

    .line 3859
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 3862
    .local v0, "embeddedDisplayContentsSize":I
    if-eqz v0, :cond_0

    .line 3863
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3864
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3865
    .local v2, "edc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->notifyLocationInParentDisplayChanged()V

    .line 3863
    .end local v2    # "edc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3870
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3871
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3872
    return-void

    .line 3875
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLocationInParentDisplay()Landroid/graphics/Point;

    move-result-object v2

    .line 3876
    .local v2, "offset":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    invoke-virtual {v3, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3877
    return-void

    .line 3880
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 3882
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    invoke-interface {v3, v4}, Landroid/view/IWindow;->locationInParentDisplayChanged(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3885
    goto :goto_1

    .line 3883
    :catch_0
    move-exception v3

    .line 3884
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Failed to update offset from DisplayContent"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3886
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .locals 6
    .param p1, "results"    # Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 5146
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5147
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5148
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 5146
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5151
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 5156
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 5157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Win "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": isDrawn="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", animating="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5158
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5157
    const-string v4, "WindowManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not displayed: s="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pv="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mDrawState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ph="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5163
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " th="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_2

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " a="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5165
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5160
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    :cond_3
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 5170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5171
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 5172
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5173
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 5175
    :cond_4
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    goto :goto_2

    .line 5176
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5177
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 5179
    :cond_6
    :goto_2
    return-void

    .line 5154
    :cond_7
    :goto_3
    return-void
.end method

.method updateRequestedInsetsState(Landroid/view/InsetsState;)V
    .locals 3
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 783
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 784
    .local v1, "source":Landroid/view/InsetsSource;
    if-nez v1, :cond_0

    goto :goto_1

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRequestedInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v2, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 782
    .end local v1    # "source":Landroid/view/InsetsSource;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateResizingWindowIfNeeded()V
    .locals 20

    .line 1476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1477
    .local v1, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v2, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1481
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v2

    .line 1482
    .local v2, "didFrameInsetsChange":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 1489
    .local v3, "configChanged":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    const-string v6, "WindowManager"

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v3, :cond_2

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Win "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " config changed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 1495
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizingChangeReported()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1497
    .local v5, "dragResizingChanged":Z
    :goto_0
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 1498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resizing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": configChanged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " dragResizingChanged="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " frame="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    .line 1509
    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v2, :cond_9

    iget-boolean v10, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v10, :cond_9

    if-nez v3, :cond_9

    if-nez v5, :cond_9

    iget-boolean v10, v0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-nez v10, :cond_9

    .line 1514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    .line 1556
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1558
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_6

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam1":Ljava/lang/String;
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x4f3c20c6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v7

    aput-object v10, v8, v4

    invoke-static {v11, v12, v7, v9, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1561
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1562
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v8, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v6, v8

    long-to-int v4, v6

    iput v4, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    move/from16 v17, v2

    goto/16 :goto_4

    .line 1557
    :cond_7
    move/from16 v17, v2

    goto/16 :goto_4

    .line 1556
    :cond_8
    move/from16 v17, v2

    goto/16 :goto_4

    .line 1515
    :cond_9
    :goto_1
    sget-boolean v10, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v10, :cond_a

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowFrames;->getInsetsChangedInfo()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam1":Ljava/lang/String;
    iget-boolean v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .local v12, "protoLogParam2":Z
    move v13, v3

    .local v13, "protoLogParam3":Z
    move v14, v5

    .local v14, "protoLogParam4":Z
    iget-boolean v15, v0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .local v15, "protoLogParam5":Z
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v10, v8, v7

    aput-object v11, v8, v4

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v16, 0x2

    aput-object v18, v8, v16

    const/16 v18, 0x3

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v8, v18

    const/16 v18, 0x4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v8, v18

    const/16 v18, 0x5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v8, v18

    move/from16 v17, v2

    const/4 v2, 0x0

    const v4, 0x452ff7ad

    const/16 v7, 0xff0

    .end local v2    # "didFrameInsetsChange":Z
    .local v17, "didFrameInsetsChange":Z
    invoke-static {v9, v4, v7, v2, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "protoLogParam1":Ljava/lang/String;
    .end local v12    # "protoLogParam2":Z
    .end local v13    # "protoLogParam3":Z
    .end local v14    # "protoLogParam4":Z
    .end local v15    # "protoLogParam5":Z
    .end local v17    # "didFrameInsetsChange":Z
    .restart local v2    # "didFrameInsetsChange":Z
    :cond_a
    move/from16 v17, v2

    .line 1523
    .end local v2    # "didFrameInsetsChange":Z
    .restart local v17    # "didFrameInsetsChange":Z
    :goto_2
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_b

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v4, :cond_b

    .line 1524
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->removeDeadWindows()V

    .line 1525
    return-void

    .line 1528
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 1529
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v5, :cond_10

    .line 1536
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation start waiting for draw, mDrawState=DRAW_PENDING in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", surfaceController "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_d
    if-eqz v5, :cond_f

    .line 1542
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v2, :cond_e

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x4bb4eee0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v10, 0x1

    aput-object v4, v8, v10

    const/4 v11, 0x0

    invoke-static {v6, v7, v9, v11, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_e
    const/4 v10, 0x1

    goto :goto_3

    .line 1541
    :cond_f
    const/4 v10, 0x1

    .line 1547
    :goto_3
    iput v10, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1548
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_10

    .line 1549
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 1552
    :cond_10
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1553
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RESIZE_enabled:Z

    if-eqz v2, :cond_11

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x28d4fe40

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x0

    invoke-static {v4, v6, v8, v9, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1554
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_11
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    :cond_12
    :goto_4
    return-void

    .line 1478
    .end local v3    # "configChanged":Z
    .end local v5    # "dragResizingChanged":Z
    .end local v17    # "didFrameInsetsChange":Z
    :cond_13
    :goto_5
    return-void
.end method

.method updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5670
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 5671
    return-void

    .line 5674
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 5679
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 5680
    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5681
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 5682
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 5683
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5684
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5685
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 5687
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v2

    .line 5685
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    .line 5690
    :cond_1
    return-void
.end method

.method updateTapExcludeRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 5841
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5842
    .local v0, "currentDisplay":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 5847
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5853
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5856
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5848
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 5851
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5860
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 5862
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 5863
    return-void

    .line 5843
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to update window not attached to any display."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method waitingForReplacement()Z
    .locals 4

    .line 4589
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4590
    return v1

    .line 4593
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4594
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4595
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4596
    return v1

    .line 4593
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4599
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method wouldBeVisibleIfPolicyIgnored()Z
    .locals 1

    .line 1809
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4207
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4208
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4209
    iget v2, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4210
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4211
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 4212
    const-wide v3, 0x10900000003L

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4214
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4215
    return-void
.end method
