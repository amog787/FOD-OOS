.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;,
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field private static final DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0x1

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field private static SCROLL_BOOST_SS_ENABLE:Z = false

.field private static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private static final sTmpDockedFrame:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpNavFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

.field private mAllowLockscreenWhenOn:Z

.field private volatile mAllowSeamlessRotationDespiteNavBarMoving:Z

.field private volatile mAwake:Z

.field private mBottomGestureAdditionalInset:I

.field private final mCarDockEnablesAccelerometer:Z

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserResources:Landroid/content/res/Resources;

.field private final mDeskDockEnablesAccelerometer:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayRotation:I

.field private volatile mDockMode:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDreamingLockscreen:Z

.field private mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHandler"
        }
    .end annotation
.end field

.field private mDreamingSleepTokenNeeded:Z

.field mFocusedApp:Landroid/view/IApplicationToken;

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mForceClearedSystemUiFlags:I

.field private mForceShowSystemBars:Z

.field private mForceShowSystemBarsFromExternal:Z

.field private mForceStatusBar:Z

.field private mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideNavigationBar:Z

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field private mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mInputMethodName:Ljava/lang/String;

.field mIsNeedToHideNavBar:Z

.field private mIsPerfBoostFlingAcquired:Z

.field private volatile mKeyguardDrawComplete:Z

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private mLastDockedStackSysUiFlags:I

.field private mLastFocusNeedsMenu:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastFullscreenStackSysUiFlags:I

.field private final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLastWindowSleepTokenNeeded:Z

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarOpacityMode:I

.field private final mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field private volatile mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/wm/BarController;

.field private mNavigationBarFrameHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationInCarMode:[I

.field private volatile mNavigationBarLetsThroughTaps:Z

.field private mNavigationBarPosition:I

.field private mNavigationBarWidthForRotationDefault:[I

.field private mNavigationBarWidthForRotationInCarMode:[I

.field private final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mPendingPanicGestureUptime:J

.field mPerf:Landroid/util/BoostFramework;

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private final mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

.field private mResettingSystemUiFlags:I

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenOnEarly:Z

.field private volatile mScreenOnFully:Z

.field private volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field private mShowingDream:Z

.field private mSideGestureInset:I

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private final mStatusBarController:Lcom/android/server/wm/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field private mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopIsFullscreen:Z

.field private volatile mWindowManagerDrawComplete:Z

.field private mWindowOutsetBottom:I

.field private mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHandler"
        }
    .end annotation
.end field

.field private mWindowSleepTokenNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    .line 266
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 387
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 389
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDockedFrame:Landroid/graphics/Rect;

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 391
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 13
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 272
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 273
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 274
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    .line 277
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 297
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 298
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 320
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 321
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 322
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 323
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 324
    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 326
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    .line 327
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    .line 328
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    .line 329
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    .line 332
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    .line 341
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 371
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 373
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    .line 376
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 377
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 378
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 379
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 383
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    .line 401
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 419
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 442
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 1550
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 2110
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 4246
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 507
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 508
    iget-boolean v2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 509
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 510
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 511
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 513
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 514
    .local v2, "displayId":I
    new-instance v3, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v3, v2}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 515
    new-instance v12, Lcom/android/server/wm/BarController;

    const/high16 v6, 0x8000000

    const/high16 v7, 0x20000000

    const/high16 v8, -0x80000000

    const/4 v9, 0x2

    const/high16 v10, 0x8000000

    const v11, 0x8000

    const-string v4, "NavigationBar"

    move-object v3, v12

    move v5, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIII)V

    iput-object v12, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 524
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 525
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x111003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 526
    const v4, 0x1110049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 527
    const v4, 0x1110084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 529
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 531
    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 532
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 533
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 534
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 537
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_2

    .line 538
    const-string v6, "vendor.perf.gestureflingboost.enable"

    const-string v7, "false"

    invoke-virtual {v4, v6, v7}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 540
    :cond_2
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 541
    .local v4, "looper":Landroid/os/Looper;
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v6, p0, v4}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance v6, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v9, p0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 705
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p2, v6}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 706
    iget-object v6, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 707
    invoke-virtual {v7}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v7

    .line 706
    invoke-virtual {v6, v7}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 708
    new-instance v6, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v6, v7, v4, v8}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 710
    new-instance v6, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$j3sY1jb4WFF_F3wOT9D2fB2mOts;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    .line 717
    new-instance v6, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$_FsvHpVUi-gbWmSpT009cJNNmgM;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$_FsvHpVUi-gbWmSpT009cJNNmgM;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    .line 726
    iget-boolean v6, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_3

    .line 727
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    .line 730
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x11100be

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 735
    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 737
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_2

    .line 738
    :cond_4
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 739
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 741
    .end local v0    # "navBarOverride":Ljava/lang/String;
    :cond_5
    :goto_2
    goto :goto_3

    .line 742
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 746
    :goto_3
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 747
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 749
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Z

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isTopAppGame()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 216
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1972(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 216
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 216
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/wm/DisplayPolicy;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # J

    .line 216
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$2400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 216
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/wm/WindowState;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2073
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 2074
    return-void

    .line 2078
    :cond_0
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    .line 2079
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2081
    :cond_1
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2083
    :goto_0
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .line 4196
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 2086
    nop

    .line 2087
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2088
    .local v0, "notFocusable":Z
    :goto_0
    nop

    .line 2089
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2090
    .local v3, "altFocusableIm":Z
    :goto_1
    xor-int v4, v0, v3

    .line 2091
    .local v4, "notFocusableForIm":Z
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p0, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p1, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p2, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p3, "navBarPosition"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3865
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3866
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 3868
    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3871
    .local v1, "imeWindowCanNavColorWindow":Z
    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    .line 3876
    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    .line 3879
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 3884
    :cond_3
    if-nez v1, :cond_4

    .line 3886
    return-object p1

    .line 3891
    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3893
    return-object p2

    .line 3896
    :cond_5
    return-object p1

    .line 3881
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    move-object v0, p2

    :cond_7
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .line 4177
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    .line 4178
    .local v1, "newVal":I
    if-eq v1, v0, :cond_0

    .line 4179
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 4180
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 4182
    :cond_0
    return-void
.end method

.method private configureNavBarOpacity(IZZZZZ)I
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "dockedStackVisible"    # Z
    .param p3, "freeformStackVisible"    # Z
    .param p4, "isDockedDividerResizing"    # Z
    .param p5, "fullscreenDrawsBackground"    # Z
    .param p6, "dockedDrawsNavigationBarBackground"    # Z

    .line 4128
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4129
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 4130
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4131
    :cond_0
    if-eqz p2, :cond_7

    .line 4132
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4134
    :cond_1
    if-nez v0, :cond_4

    .line 4135
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    .line 4137
    :cond_2
    if-eqz p5, :cond_7

    .line 4144
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_7

    .line 4145
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4136
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4149
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4150
    if-eqz p4, :cond_5

    .line 4151
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4152
    :cond_5
    if-eqz p3, :cond_6

    .line 4153
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4155
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 4159
    :cond_7
    :goto_1
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    .line 4444
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_0

    .line 4445
    return-void

    .line 4448
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4449
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4450
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4452
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p1, "inputConsumer"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 3678
    if-eqz p1, :cond_0

    .line 3679
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 3681
    :cond_0
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .locals 5
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "controller"    # Lcom/android/server/wm/BarController;
    .param p4, "translucentFlag"    # I

    .line 4098
    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4099
    return v1

    .line 4101
    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 4102
    return v0

    .line 4105
    :cond_1
    nop

    .line 4106
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 4107
    .local v2, "drawsSystemBars":Z
    :goto_0
    nop

    .line 4108
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    .line 4110
    .local v3, "forceDrawsSystemBars":Z
    :goto_1
    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    and-int v4, p1, p4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0
.end method

.method private drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 4118
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/high16 v1, 0x8000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 4114
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private enablePointerLocation()V
    .locals 4

    .line 4415
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    .line 4416
    return-void

    .line 4419
    :cond_0
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4420
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 4421
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 4424
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4425
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4429
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4430
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4431
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4432
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4435
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4437
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4438
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4439
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4440
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4441
    return-void
.end method

.method private getDisplayId()I
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1533
    const/4 v0, 0x0

    .line 1534
    .local v0, "impliedFlags":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1537
    .local v1, "forceWindowDrawsBarBackgrounds":Z
    :goto_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 1539
    :cond_1
    or-int/lit16 v0, v0, 0x200

    .line 1540
    or-int/lit16 v0, v0, 0x400

    .line 1542
    :cond_2
    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3422
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3396
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 3397
    const/4 p1, 0x0

    .line 3402
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3357
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 3358
    const/4 p1, 0x0

    .line 3363
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1186
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 288
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 289
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSystemUiContext()Landroid/content/Context;
    .locals 2

    .line 3351
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 3352
    .local v0, "uiContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    .line 3353
    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 3352
    :goto_0
    return-object v1
.end method

.method private hasStatusBarServicePermission(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 962
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImmersiveMode(I)Z
    .locals 2
    .param p1, "vis"    # I

    .line 4185
    const/16 v0, 0x1800

    .line 4186
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    .line 4189
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4186
    :goto_0
    return v1
.end method

.method private isKeyguardOccluded()Z
    .locals 1

    .line 3706
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3
    .param p0, "systemUiFlags"    # I

    .line 4200
    const/high16 v0, 0x1600000

    .line 4204
    .local v0, "disableNavigationBar":I
    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isTopAppGame()Z
    .locals 7

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, "isGame":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3, v1}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v2

    .line 492
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 493
    .local v2, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 494
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 495
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    .line 496
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v5, :cond_0

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v4

    :cond_1
    move v0, v1

    .line 502
    .end local v2    # "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    nop

    .line 503
    return v0

    .line 500
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method static synthetic lambda$canToastShowWhenLocked$2(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "callingPid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1054
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZ)Z
    .locals 21
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I
    .param p3, "navVisible"    # Z
    .param p4, "navTranslucent"    # Z
    .param p5, "navAllowedHidden"    # Z
    .param p6, "statusBarForcesShowingNavigation"    # Z

    .line 1851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1852
    return v5

    .line 1855
    :cond_0
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 1856
    .local v4, "navigationFrame":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v15

    .line 1860
    .local v15, "transientNavBarShowing":Z
    iget v14, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1861
    .local v14, "rotation":I
    iget v13, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 1862
    .local v13, "displayHeight":I
    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 1863
    .local v12, "displayWidth":I
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1864
    .local v11, "dockFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v6

    iput v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 1866
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1867
    .local v10, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1868
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1870
    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v6, v7, :cond_8

    .line 1872
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 1873
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1874
    .local v6, "top":I
    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 1875
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v9

    sub-int/2addr v7, v9

    .line 1876
    .local v7, "topNavBar":I
    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v7, v12, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1884
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-nez v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v5, :cond_2

    .line 1885
    :cond_1
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1889
    :cond_2
    if-eqz v15, :cond_3

    .line 1890
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_0

    .line 1891
    :cond_3
    if-eqz p3, :cond_5

    .line 1901
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1902
    invoke-static {v5}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isHomeApp(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1903
    :cond_4
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1904
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1910
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1912
    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    if-nez p4, :cond_7

    if-nez p5, :cond_7

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1913
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1914
    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1917
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1919
    .end local v6    # "top":I
    .end local v7    # "topNavBar":I
    :cond_7
    goto/16 :goto_4

    :cond_8
    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 1921
    iget v6, v10, Landroid/graphics/Rect;->right:I

    .line 1922
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1923
    .local v6, "left":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v6, v5, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1930
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-nez v5, :cond_9

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v5, :cond_a

    .line 1931
    :cond_9
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1934
    :cond_a
    if-eqz v15, :cond_b

    .line 1935
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_1

    .line 1936
    :cond_b
    if-eqz p3, :cond_c

    .line 1937
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1938
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v11, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1942
    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1944
    :goto_1
    if-eqz p3, :cond_12

    if-nez p4, :cond_12

    if-nez p5, :cond_12

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1945
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1946
    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1949
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1951
    .end local v6    # "left":I
    :cond_d
    if-ne v6, v8, :cond_12

    .line 1953
    iget v6, v10, Landroid/graphics/Rect;->left:I

    .line 1954
    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v6, v7

    .line 1955
    .local v6, "right":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v7, v5, v6, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1962
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_e

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-nez v5, :cond_e

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v5, :cond_f

    .line 1963
    :cond_e
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1966
    :cond_f
    if-eqz v15, :cond_10

    .line 1967
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_2

    .line 1968
    :cond_10
    if-eqz p3, :cond_11

    .line 1969
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1970
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v11, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1974
    :cond_11
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 1976
    :goto_2
    if-eqz p3, :cond_13

    if-nez p4, :cond_13

    if-nez p5, :cond_13

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1977
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 1978
    invoke-virtual {v5}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1981
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 1951
    .end local v6    # "right":I
    :cond_12
    :goto_3
    nop

    .line 1987
    :cond_13
    :goto_4
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1988
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1989
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1991
    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1992
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v6

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    move-object v7, v4

    move-object v8, v4

    move-object/from16 v17, v9

    move-object v9, v4

    move-object/from16 v18, v10

    .end local v10    # "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    .local v18, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    move-object v10, v5

    move-object v5, v11

    .end local v11    # "dockFrame":Landroid/graphics/Rect;
    .local v5, "dockFrame":Landroid/graphics/Rect;
    move-object v11, v4

    move/from16 v19, v12

    .end local v12    # "displayWidth":I
    .local v19, "displayWidth":I
    move-object/from16 v12, v16

    move/from16 v16, v13

    .end local v13    # "displayHeight":I
    .local v16, "displayHeight":I
    move-object v13, v4

    move/from16 v20, v14

    .end local v14    # "rotation":I
    .local v20, "rotation":I
    move-object/from16 v14, v17

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1998
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1999
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 2000
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2002
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNavigationBar frame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_14
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->checkHiddenLw()Z

    move-result v6

    return v6
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;)V
    .locals 18
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1715
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1716
    return-void

    .line 1719
    :cond_0
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1720
    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 1721
    .local v2, "displayId":I
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1722
    .local v3, "dockFrame":Landroid/graphics/Rect;
    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 1723
    .local v4, "displayHeight":I
    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 1725
    .local v5, "displayWidth":I
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_9

    .line 1726
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1727
    .local v7, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-ne v8, v2, :cond_8

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1729
    goto/16 :goto_1

    .line 1732
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v13, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v14, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    sget-object v15, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1739
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1740
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1741
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 1743
    .local v0, "frame":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v9, " displayHeight="

    const-string v10, " displayWidth="

    const-string v11, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v12, "WindowManager"

    if-gtz v8, :cond_4

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_4

    .line 1745
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v4, :cond_2

    .line 1747
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 1748
    :cond_2
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v5, :cond_3

    .line 1750
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 1752
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on left or top of display. frame="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1756
    :cond_4
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v5, :cond_7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v4, :cond_7

    .line 1758
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_5

    .line 1760
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1761
    :cond_5
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_6

    .line 1763
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1765
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on right or bottom of display. frame="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1771
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on one of the sides of the display. frame="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 1777
    .end local v6    # "i":I
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1778
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1779
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1780
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1781
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1782
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1783
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;IZ)Z
    .locals 11
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "sysui"    # I
    .param p3, "isKeyguardShowing"    # Z

    .line 1788
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1789
    return v1

    .line 1792
    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1793
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    .line 1794
    .local v0, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v10, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1799
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1802
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 1805
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1808
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1812
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1813
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1814
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1815
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1816
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 1818
    const/high16 v2, 0x4000000

    and-int/2addr v2, p2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1819
    .local v2, "statusBarTransient":Z
    :goto_0
    const v4, 0x40000008    # 2.000002f

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    .line 1823
    .local v4, "statusBarTranslucent":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    .line 1826
    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 1827
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1828
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1829
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1830
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1832
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status bar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1833
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 1834
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 1832
    const-string v1, "dock=%s content=%s cur=%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_3
    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1837
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1842
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 1845
    .end local v5    # "dockFrame":Landroid/graphics/Rect;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkHiddenLw()Z

    move-result v1

    return v1
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;

    .line 2824
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2825
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2826
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2827
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2828
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2831
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2832
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2833
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2834
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2835
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 2836
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2837
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2838
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method: mDockBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mContentBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_0
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2844
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2845
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2846
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2847
    return-void
.end method

.method private opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2096
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2097
    return v0

    .line 2100
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "BiometricDialogView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2102
    const/4 v0, 0x1

    return v0

    .line 2104
    :cond_1
    return v0
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "swipeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3655
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3656
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3658
    monitor-exit v0

    return-void

    .line 3660
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 3661
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3662
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3663
    .local v2, "nb":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    .line 3665
    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_3

    .line 3667
    monitor-exit v0

    return-void

    .line 3669
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 3670
    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v3}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3671
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 3672
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3674
    .end local v1    # "sb":Z
    .end local v2    # "nb":Z
    :cond_6
    monitor-exit v0

    .line 3675
    return-void

    .line 3674
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private selectDockedDividerAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "transit"    # I

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    .line 1280
    .local v0, "insets":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 1281
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1283
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1285
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1287
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    .line 1288
    .local v2, "behindNavBar":Z
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v5

    .line 1289
    .local v6, "landscape":Z
    :goto_1
    if-eqz v6, :cond_6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    if-lez v7, :cond_5

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 1290
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_6

    :cond_5
    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v5

    .line 1291
    .local v7, "offscreenLandscape":Z
    :goto_2
    if-nez v6, :cond_8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v0

    if-lez v8, :cond_7

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v0

    .line 1292
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_8

    :cond_7
    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v5

    .line 1293
    .local v8, "offscreenPortrait":Z
    :goto_3
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    move v9, v5

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v4

    .line 1294
    .local v9, "offscreen":Z
    :goto_5
    if-nez v2, :cond_f

    if-eqz v9, :cond_b

    goto :goto_7

    .line 1297
    :cond_b
    if-eq p2, v4, :cond_e

    const/4 v4, 0x3

    if-ne p2, v4, :cond_c

    goto :goto_6

    .line 1299
    :cond_c
    if-ne p2, v3, :cond_d

    .line 1306
    return v5

    .line 1309
    :cond_d
    return v5

    .line 1298
    :cond_e
    :goto_6
    const/high16 v3, 0x10a0000

    return v3

    .line 1295
    :cond_f
    :goto_7
    return v5
.end method

.method private setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Lcom/android/server/wm/WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;
    .param p11, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2009
    move v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2017
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2018
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2019
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2020
    iget-object v6, v5, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v11, p3

    move-object/from16 v8, p4

    goto/16 :goto_4

    .line 2025
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 2026
    .local v6, "parentDisplayFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    .line 2027
    .local v7, "parentOverscan":Landroid/graphics/Rect;
    move-object/from16 v8, p4

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2028
    .local v9, "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v11, 0x20000

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v10, v10, 0x200

    if-nez v10, :cond_1

    .line 2032
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v10

    .line 2033
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2034
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v6, v10

    .line 2035
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2043
    :cond_1
    const/16 v10, 0x10

    move v11, p3

    if-eq v11, v10, :cond_3

    .line 2048
    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v10, v0

    if-eqz v10, :cond_2

    .line 2049
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v7

    .line 2048
    :goto_0
    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2056
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2057
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2058
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2059
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2060
    :cond_5
    iget-object v10, v5, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2063
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    move-object v10, v6

    goto :goto_2

    :cond_7
    move-object v10, v3

    :goto_2
    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2064
    if-eqz p5, :cond_8

    move-object v10, v7

    goto :goto_3

    :cond_8
    move-object v10, v3

    :goto_3
    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2065
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2069
    .end local v6    # "parentDisplayFrame":Landroid/graphics/Rect;
    .end local v7    # "parentOverscan":Landroid/graphics/Rect;
    .end local v9    # "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    and-int/lit16 v6, v0, 0x100

    if-nez v6, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_5

    :cond_9
    move-object v6, v1

    :goto_5
    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2070
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4163
    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4167
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 4168
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTransparentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4172
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 4173
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

.method private static shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "fl"    # I

    .line 1546
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_1

    const v0, 0x2000400

    and-int/2addr v0, p1

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

.method private supportsPointerLocation()Z
    .locals 1

    .line 4400
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4401
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4400
    :goto_1
    return v0
.end method

.method private topAppHidesStatusBar()Z
    .locals 5

    .line 3169
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3170
    return v1

    .line 3172
    :cond_0
    const/4 v2, 0x0

    .line 3173
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3172
    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 3174
    .local v0, "fl":I
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_1

    .line 3175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lp.flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3176
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_1
    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private updateCurrentUserResources()V
    .locals 13

    .line 3305
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 3306
    .local v0, "userId":I
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 3308
    .local v1, "uiContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 3311
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3312
    return-void

    .line 3317
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 3318
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3317
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3319
    .local v2, "pi":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 3320
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3322
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    .line 3323
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3324
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    .line 3326
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    .line 3319
    invoke-virtual/range {v3 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3328
    return-void
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 4
    .param p1, "acquire"    # Z

    .line 3640
    if-eqz p1, :cond_1

    .line 3641
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3642
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v1, :cond_0

    .line 3643
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DreamOnDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 3646
    .end local v0    # "displayId":I
    :cond_0
    goto :goto_0

    .line 3647
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_2

    .line 3648
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 3649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 3652
    :cond_2
    :goto_0
    return-void
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p0, "vis"    # I
    .param p1, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p2, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p3, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p4, "navColorWin"    # Lcom/android/server/wm/WindowState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3904
    if-eqz p4, :cond_2

    .line 3905
    if-eq p4, p3, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 3910
    :cond_0
    if-ne p4, p2, :cond_2

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3912
    and-int/lit8 p0, p0, -0x11

    goto :goto_1

    .line 3907
    :cond_1
    :goto_0
    and-int/lit8 p0, p0, -0x11

    .line 3908
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    .line 3915
    :cond_2
    :goto_1
    return p0
.end method

.method private updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "vis"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;

    .line 3843
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3844
    .local v0, "onKeyguard":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v1, p3

    .line 3845
    .local v1, "statusColorWin":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_2

    if-eqz v0, :cond_3

    .line 3848
    :cond_2
    and-int/lit16 p1, p1, -0x2001

    .line 3849
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    or-int/2addr p1, v2

    goto :goto_2

    .line 3851
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3853
    and-int/lit16 p1, p1, -0x2001

    .line 3855
    :cond_4
    :goto_2
    return p1
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;
    .locals 36
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3919
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3920
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v9

    .line 3921
    .local v9, "dockedStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3922
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v10

    .line 3923
    .local v10, "freeformStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v11

    .line 3928
    .local v11, "resizing":Z
    const/4 v13, 0x0

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v11, :cond_1

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 3933
    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3934
    iput-boolean v13, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 3939
    :cond_2
    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_2
    move v14, v0

    .line 3942
    .local v14, "forceOpaqueStatusBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3943
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 3944
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_3
    move-object v15, v0

    .line 3945
    .local v15, "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v1, p3

    invoke-virtual {v0, v15, v1, v8}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 3946
    .end local p3    # "vis":I
    .local v0, "vis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v15, v0, v8}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 3947
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v13, v13}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    .line 3949
    .local v1, "dockedVis":I
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v1, v13}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v6

    .line 3952
    .end local v1    # "dockedVis":I
    .local v6, "dockedVis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3953
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v16

    .line 3954
    .local v16, "fullscreenDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3955
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 3956
    .local v17, "dockedDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3957
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v18

    .line 3958
    .local v18, "fullscreenDrawsNavBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3959
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v19

    .line 3962
    .local v19, "dockedDrawsNavigationBarBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3963
    .local v5, "type":I
    const/16 v1, 0x7d0

    if-ne v5, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v13

    :goto_4
    move/from16 v20, v1

    .line 3964
    .local v20, "statusBarHasFocus":Z
    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3965
    const/16 v1, 0x3806

    .line 3970
    .local v1, "flags":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3971
    const/high16 v2, -0x40000000    # -2.0f

    or-int/2addr v1, v2

    .line 3973
    :cond_6
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, v8, v1

    or-int v0, v2, v3

    .line 3976
    .end local v1    # "flags":I
    :cond_7
    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    .line 3977
    or-int/lit8 v0, v0, 0x8

    .line 3978
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    .line 3979
    :cond_8
    if-eqz v14, :cond_9

    .line 3980
    const v1, -0x40000009    # -1.9999989f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    .line 3979
    :cond_9
    move/from16 v21, v0

    .line 3983
    .end local v0    # "vis":I
    .local v21, "vis":I
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v9

    move v3, v10

    move v4, v11

    move/from16 v22, v5

    .end local v5    # "type":I
    .local v22, "type":I
    move/from16 v5, v18

    move/from16 v23, v6

    .end local v6    # "dockedVis":I
    .local v23, "dockedVis":I
    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZZZZ)I

    move-result v0

    .line 3987
    .end local v21    # "vis":I
    .restart local v0    # "vis":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    move v1, v13

    .line 3989
    .local v1, "immersiveSticky":Z
    :goto_6
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    .line 3991
    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v2, v13

    .line 3993
    .local v2, "hideStatusBarWM":Z
    :goto_7
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_d

    .line 4000
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v13

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v3, 0x1

    .line 4001
    .local v3, "hideStatusBarSysui":Z
    :goto_9
    if-nez v1, :cond_e

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4002
    const/4 v1, 0x1

    .line 4005
    :cond_e
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    move v4, v13

    .line 4008
    .local v4, "hideNavBarSysui":Z
    :goto_a
    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_11

    if-nez v20, :cond_10

    iget-boolean v5, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v5, :cond_11

    if-nez v2, :cond_10

    if-eqz v3, :cond_11

    if-eqz v1, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    move v5, v13

    .line 4012
    .local v5, "transientStatusBarAllowed":Z
    :goto_b
    iget-object v6, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_12

    iget-boolean v6, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v6, :cond_12

    if-eqz v4, :cond_12

    if-eqz v1, :cond_12

    const/4 v6, 0x1

    goto :goto_c

    :cond_12
    move v6, v13

    .line 4015
    .local v6, "transientNavBarAllowed":Z
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 4016
    .local v24, "now":J
    iget-wide v12, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    move/from16 v26, v1

    move/from16 p3, v2

    .end local v1    # "immersiveSticky":Z
    .end local v2    # "hideStatusBarWM":Z
    .local v26, "immersiveSticky":Z
    .local p3, "hideStatusBarWM":Z
    const-wide/16 v1, 0x0

    cmp-long v27, v12, v1

    if-eqz v27, :cond_13

    sub-long v12, v24, v12

    const-wide/16 v27, 0x7530

    cmp-long v12, v12, v27

    if-gtz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_d

    :cond_13
    const/4 v12, 0x0

    .line 4018
    .local v12, "pendingPanic":Z
    :goto_d
    iget-object v13, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4019
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    .line 4020
    .local v13, "defaultDisplayPolicy":Lcom/android/server/wm/DisplayPolicy;
    if-eqz v12, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v27

    if-nez v27, :cond_14

    .line 4022
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v27

    if-eqz v27, :cond_14

    .line 4025
    iput-wide v1, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 4026
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 4034
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, v7, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    if-nez v1, :cond_14

    .line 4036
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 4040
    :cond_14
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_15

    if-nez v5, :cond_15

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    .line 4042
    .local v1, "denyTransientStatus":Z
    :goto_e
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v6, :cond_16

    const/4 v2, 0x1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    .line 4044
    .local v2, "denyTransientNav":Z
    :goto_f
    if-nez v1, :cond_17

    if-nez v2, :cond_17

    move/from16 v27, v1

    .end local v1    # "denyTransientStatus":Z
    .local v27, "denyTransientStatus":Z
    iget-boolean v1, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v1, :cond_18

    goto :goto_10

    .end local v27    # "denyTransientStatus":Z
    .restart local v1    # "denyTransientStatus":Z
    :cond_17
    move/from16 v27, v1

    .line 4046
    .end local v1    # "denyTransientStatus":Z
    .restart local v27    # "denyTransientStatus":Z
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    .line 4047
    and-int/lit8 v0, v0, -0x8

    .line 4050
    :cond_18
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    .line 4051
    .local v1, "immersive":Z
    :goto_11
    move/from16 v28, v2

    .end local v2    # "denyTransientNav":Z
    .local v28, "denyTransientNav":Z
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_12

    :cond_1a
    const/4 v2, 0x0

    .line 4052
    .end local v26    # "immersiveSticky":Z
    .local v2, "immersiveSticky":Z
    :goto_12
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1b

    goto :goto_13

    :cond_1b
    const/16 v26, 0x0

    goto :goto_14

    :cond_1c
    :goto_13
    const/16 v26, 0x1

    .line 4054
    .local v26, "navAllowedHidden":Z
    :goto_14
    if-eqz v4, :cond_1d

    if-nez v26, :cond_1d

    move/from16 v29, v1

    .end local v1    # "immersive":Z
    .local v29, "immersive":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4055
    move/from16 v30, v2

    move-object/from16 v2, p1

    .end local v2    # "immersiveSticky":Z
    .local v30, "immersiveSticky":Z
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move/from16 v31, v3

    .end local v3    # "hideStatusBarSysui":Z
    .local v31, "hideStatusBarSysui":Z
    const/16 v3, 0x7e6

    .line 4056
    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-le v1, v2, :cond_1e

    .line 4059
    and-int/lit8 v0, v0, -0x3

    goto :goto_15

    .line 4054
    .end local v29    # "immersive":Z
    .end local v30    # "immersiveSticky":Z
    .end local v31    # "hideStatusBarSysui":Z
    .restart local v1    # "immersive":Z
    .restart local v2    # "immersiveSticky":Z
    .restart local v3    # "hideStatusBarSysui":Z
    :cond_1d
    move/from16 v29, v1

    move/from16 v30, v2

    move/from16 v31, v3

    .line 4062
    .end local v1    # "immersive":Z
    .end local v2    # "immersiveSticky":Z
    .end local v3    # "hideStatusBarSysui":Z
    .restart local v29    # "immersive":Z
    .restart local v30    # "immersiveSticky":Z
    .restart local v31    # "hideStatusBarSysui":Z
    :cond_1e
    :goto_15
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, v5, v8, v0}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 4065
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v1

    .line 4066
    .local v1, "oldImmersiveMode":Z
    invoke-direct {v7, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v2

    .line 4069
    .local v2, "newImmersiveMode":Z
    if-eqz v2, :cond_1f

    .line 4070
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicyInjector;->shouldDisableImmersiveModeConfirm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4071
    const/4 v2, 0x0

    .line 4074
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 4075
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 4076
    .local v3, "pkg":Ljava/lang/String;
    move/from16 v32, v1

    .end local v1    # "oldImmersiveMode":Z
    .local v32, "oldImmersiveMode":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    move/from16 v33, v4

    .end local v4    # "hideNavBarSysui":Z
    .local v33, "hideNavBarSysui":Z
    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4077
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v4

    .line 4078
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v34

    move/from16 v35, v5

    .end local v5    # "transientStatusBarAllowed":Z
    .local v35, "transientStatusBarAllowed":Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4076
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    goto :goto_16

    .line 4074
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v32    # "oldImmersiveMode":Z
    .end local v33    # "hideNavBarSysui":Z
    .end local v35    # "transientStatusBarAllowed":Z
    .restart local v1    # "oldImmersiveMode":Z
    .restart local v4    # "hideNavBarSysui":Z
    .restart local v5    # "transientStatusBarAllowed":Z
    :cond_20
    move/from16 v32, v1

    move/from16 v33, v4

    move/from16 v35, v5

    .line 4081
    .end local v1    # "oldImmersiveMode":Z
    .end local v4    # "hideNavBarSysui":Z
    .end local v5    # "transientStatusBarAllowed":Z
    .restart local v32    # "oldImmersiveMode":Z
    .restart local v33    # "hideNavBarSysui":Z
    .restart local v35    # "transientStatusBarAllowed":Z
    :goto_16
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v6, v8, v0}, Lcom/android/server/wm/BarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 4083
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4086
    .local v1, "navColorWin":Lcom/android/server/wm/WindowState;
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 4090
    if-eqz v1, :cond_21

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_21

    const/16 v21, 0x1

    goto :goto_17

    :cond_21
    const/16 v21, 0x0

    :goto_17
    move/from16 v3, v21

    .line 4093
    .local v3, "isManagedByIme":Z
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 26

    .line 3717
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3718
    :cond_0
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    nop

    .line 3719
    .local v0, "winCandidate":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3720
    return v1

    .line 3725
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_6

    .line 3730
    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    .line 3731
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    .line 3732
    .local v2, "lastFocusCanReceiveKeys":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 3733
    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 3734
    :cond_4
    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_2
    move-object v0, v3

    .line 3735
    if-nez v0, :cond_5

    .line 3736
    return v1

    .line 3735
    :cond_5
    move-object v11, v0

    goto :goto_3

    .line 3725
    .end local v2    # "lastFocusCanReceiveKeys":Z
    :cond_6
    move-object v11, v0

    .line 3739
    .end local v0    # "winCandidate":Lcom/android/server/wm/WindowState;
    .local v11, "winCandidate":Lcom/android/server/wm/WindowState;
    :goto_3
    move-object v12, v11

    .line 3740
    .local v12, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3747
    return v1

    .line 3750
    :cond_7
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InsetsStateController;->onBarControllingWindowChanged(Lcom/android/server/wm/WindowState;)V

    .line 3753
    const/4 v0, 0x0

    invoke-static {v12, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v2, v10, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    iget v2, v10, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    .line 3759
    .local v0, "tmpVisibility":I
    iget-boolean v2, v10, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    iget-boolean v3, v10, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-static {v2, v12, v3}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isNeedToHideNavBar(ZLcom/android/server/wm/WindowState;Z)Z

    move-result v13

    .line 3761
    .local v13, "isNeedToHideNavBar":Z
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_8

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_4
    move v14, v2

    .line 3763
    .local v14, "isAppHideNavBar":Z
    if-eqz v13, :cond_9

    if-nez v14, :cond_9

    .line 3764
    or-int/lit16 v0, v0, 0x1002

    .line 3768
    :cond_9
    iget-boolean v2, v10, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v2, :cond_a

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, v10, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_a

    .line 3769
    const/4 v2, 0x7

    .line 3770
    invoke-static {v12, v2}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    move v15, v0

    goto :goto_5

    .line 3773
    :cond_a
    move v15, v0

    .end local v0    # "tmpVisibility":I
    .local v15, "tmpVisibility":I
    :goto_5
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v10, v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v9

    .line 3775
    .local v9, "fullscreenVisibility":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v10, v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v8

    .line 3784
    .local v8, "dockedVisibility":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x4

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 3787
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x3

    iget-object v3, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 3789
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3790
    invoke-direct {v10, v12, v0, v15}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v7

    .line 3791
    .local v7, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3792
    .local v4, "visibility":I
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int v16, v4, v0

    .line 3793
    .local v16, "diff":I
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenStackSysUiFlags:I

    xor-int v17, v9, v0

    .line 3794
    .local v17, "fullscreenDiff":I
    iget v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackSysUiFlags:I

    xor-int v18, v8, v0

    .line 3795
    .local v18, "dockedDiff":I
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v3

    .line 3796
    .local v3, "needsMenu":Z
    if-nez v16, :cond_b

    if-nez v17, :cond_b

    if-nez v18, :cond_b

    iget-boolean v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    if-ne v0, v3, :cond_b

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 3797
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v0, v2, :cond_b

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 3798
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 3799
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3800
    return v1

    .line 3802
    :cond_b
    iput v4, v10, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3803
    iput v9, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenStackSysUiFlags:I

    .line 3804
    iput v8, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackSysUiFlags:I

    .line 3805
    iput-boolean v3, v10, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    .line 3806
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 3807
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3808
    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3809
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3810
    .local v5, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, v10, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3813
    .local v6, "dockedStackBounds":Landroid/graphics/Rect;
    if-eqz v13, :cond_d

    if-eqz v14, :cond_c

    goto :goto_6

    .line 3814
    :cond_c
    and-int/lit16 v0, v4, -0x1003

    move v2, v0

    goto :goto_7

    :cond_d
    nop

    :goto_6
    move v2, v4

    .line 3815
    .local v2, "vis":I
    :goto_7
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_e

    .line 3816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vis=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hideNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appHideNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3816
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    :cond_e
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 3822
    .local v19, "isNavbarColorManagedByIme":Z
    iget-object v1, v10, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;

    move-object/from16 v20, v0

    move-object v10, v1

    move-object/from16 v1, p0

    move/from16 v21, v3

    .end local v3    # "needsMenu":Z
    .local v21, "needsMenu":Z
    move v3, v9

    move/from16 v22, v4

    .end local v4    # "visibility":I
    .local v22, "visibility":I
    move v4, v8

    move-object/from16 v23, v7

    .end local v7    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .local v23, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move/from16 v7, v19

    move/from16 v24, v8

    .end local v8    # "dockedVisibility":I
    .local v24, "dockedVisibility":I
    move-object v8, v12

    move/from16 v25, v9

    .end local v9    # "fullscreenVisibility":I
    .local v25, "fullscreenVisibility":I
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$qQY9m_Itua9TDy-Nk3zzDxvjEwE;-><init>(Lcom/android/server/wm/DisplayPolicy;IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3839
    return v16
.end method

.method private updateWindowSleepToken()V
    .locals 2

    .line 3154
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    if-nez v0, :cond_0

    .line 3155
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3156
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3157
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_1

    .line 3158
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3159
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3161
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastWindowSleepTokenNeeded:Z

    .line 3162
    return-void
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1, "visibility"    # I

    .line 1395
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 1400
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 1403
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 977
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 978
    .local v0, "isScreenDecor":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    if-nez v0, :cond_2

    .line 981
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 983
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 984
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 987
    :cond_2
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_a

    const/16 v4, 0x7dd

    if-eq v2, v4, :cond_9

    const/16 v4, 0x7df

    if-eq v2, v4, :cond_8

    const/16 v4, 0x7e7

    if-eq v2, v4, :cond_9

    const/16 v1, 0x7f4

    if-eq v2, v1, :cond_7

    const/16 v1, 0x7d5

    if-eq v2, v1, :cond_3

    const/16 v1, 0x7d6

    if-eq v2, v1, :cond_8

    goto :goto_2

    .line 1022
    :cond_3
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const-wide/16 v4, 0xdac

    if-ltz v1, :cond_4

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    .line 1024
    :cond_4
    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1029
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1032
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1034
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1035
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1038
    :cond_6
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 1014
    :cond_7
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1015
    goto :goto_2

    .line 991
    :cond_8
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 993
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 994
    goto :goto_2

    .line 999
    :cond_9
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1000
    goto :goto_2

    .line 1007
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1008
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1009
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1042
    :cond_b
    :goto_2
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_c

    .line 1044
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1046
    :cond_c
    return-void
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .line 3636
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 2877
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 2878
    .local v0, "affectsSystemUi":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Win "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": affectsSystemUi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2880
    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 2881
    .local v1, "fl":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_1

    .line 2883
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 2884
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 2886
    :cond_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_3

    .line 2887
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    .line 2888
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    .line 2890
    :cond_2
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_3

    .line 2891
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    .line 2895
    :cond_3
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x0

    if-lt v3, v4, :cond_4

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v3, v5, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v6

    .line 2897
    .local v3, "appWindow":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v5

    .line 2898
    .local v5, "windowingMode":I
    if-eq v5, v4, :cond_6

    const/4 v7, 0x4

    if-ne v5, v7, :cond_5

    goto :goto_1

    :cond_5
    move v7, v6

    goto :goto_2

    :cond_6
    :goto_1
    move v7, v4

    .line 2901
    .local v7, "inFullScreenOrSplitScreenSecondaryWindowingMode":Z
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_d

    if-eqz v0, :cond_d

    .line 2902
    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_7

    .line 2903
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 2905
    :cond_7
    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7e7

    if-ne v8, v9, :cond_9

    .line 2908
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v8, :cond_8

    .line 2909
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2910
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2911
    const/4 v3, 0x1

    .line 2918
    :cond_9
    if-eqz v3, :cond_d

    if-nez p3, :cond_d

    .line 2919
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v7, :cond_d

    .line 2920
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fullscreen window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    :cond_a
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2924
    new-array v8, v4, [I

    const/16 v9, 0x50

    aput v9, v8, v6

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_b

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    .line 2925
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2926
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    .line 2927
    sget-boolean v6, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_b

    .line 2928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FP_ACCELERATE: top full app win="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    .line 2933
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2935
    :cond_c
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_d

    .line 2936
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2943
    :cond_d
    if-eqz v0, :cond_f

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7ef

    if-ne v2, v6, :cond_f

    .line 2944
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_e

    .line 2945
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2946
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_e

    .line 2947
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2950
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f

    .line 2951
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2952
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f

    .line 2953
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2959
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_10

    if-eqz v0, :cond_10

    .line 2960
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v7, :cond_10

    .line 2961
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2967
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x3

    if-nez v2, :cond_11

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    if-nez p3, :cond_11

    .line 2968
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_11

    if-ne v5, v6, :cond_11

    .line 2969
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2970
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_11

    .line 2971
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2977
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_12

    if-ne v5, v6, :cond_12

    .line 2979
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2984
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-static {v2, v6}, Lcom/android/server/wm/OpScreenCompatInjector;->expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 2991
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v2, v6

    if-eqz v2, :cond_13

    .line 2992
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAcquireSleepToken()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2993
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    .line 2996
    :cond_13
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 1411
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 17
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1625
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1628
    iget v0, v8, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    .line 1630
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 1631
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 1634
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1635
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpQuickPayInjector;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 1641
    :cond_0
    iget v9, v7, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 1642
    .local v9, "sysui":I
    and-int/lit8 v0, v9, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1643
    .local v0, "navVisible":Z
    :goto_0
    const v3, -0x7fff8000

    and-int/2addr v3, v9

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1645
    .local v3, "navTranslucent":Z
    :goto_1
    and-int/lit16 v4, v9, 0x800

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    move v10, v4

    .line 1646
    .local v10, "immersive":Z
    and-int/lit16 v4, v9, 0x1000

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    move v11, v4

    .line 1647
    .local v11, "immersiveSticky":Z
    if-nez v10, :cond_6

    if-eqz v11, :cond_5

    goto :goto_4

    :cond_5
    move v4, v2

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, 0x1

    :goto_5
    move v12, v4

    .line 1648
    .local v12, "navAllowedHidden":Z
    if-nez v11, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    move v4, v2

    :goto_6
    and-int v13, v3, v4

    .line 1649
    .end local v3    # "navTranslucent":Z
    .local v13, "navTranslucent":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1650
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    move v3, v2

    :goto_7
    move v14, v3

    .line 1651
    .local v14, "isKeyguardShowing":Z
    if-nez v14, :cond_9

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_9

    .line 1652
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    move v6, v2

    .line 1658
    .local v6, "statusBarForcesShowingNavigation":Z
    :goto_8
    if-nez v0, :cond_b

    if-eqz v12, :cond_a

    goto :goto_9

    .line 1664
    :cond_a
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v3, :cond_c

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1665
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;

    invoke-direct {v5, v7}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iget v15, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    const-string v1, "nav_input_consumer"

    invoke-virtual {v3, v4, v1, v5, v15}, Lcom/android/server/wm/WindowManagerService;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1671
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_a

    .line 1659
    :cond_b
    :goto_9
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v1, :cond_c

    .line 1660
    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    .line 1661
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1660
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1662
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1676
    :cond_c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 1679
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_d

    .line 1680
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x901

    if-ne v1, v4, :cond_d

    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1682
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    move v15, v1

    .line 1684
    .local v15, "shouldForceHide":Z
    if-nez v15, :cond_e

    move v2, v3

    :cond_e
    and-int v16, v0, v2

    .line 1687
    .end local v0    # "navVisible":Z
    .local v16, "navVisible":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    move v4, v13

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZ)Z

    move-result v0

    .line 1689
    .local v0, "updateSysUiVisibility":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDock rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_f
    invoke-direct {v7, v8, v9, v14}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1691
    if-eqz v0, :cond_10

    .line 1692
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 1694
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;)V

    .line 1696
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_11

    .line 1700
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1710
    :cond_11
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1711
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1712
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    .line 2853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2854
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2855
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2856
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 2857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 2858
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    .line 2859
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    .line 2860
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 2861
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 2863
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 2864
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2865
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepTokenNeeded:Z

    .line 2866
    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .locals 3
    .param p1, "callingPid"    # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$pqtzqy0ti-csynvTP9P1eQUE-gE;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 3500
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3501
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 4323
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4325
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4326
    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4327
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4328
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4329
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4330
    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4331
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4332
    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4333
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4334
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4335
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4336
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4337
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 4339
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4340
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4341
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4342
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4343
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4344
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4346
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 4347
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4349
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4350
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4351
    const-string v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4352
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    .line 4353
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4354
    const-string v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4356
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    .line 4357
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4358
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4359
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4360
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4361
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4363
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    .line 4364
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4366
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_6

    .line 4367
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4369
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_7

    .line 4370
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4371
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4373
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    .line 4374
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4375
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4377
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_9

    .line 4378
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4379
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4380
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4382
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4383
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4384
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4385
    const-string v0, " mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4386
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4387
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4388
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4389
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4391
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4392
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4393
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 913
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 914
    monitor-exit v0

    .line 915
    return v1

    .line 909
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    .line 3011
    const/4 v0, 0x0

    .line 3012
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 3018
    .local v1, "topIsFullscreen":Z
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 3019
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 3020
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    if-eqz v2, :cond_1

    .line 3021
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    .line 3022
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3025
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    if-nez v2, :cond_1

    .line 3026
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingSleepTokenNeeded:Z

    .line 3027
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3031
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_17

    .line 3032
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v5, "WindowManager"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " forcefkg="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " top="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    .line 3038
    .local v2, "shouldBeTransparent":Z
    :goto_1
    if-nez v2, :cond_4

    .line 3039
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/StatusBarController;->setShowTransparent(Z)V

    goto :goto_2

    .line 3040
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3041
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/StatusBarController;->setShowTransparent(Z)V

    .line 3044
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 3045
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v3

    .line 3047
    .local v6, "statusBarForcesShowingNavigation":Z
    :goto_3
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v7

    .line 3051
    .local v7, "topAppHidesStatusBar":Z
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3052
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-eqz v8, :cond_7

    .line 3053
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3054
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_7

    .line 3055
    const-string v8, "QuickReply: mForceStatusBar to false"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :cond_7
    if-eqz v6, :cond_8

    .line 3059
    const/4 v6, 0x0

    .line 3060
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_8

    .line 3061
    const-string v8, "QuickReply: statusBarForcesShowingNavigation to false"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_8
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarTransparent:Z

    if-nez v8, :cond_11

    if-eqz v6, :cond_9

    goto/16 :goto_5

    .line 3082
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_16

    .line 3083
    move v1, v7

    .line 3088
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3089
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3090
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 3098
    :cond_a
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-nez v8, :cond_e

    if-eqz v1, :cond_b

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x5

    .line 3101
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x3

    .line 3102
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    .line 3118
    :cond_b
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_c

    const-string v3, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3120
    or-int/lit8 v0, v0, 0x1

    .line 3122
    :cond_d
    const/4 v7, 0x0

    goto :goto_7

    .line 3111
    :cond_e
    :goto_4
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_f

    const-string v4, "** HIDING status bar"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3113
    or-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3115
    :cond_10
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_16

    const-string v3, "Status bar already hiding"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3068
    :cond_11
    :goto_5
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_12

    const-string v8, "Showing status bar: forced"

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_12
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3070
    or-int/lit8 v0, v0, 0x1

    .line 3074
    :cond_13
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_6

    :cond_14
    move v4, v3

    :goto_6
    move v1, v4

    .line 3077
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBarFromKeyguard:Z

    if-nez v4, :cond_15

    if-eqz v6, :cond_16

    :cond_15
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 3078
    invoke-virtual {v4}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3079
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v4, v3, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    .line 3125
    :cond_16
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 3128
    .end local v2    # "shouldBeTransparent":Z
    .end local v6    # "statusBarForcesShowingNavigation":Z
    .end local v7    # "topAppHidesStatusBar":Z
    :cond_17
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_19

    .line 3129
    if-nez v1, :cond_18

    .line 3131
    or-int/lit8 v0, v0, 0x1

    .line 3133
    :cond_18
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 3136
    :cond_19
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 3139
    or-int/lit8 v0, v0, 0x1

    .line 3142
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_1b

    .line 3143
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 3144
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    .line 3147
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateWindowSleepToken()V

    .line 3149
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 3150
    return v0
.end method

.method public finishScreenTurningOn()Z
    .locals 4

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishScreenTurningOn: mAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnFully="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyguardDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWindowManagerDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 953
    :cond_2
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "WindowManager"

    const-string v2, "Finished screen turning on..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 956
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 957
    monitor-exit v0

    .line 958
    return v1

    .line 947
    :cond_5
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 957
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 926
    monitor-exit v0

    .line 927
    return v1

    .line 922
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 2
    .param p1, "lastFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 3595
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3596
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3600
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    if-eqz v0, :cond_0

    .line 3602
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-static {v0, p2, v1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isNeedToHideNavBar(ZLcom/android/server/wm/WindowState;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    .line 3609
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/wm/OpQuickReplyInjector;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3614
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_1

    .line 3615
    invoke-static {p1, p2}, Lcom/android/server/policy/OpQuickPayInjector;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3618
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    .line 3619
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3621
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 3624
    const/4 v0, 0x1

    return v0

    .line 3626
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3469
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3470
    .local v0, "statusBarHeight":I
    if-eqz p5, :cond_0

    .line 3473
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3475
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3454
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3347
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3339
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 3340
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3342
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 833
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    return v0
.end method

.method public getDockMode()I
    .locals 1

    .line 802
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getFocusedAppOrientation()I
    .locals 1

    .line 3696
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 3697
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v0

    return v0

    .line 3700
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedWindowState()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .locals 1

    .line 3565
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .locals 19
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p4, "floatingStack"    # Z
    .param p5, "outFrame"    # Landroid/graphics/Rect;
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .param p8, "outOutsets"    # Landroid/graphics/Rect;
    .param p9, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    const/4 v7, 0x0

    invoke-static {v7, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    .line 1438
    .local v8, "fl":I
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1439
    .local v9, "pfl":I
    invoke-static {v7, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 1440
    .local v7, "requestedSysUiVis":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    or-int/2addr v10, v7

    .line 1441
    .local v10, "sysUiVis":I
    iget v11, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1443
    .local v11, "displayRotation":I
    const/4 v13, 0x1

    if-eqz v5, :cond_0

    invoke-static {v1, v8}, Lcom/android/server/wm/DisplayPolicy;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v14

    if-eqz v14, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 1444
    .local v14, "useOutsets":Z
    :goto_0
    if-eqz v14, :cond_4

    .line 1445
    iget v15, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 1446
    .local v15, "outset":I
    if-lez v15, :cond_4

    .line 1447
    if-nez v11, :cond_1

    .line 1448
    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1449
    :cond_1
    if-ne v11, v13, :cond_2

    .line 1450
    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1451
    :cond_2
    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 1452
    iget v12, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1453
    :cond_3
    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 1454
    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v15

    iput v12, v5, Landroid/graphics/Rect;->left:I

    .line 1459
    .end local v15    # "outset":I
    :cond_4
    :goto_1
    and-int/lit16 v12, v8, 0x100

    if-eqz v12, :cond_5

    move v12, v13

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 1460
    .local v12, "layoutInScreen":Z
    :goto_2
    if-eqz v12, :cond_6

    const/high16 v15, 0x10000

    and-int/2addr v15, v8

    if-eqz v15, :cond_6

    move v15, v13

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    .line 1462
    .local v15, "layoutInScreenAndInsetDecor":Z
    :goto_3
    const/high16 v17, 0x400000

    and-int v17, v9, v17

    if-eqz v17, :cond_7

    move/from16 v17, v13

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    .line 1464
    .local v17, "screenDecor":Z
    :goto_4
    if-eqz v15, :cond_11

    if-nez v17, :cond_11

    .line 1465
    and-int/lit16 v13, v10, 0x200

    if-eqz v13, :cond_8

    .line 1466
    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 1468
    :cond_8
    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1472
    :goto_5
    if-eqz p4, :cond_9

    .line 1473
    const/4 v13, 0x0

    .local v13, "sf":Landroid/graphics/Rect;
    goto :goto_6

    .line 1475
    .end local v13    # "sf":Landroid/graphics/Rect;
    :cond_9
    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1479
    .restart local v13    # "sf":Landroid/graphics/Rect;
    :goto_6
    if-eqz p4, :cond_a

    .line 1480
    const/16 v18, 0x0

    move-object/from16 v1, v18

    .local v18, "cf":Landroid/graphics/Rect;
    goto :goto_8

    .line 1481
    .end local v18    # "cf":Landroid/graphics/Rect;
    :cond_a
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_c

    .line 1482
    and-int/lit16 v1, v8, 0x400

    if-eqz v1, :cond_b

    .line 1483
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .local v1, "cf":Landroid/graphics/Rect;
    goto :goto_8

    .line 1485
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_b
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .restart local v1    # "cf":Landroid/graphics/Rect;
    goto :goto_8

    .line 1487
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_c
    and-int/lit16 v1, v8, 0x400

    if-nez v1, :cond_e

    const/high16 v1, 0x2000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_d

    goto :goto_7

    .line 1490
    :cond_d
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .restart local v1    # "cf":Landroid/graphics/Rect;
    goto :goto_8

    .line 1488
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_e
    :goto_7
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    .line 1493
    .restart local v1    # "cf":Landroid/graphics/Rect;
    :goto_8
    if-eqz v2, :cond_f

    .line 1494
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1496
    :cond_f
    move-object/from16 v5, p6

    invoke-static {v4, v1, v5}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1497
    move-object/from16 v18, v1

    move-object/from16 v1, p7

    .end local v1    # "cf":Landroid/graphics/Rect;
    .restart local v18    # "cf":Landroid/graphics/Rect;
    invoke-static {v4, v13, v1}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1498
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1499
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 1498
    invoke-virtual {v6, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1506
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    if-nez v1, :cond_10

    const/16 v16, 0x1

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :goto_9
    return v16

    .line 1464
    .end local v13    # "sf":Landroid/graphics/Rect;
    .end local v18    # "cf":Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v5, p6

    .line 1509
    if-eqz v12, :cond_12

    .line 1510
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 1512
    :cond_12
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1514
    :goto_a
    if-eqz v2, :cond_13

    .line 1515
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1518
    :cond_13
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1519
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    .line 1520
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v6, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1527
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    if-nez v1, :cond_14

    const/16 v16, 0x1

    goto :goto_b

    :cond_14
    const/16 v16, 0x0

    :goto_b
    return v16
.end method

.method public getLidState()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    .line 3588
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3433
    move v0, p2

    .line 3434
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3435
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3436
    .local v1, "navBarPosition":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3437
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3440
    .end local v1    # "navBarPosition":I
    :cond_0
    if-eqz p5, :cond_1

    .line 3441
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3443
    :cond_1
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .locals 3
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3382
    move v0, p1

    .line 3383
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3384
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3385
    .local v1, "navBarPosition":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3386
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3389
    .end local v1    # "navBarPosition":I
    :cond_1
    if-eqz p5, :cond_2

    .line 3390
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3392
    :cond_2
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p5, "outInsets"    # Landroid/graphics/Rect;

    .line 3533
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3536
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3537
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3538
    .local v0, "uiMode":I
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3539
    .local v1, "position":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3540
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 3541
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3542
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3543
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3544
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 3548
    .end local v0    # "uiMode":I
    .end local v1    # "position":I
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 3549
    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 3550
    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 3551
    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 3552
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 3554
    :cond_3
    return-void
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .locals 1

    .line 4319
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p5, "outInsets"    # Landroid/graphics/Rect;

    .line 3514
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3517
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3518
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3519
    return-void
.end method

.method public getStatusBar()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 4486
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .locals 2

    .line 3485
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3486
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3485
    :goto_0
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method public hasStatusBar()Z
    .locals 1

    .line 842
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .line 870
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .locals 1

    .line 3490
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method public isStatusBarKeyguard()Z
    .locals 1

    .line 3690
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 3691
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3690
    :goto_0
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$beginLayoutLw$8$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1
    .param p1, "x$0"    # Landroid/view/InputChannel;
    .param p2, "x$1"    # Landroid/os/Looper;

    .line 1667
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public synthetic lambda$new$0$DisplayPolicy(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 712
    return-void

    .line 714
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowSleepTokenOnDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 716
    return-void
.end method

.method public synthetic lambda$new$1$DisplayPolicy()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 719
    return-void

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 723
    return-void
.end method

.method public synthetic lambda$notifyDisplayReady$9$DisplayPolicy()V
    .locals 2

    .line 3369
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3370
    .local v0, "displayId":I
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 3371
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 3372
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1099
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1101
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1123
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1124
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1127
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1128
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1129
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1130
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1131
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1134
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1135
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1136
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1137
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1138
    return-void
.end method

.method public synthetic lambda$prepareAddWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1141
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_1

    .line 1143
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1145
    :cond_1
    return-void
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$10$DisplayPolicy(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/android/server/wm/WindowState;Z)V
    .locals 12
    .param p1, "vis"    # I
    .param p2, "fullscreenVisibility"    # I
    .param p3, "dockedVisibility"    # I
    .param p4, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "isNavbarColorManagedByIme"    # Z
    .param p7, "win"    # Lcom/android/server/wm/WindowState;
    .param p8, "needsMenu"    # Z

    .line 3823
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v10

    .line 3824
    .local v10, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v10, :cond_0

    .line 3825
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v11

    .line 3832
    .local v11, "displayId":I
    const/4 v5, -0x1

    .line 3835
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3832
    move-object v0, v10

    move v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 3836
    move/from16 v0, p8

    invoke-interface {v10, v11, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZ)V

    goto :goto_0

    .line 3824
    .end local v11    # "displayId":I
    :cond_0
    move/from16 v0, p8

    .line 3838
    :goto_0
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 53
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attached"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2128
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v13, v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v12

    move-object v1, v13

    goto/16 :goto_34

    :cond_1
    :goto_0
    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v13, v0, :cond_77

    iget-object v0, v12, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 2129
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v12

    move-object v1, v13

    goto/16 :goto_34

    .line 2132
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 2133
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v16

    .line 2135
    .local v16, "isDefaultDisplay":Z
    iget v10, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2136
    .local v10, "type":I
    invoke-static {v13, v11}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    .line 2137
    .local v9, "fl":I
    iget v8, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2138
    .local v8, "pfl":I
    iget v7, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2139
    .local v7, "sim":I
    const/4 v0, 0x0

    invoke-static {v0, v11}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v17

    .line 2147
    .local v17, "requestedSysUiFl":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v18

    .line 2148
    .local v18, "isQuickReplyWin":Z
    invoke-static {v11}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v0, v17, v0

    .line 2149
    .local v0, "sysUiFl":I
    if-eqz v18, :cond_3

    .line 2150
    or-int/lit8 v0, v0, 0x4

    move v6, v0

    goto :goto_1

    .line 2149
    :cond_3
    move v6, v0

    .line 2155
    .end local v0    # "sysUiFl":I
    .local v6, "sysUiFl":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v5

    .line 2157
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowFrames;->setHasOutsets(Z)V

    .line 2158
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2159
    iget-object v3, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 2160
    .local v3, "pf":Landroid/graphics/Rect;
    iget-object v2, v5, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 2161
    .local v2, "df":Landroid/graphics/Rect;
    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    .line 2162
    .local v1, "of":Landroid/graphics/Rect;
    iget-object v0, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 2163
    .local v0, "cf":Landroid/graphics/Rect;
    iget-object v4, v5, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 2164
    .local v4, "vf":Landroid/graphics/Rect;
    iget-object v14, v5, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 2165
    .local v14, "dcf":Landroid/graphics/Rect;
    move/from16 v27, v8

    .end local v8    # "pfl":I
    .local v27, "pfl":I
    iget-object v8, v5, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 2166
    .local v8, "sf":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 2167
    move/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "sysUiFl":I
    .local v28, "sysUiFl":I
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 2168
    iget-object v6, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 2171
    invoke-direct {v12, v11}, Lcom/android/server/wm/DisplayPolicy;->opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v29

    .line 2181
    .local v29, "forceNoNavBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_5

    .line 2182
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, v12, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v12, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-nez v6, :cond_4

    iget-boolean v6, v12, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v6, :cond_5

    :cond_4
    if-nez v29, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    move/from16 v30, v6

    .line 2197
    .local v30, "hasNavBar":Z
    and-int/lit16 v6, v7, 0xf0

    .line 2198
    .local v6, "adjust":I
    const/16 v19, 0x0

    .line 2200
    .local v19, "blockAdjustIME":Z
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v20

    if-eqz v20, :cond_8

    iget-object v13, v12, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2201
    invoke-static {v13}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2202
    const/16 v6, 0x30

    .line 2204
    const/4 v13, 0x1

    if-lt v10, v13, :cond_6

    const/16 v13, 0x63

    if-gt v10, v13, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 2206
    .local v13, "isAppWindow":Z
    :goto_3
    if-nez v13, :cond_7

    .line 2207
    const/16 v19, 0x1

    .line 2208
    move/from16 v20, v6

    .end local v6    # "adjust":I
    .local v20, "adjust":I
    iget-object v6, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v32, v19

    move/from16 v13, v20

    goto :goto_4

    .line 2206
    .end local v20    # "adjust":I
    .restart local v6    # "adjust":I
    :cond_7
    move/from16 v20, v6

    .end local v6    # "adjust":I
    .restart local v20    # "adjust":I
    move/from16 v32, v19

    move/from16 v13, v20

    goto :goto_4

    .line 2213
    .end local v13    # "isAppWindow":Z
    .end local v20    # "adjust":I
    .restart local v6    # "adjust":I
    :cond_8
    move v13, v6

    move/from16 v32, v19

    .end local v6    # "adjust":I
    .end local v19    # "blockAdjustIME":Z
    .local v13, "adjust":I
    .local v32, "blockAdjustIME":Z
    :goto_4
    and-int/lit16 v6, v9, 0x400

    if-nez v6, :cond_a

    and-int/lit8 v6, v17, 0x4

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v6, 0x1

    :goto_6
    move/from16 v33, v6

    .line 2216
    .local v33, "requestedFullscreen":Z
    and-int/lit16 v6, v9, 0x100

    move/from16 v34, v7

    .end local v7    # "sim":I
    .local v34, "sim":I
    const/16 v7, 0x100

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    move/from16 v35, v6

    .line 2217
    .local v35, "layoutInScreen":Z
    const/high16 v6, 0x10000

    and-int/2addr v6, v9

    const/high16 v7, 0x10000

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_8
    move/from16 v36, v6

    .line 2219
    .local v36, "layoutInsetDecor":Z
    iget-object v6, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2221
    const/16 v7, 0x7db

    const-string v6, "WindowManager"

    if-ne v10, v7, :cond_17

    .line 2222
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2223
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2224
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2225
    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2226
    iget-object v7, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v39, v5

    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v39, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2228
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 2230
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2231
    iget-object v5, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_e

    iget-object v7, v12, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v7, v5, :cond_e

    invoke-direct {v12, v5}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2234
    iget v5, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_d

    .line 2235
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto :goto_9

    .line 2237
    :cond_d
    const/4 v7, 0x1

    if-ne v5, v7, :cond_e

    .line 2238
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 2245
    :cond_e
    :goto_9
    iget v5, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_13

    .line 2246
    iget v5, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2247
    .local v5, "rotation":I
    iget-object v7, v12, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 2255
    .local v7, "uimode":I
    move-object/from16 v40, v6

    iget-object v6, v12, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 2256
    .local v6, "orientation":I
    const/16 v20, 0x0

    .line 2257
    .local v20, "navHeightOffset":I
    move/from16 v41, v9

    .end local v9    # "fl":I
    .local v41, "fl":I
    iget-object v9, v12, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v42, v13

    .end local v13    # "adjust":I
    .local v42, "adjust":I
    const v13, 0x506009b

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 2259
    .local v9, "inputMethodPaddingLand":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v13

    if-nez v13, :cond_10

    .line 2260
    const/4 v13, 0x1

    if-ne v6, v13, :cond_f

    .line 2261
    invoke-direct {v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v20

    move/from16 v43, v10

    goto :goto_a

    .line 2263
    :cond_f
    move/from16 v43, v10

    .end local v10    # "type":I
    .local v43, "type":I
    new-array v10, v13, [I

    const/16 v19, 0x86

    const/16 v21, 0x0

    aput v19, v10, v21

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2264
    move/from16 v20, v9

    goto :goto_a

    .line 2269
    .end local v43    # "type":I
    .restart local v10    # "type":I
    :cond_10
    move/from16 v43, v10

    const/4 v13, 0x1

    .end local v10    # "type":I
    .restart local v43    # "type":I
    if-ne v6, v13, :cond_11

    .line 2270
    invoke-direct {v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v10

    invoke-direct {v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v19

    sub-int v20, v10, v19

    goto :goto_a

    .line 2271
    :cond_11
    new-array v10, v13, [I

    const/16 v13, 0x86

    const/16 v19, 0x0

    aput v13, v10, v19

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2272
    invoke-direct {v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v10

    sub-int v20, v9, v10

    .line 2278
    :cond_12
    :goto_a
    if-lez v20, :cond_15

    .line 2279
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, v20

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2280
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, v20

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 2281
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, v20

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 2282
    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, v20

    iput v10, v14, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    .line 2290
    .end local v5    # "rotation":I
    .end local v6    # "orientation":I
    .end local v7    # "uimode":I
    .end local v20    # "navHeightOffset":I
    .end local v41    # "fl":I
    .end local v42    # "adjust":I
    .end local v43    # "type":I
    .local v9, "fl":I
    .restart local v10    # "type":I
    .restart local v13    # "adjust":I
    :cond_13
    move-object/from16 v40, v6

    move/from16 v41, v9

    move/from16 v43, v10

    move/from16 v42, v13

    .end local v9    # "fl":I
    .end local v10    # "type":I
    .end local v13    # "adjust":I
    .restart local v41    # "fl":I
    .restart local v42    # "adjust":I
    .restart local v43    # "type":I
    const/4 v6, 0x1

    new-array v5, v6, [I

    const/16 v7, 0x86

    const/4 v9, 0x0

    aput v7, v5, v9

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v12, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-eq v5, v6, :cond_14

    const/4 v7, 0x2

    if-ne v5, v7, :cond_15

    .line 2291
    :cond_14
    iget v5, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2292
    .restart local v5    # "rotation":I
    iget-object v7, v12, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v7

    .line 2293
    .restart local v7    # "uimode":I
    iget-object v10, v12, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    .line 2294
    .local v10, "orientation":I
    iget-object v13, v12, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v6, 0x506009b

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2295
    .local v6, "inputMethodPaddingLand":I
    const/4 v13, 0x0

    .line 2296
    .local v13, "navHeightOffset":I
    const/4 v9, 0x2

    if-ne v10, v9, :cond_16

    .line 2297
    move v13, v6

    .line 2298
    if-lez v13, :cond_16

    .line 2299
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v13

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 2300
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v13

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 2301
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v13

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 2302
    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v13

    iput v9, v14, Landroid/graphics/Rect;->bottom:I

    goto :goto_c

    .line 2290
    .end local v5    # "rotation":I
    .end local v6    # "inputMethodPaddingLand":I
    .end local v7    # "uimode":I
    .end local v10    # "orientation":I
    .end local v13    # "navHeightOffset":I
    :cond_15
    :goto_b
    nop

    .line 2311
    :cond_16
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2312
    iget-object v5, v12, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v4

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static/range {v19 .. v25}, Lcom/android/server/wm/OpQuickReplyInjector;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2315
    const/16 v5, 0x50

    iput v5, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object v9, v1

    move-object v10, v2

    move-object v7, v4

    move-object/from16 v38, v11

    move-object v5, v12

    move-object/from16 v37, v14

    move/from16 v20, v27

    move/from16 v4, v28

    move/from16 v23, v34

    move-object/from16 v44, v39

    move-object/from16 v14, v40

    move/from16 v6, v41

    move/from16 v13, v42

    move/from16 v12, v43

    move-object v11, v3

    move-object/from16 v27, v8

    move-object v8, v0

    const/4 v0, 0x1

    goto/16 :goto_28

    .line 2316
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v41    # "fl":I
    .end local v42    # "adjust":I
    .end local v43    # "type":I
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v9    # "fl":I
    .local v10, "type":I
    .local v13, "adjust":I
    :cond_17
    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move/from16 v41, v9

    move/from16 v43, v10

    move/from16 v42, v13

    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v9    # "fl":I
    .end local v10    # "type":I
    .end local v13    # "adjust":I
    .restart local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v41    # "fl":I
    .restart local v42    # "adjust":I
    .restart local v43    # "type":I
    const/16 v5, 0x7ef

    const/16 v6, 0x30

    const/16 v7, 0x10

    .end local v43    # "type":I
    .restart local v10    # "type":I
    if-ne v10, v5, :cond_1a

    .line 2317
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2318
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2319
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2320
    move/from16 v13, v42

    .end local v42    # "adjust":I
    .restart local v13    # "adjust":I
    if-eq v13, v7, :cond_18

    .line 2321
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 2323
    :cond_18
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2325
    :goto_d
    if-eq v13, v6, :cond_19

    .line 2326
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v9, v1

    move-object v7, v4

    move-object/from16 v38, v11

    move-object v5, v12

    move-object/from16 v37, v14

    move/from16 v20, v27

    move/from16 v4, v28

    move/from16 v23, v34

    move-object/from16 v44, v39

    move-object/from16 v14, v40

    move/from16 v6, v41

    move-object v11, v3

    move-object/from16 v27, v8

    move v12, v10

    move-object v8, v0

    move-object v10, v2

    const/4 v0, 0x1

    goto/16 :goto_28

    .line 2328
    :cond_19
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v9, v1

    move-object v7, v4

    move-object/from16 v38, v11

    move-object v5, v12

    move-object/from16 v37, v14

    move/from16 v20, v27

    move/from16 v4, v28

    move/from16 v23, v34

    move-object/from16 v44, v39

    move-object/from16 v14, v40

    move/from16 v6, v41

    move-object v11, v3

    move-object/from16 v27, v8

    move v12, v10

    move-object v8, v0

    move-object v10, v2

    const/4 v0, 0x1

    goto/16 :goto_28

    .line 2330
    .end local v13    # "adjust":I
    .restart local v42    # "adjust":I
    :cond_1a
    move/from16 v13, v42

    .end local v42    # "adjust":I
    .restart local v13    # "adjust":I
    const/16 v5, 0x7dd

    if-ne v10, v5, :cond_1b

    .line 2331
    move-object v9, v0

    .end local v0    # "cf":Landroid/graphics/Rect;
    .local v9, "cf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v6, v1

    .end local v1    # "of":Landroid/graphics/Rect;
    .local v6, "of":Landroid/graphics/Rect;
    move-object/from16 v1, p3

    move-object v7, v2

    .end local v2    # "df":Landroid/graphics/Rect;
    .local v7, "df":Landroid/graphics/Rect;
    move-object v2, v3

    move-object v5, v3

    .end local v3    # "pf":Landroid/graphics/Rect;
    .local v5, "pf":Landroid/graphics/Rect;
    move-object v3, v7

    move-object/from16 v19, v7

    move-object v7, v4

    .end local v4    # "vf":Landroid/graphics/Rect;
    .local v7, "vf":Landroid/graphics/Rect;
    .local v19, "df":Landroid/graphics/Rect;
    move-object v4, v6

    move-object/from16 v20, v8

    move-object/from16 v44, v39

    move-object v8, v5

    .end local v5    # "pf":Landroid/graphics/Rect;
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v20, "sf":Landroid/graphics/Rect;
    .local v44, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v38, v11

    move-object v5, v12

    move-object/from16 v37, v14

    move/from16 v4, v28

    move/from16 v23, v34

    move-object/from16 v14, v40

    const/4 v0, 0x1

    move-object v11, v8

    move-object v8, v9

    move v12, v10

    move-object/from16 v10, v19

    move-object v9, v6

    move/from16 v6, v41

    move/from16 v51, v27

    move-object/from16 v27, v20

    move/from16 v20, v51

    goto/16 :goto_28

    .line 2332
    .end local v6    # "of":Landroid/graphics/Rect;
    .end local v7    # "vf":Landroid/graphics/Rect;
    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v19    # "df":Landroid/graphics/Rect;
    .end local v20    # "sf":Landroid/graphics/Rect;
    .end local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v0    # "cf":Landroid/graphics/Rect;
    .restart local v1    # "of":Landroid/graphics/Rect;
    .restart local v2    # "df":Landroid/graphics/Rect;
    .restart local v3    # "pf":Landroid/graphics/Rect;
    .restart local v4    # "vf":Landroid/graphics/Rect;
    .local v8, "sf":Landroid/graphics/Rect;
    .restart local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_1b
    move-object v9, v0

    move-object v5, v2

    move v0, v7

    move-object/from16 v20, v8

    move-object/from16 v44, v39

    move-object v8, v3

    move-object v7, v4

    move-object v4, v1

    .end local v0    # "cf":Landroid/graphics/Rect;
    .end local v1    # "of":Landroid/graphics/Rect;
    .end local v2    # "df":Landroid/graphics/Rect;
    .end local v3    # "pf":Landroid/graphics/Rect;
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v4, "of":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .restart local v9    # "cf":Landroid/graphics/Rect;
    .restart local v20    # "sf":Landroid/graphics/Rect;
    .restart local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v1, v12, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p1

    const/4 v2, 0x1

    if-ne v3, v1, :cond_1d

    .line 2333
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2334
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2335
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2336
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2337
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2339
    if-ne v13, v0, :cond_1c

    .line 2340
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    move-object/from16 v38, v11

    move-object/from16 v37, v14

    move/from16 v23, v34

    move-object/from16 v14, v40

    move/from16 v6, v41

    move-object v11, v8

    move-object v8, v9

    move-object v9, v4

    move/from16 v4, v28

    move/from16 v51, v10

    move-object v10, v5

    move-object v5, v12

    move/from16 v12, v51

    move/from16 v52, v27

    move-object/from16 v27, v20

    move/from16 v20, v52

    goto/16 :goto_28

    .line 2342
    :cond_1c
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 2343
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    move-object/from16 v38, v11

    move-object/from16 v37, v14

    move/from16 v23, v34

    move-object/from16 v14, v40

    move/from16 v6, v41

    move-object v11, v8

    move-object v8, v9

    move-object v9, v4

    move/from16 v4, v28

    move/from16 v51, v10

    move-object v10, v5

    move-object v5, v12

    move/from16 v12, v51

    move/from16 v52, v27

    move-object/from16 v27, v20

    move/from16 v20, v52

    goto/16 :goto_28

    .line 2346
    :cond_1d
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v14, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2347
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_e

    :cond_1e
    const/4 v1, 0x0

    :goto_e
    move/from16 v19, v1

    .line 2349
    .local v19, "inheritTranslucentDecor":Z
    if-lt v10, v2, :cond_1f

    const/16 v1, 0x63

    if-gt v10, v1, :cond_1f

    move v1, v2

    goto :goto_f

    :cond_1f
    const/4 v1, 0x0

    :goto_f
    move/from16 v21, v1

    .line 2351
    .local v21, "isAppWindow":Z
    iget-object v1, v12, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v3, v1, :cond_20

    .line 2352
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v2

    goto :goto_10

    :cond_20
    const/4 v1, 0x0

    :goto_10
    move/from16 v22, v1

    .line 2353
    .local v22, "topAtRest":Z
    if-eqz v21, :cond_24

    if-nez v19, :cond_24

    if-nez v22, :cond_24

    .line 2354
    and-int/lit8 v1, v28, 0x4

    if-nez v1, :cond_21

    move/from16 v1, v41

    .end local v41    # "fl":I
    .local v1, "fl":I
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_22

    const/high16 v2, 0x4000000

    and-int/2addr v2, v1

    if-nez v2, :cond_22

    const/high16 v2, -0x80000000

    and-int v23, v1, v2

    if-nez v23, :cond_22

    const/high16 v2, 0x20000

    and-int v2, v27, v2

    if-nez v2, :cond_22

    .line 2360
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    goto :goto_11

    .line 2354
    .end local v1    # "fl":I
    .restart local v41    # "fl":I
    :cond_21
    move/from16 v1, v41

    .line 2362
    .end local v41    # "fl":I
    .restart local v1    # "fl":I
    :cond_22
    :goto_11
    const/high16 v2, 0x8000000

    and-int/2addr v2, v1

    if-nez v2, :cond_23

    and-int/lit8 v2, v28, 0x2

    if-nez v2, :cond_23

    const/high16 v23, -0x80000000

    and-int v2, v1, v23

    if-nez v2, :cond_25

    const/high16 v2, 0x20000

    and-int v2, v27, v2

    if-nez v2, :cond_25

    .line 2367
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 2368
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    goto :goto_12

    .line 2362
    :cond_23
    const/high16 v23, -0x80000000

    goto :goto_12

    .line 2353
    .end local v1    # "fl":I
    .restart local v41    # "fl":I
    :cond_24
    move/from16 v1, v41

    const/high16 v23, -0x80000000

    .line 2372
    .end local v41    # "fl":I
    .restart local v1    # "fl":I
    :cond_25
    :goto_12
    const/16 v2, 0x7de

    const-string v0, "layoutWindowLw("

    if-eqz v35, :cond_3a

    if-eqz v36, :cond_3a

    .line 2373
    sget-boolean v26, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v26, :cond_26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v40

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_26
    move-object/from16 v6, v40

    .line 2378
    :goto_13
    move-object/from16 v37, v14

    move-object/from16 v14, p2

    .end local v14    # "dcf":Landroid/graphics/Rect;
    .local v37, "dcf":Landroid/graphics/Rect;
    if-eqz v14, :cond_27

    .line 2381
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v25, v1

    .end local v1    # "fl":I
    .local v25, "fl":I
    move-object/from16 v1, p1

    move/from16 v2, v25

    move v3, v13

    move-object/from16 v31, v4

    .end local v4    # "of":Landroid/graphics/Rect;
    .local v31, "of":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    move-object/from16 v39, v5

    .end local v5    # "df":Landroid/graphics/Rect;
    .local v39, "df":Landroid/graphics/Rect;
    move/from16 v5, v24

    move-object/from16 v46, v6

    move/from16 v45, v28

    .end local v28    # "sysUiFl":I
    .local v45, "sysUiFl":I
    move-object v6, v8

    move-object/from16 v28, v7

    move/from16 v23, v34

    .end local v7    # "vf":Landroid/graphics/Rect;
    .end local v34    # "sim":I
    .local v23, "sim":I
    .local v28, "vf":Landroid/graphics/Rect;
    move-object/from16 v7, v39

    move-object/from16 v47, v8

    move/from16 v51, v27

    move-object/from16 v27, v20

    move/from16 v20, v51

    .end local v8    # "pf":Landroid/graphics/Rect;
    .local v20, "pfl":I
    .local v27, "sf":Landroid/graphics/Rect;
    .local v47, "pf":Landroid/graphics/Rect;
    move-object/from16 v8, v31

    move-object/from16 v34, v9

    move/from16 v48, v25

    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v25    # "fl":I
    .local v34, "cf":Landroid/graphics/Rect;
    .local v48, "fl":I
    move/from16 v49, v10

    .end local v10    # "type":I
    .local v49, "type":I
    move-object/from16 v10, v28

    move-object/from16 v38, v11

    .end local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v38, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object v5, v12

    move-object/from16 v7, v28

    move-object/from16 v9, v31

    move-object/from16 v8, v34

    move-object/from16 v10, v39

    move/from16 v4, v45

    move-object/from16 v14, v46

    move-object/from16 v11, v47

    move/from16 v6, v48

    move/from16 v12, v49

    const/4 v0, 0x1

    goto/16 :goto_28

    .line 2384
    .end local v23    # "sim":I
    .end local v31    # "of":Landroid/graphics/Rect;
    .end local v38    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v39    # "df":Landroid/graphics/Rect;
    .end local v45    # "sysUiFl":I
    .end local v47    # "pf":Landroid/graphics/Rect;
    .end local v48    # "fl":I
    .end local v49    # "type":I
    .restart local v1    # "fl":I
    .restart local v4    # "of":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "cf":Landroid/graphics/Rect;
    .restart local v10    # "type":I
    .restart local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v20, "sf":Landroid/graphics/Rect;
    .local v27, "pfl":I
    .local v28, "sysUiFl":I
    .local v34, "sim":I
    :cond_27
    move/from16 v48, v1

    move-object/from16 v31, v4

    move-object/from16 v39, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v8

    move/from16 v49, v10

    move-object/from16 v38, v11

    move/from16 v45, v28

    move/from16 v23, v34

    move-object/from16 v28, v7

    move-object/from16 v34, v9

    move/from16 v51, v27

    move-object/from16 v27, v20

    move/from16 v20, v51

    .end local v1    # "fl":I
    .end local v4    # "of":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v7    # "vf":Landroid/graphics/Rect;
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v10    # "type":I
    .end local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v20, "pfl":I
    .restart local v23    # "sim":I
    .local v27, "sf":Landroid/graphics/Rect;
    .local v28, "vf":Landroid/graphics/Rect;
    .restart local v31    # "of":Landroid/graphics/Rect;
    .local v34, "cf":Landroid/graphics/Rect;
    .restart local v38    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v39    # "df":Landroid/graphics/Rect;
    .restart local v45    # "sysUiFl":I
    .restart local v47    # "pf":Landroid/graphics/Rect;
    .restart local v48    # "fl":I
    .restart local v49    # "type":I
    move/from16 v11, v49

    .end local v49    # "type":I
    .local v11, "type":I
    if-eq v11, v2, :cond_2e

    const/16 v0, 0x7e1

    if-ne v11, v0, :cond_28

    move-object/from16 v8, v31

    move-object/from16 v7, v39

    move/from16 v5, v45

    move-object/from16 v6, v47

    move/from16 v10, v48

    const/4 v9, 0x1

    goto/16 :goto_15

    .line 2402
    :cond_28
    const/high16 v0, 0x2000000

    move/from16 v10, v48

    .end local v48    # "fl":I
    .local v10, "fl":I
    and-int/2addr v0, v10

    if-eqz v0, :cond_2a

    const/4 v9, 0x1

    if-lt v11, v9, :cond_29

    const/16 v0, 0x7cf

    if-gt v11, v0, :cond_29

    .line 2406
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v8, v31

    .end local v31    # "of":Landroid/graphics/Rect;
    .local v8, "of":Landroid/graphics/Rect;
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2407
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v7, v39

    .end local v39    # "df":Landroid/graphics/Rect;
    .local v7, "df":Landroid/graphics/Rect;
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2408
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v6, v47

    .end local v47    # "pf":Landroid/graphics/Rect;
    .local v6, "pf":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v5, v45

    move-object/from16 v4, v46

    goto/16 :goto_19

    .line 2402
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v7    # "df":Landroid/graphics/Rect;
    .end local v8    # "of":Landroid/graphics/Rect;
    .restart local v31    # "of":Landroid/graphics/Rect;
    .restart local v39    # "df":Landroid/graphics/Rect;
    .restart local v47    # "pf":Landroid/graphics/Rect;
    :cond_29
    move-object/from16 v8, v31

    move-object/from16 v7, v39

    move-object/from16 v6, v47

    goto :goto_14

    :cond_2a
    move-object/from16 v8, v31

    move-object/from16 v7, v39

    move-object/from16 v6, v47

    const/4 v9, 0x1

    .line 2409
    .end local v31    # "of":Landroid/graphics/Rect;
    .end local v39    # "df":Landroid/graphics/Rect;
    .end local v47    # "pf":Landroid/graphics/Rect;
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .restart local v7    # "df":Landroid/graphics/Rect;
    .restart local v8    # "of":Landroid/graphics/Rect;
    :goto_14
    move/from16 v5, v45

    .end local v45    # "sysUiFl":I
    .local v5, "sysUiFl":I
    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_2d

    if-lt v11, v9, :cond_2b

    const/16 v0, 0x7cf

    if-le v11, v0, :cond_2c

    :cond_2b
    const/16 v0, 0x7e4

    if-eq v11, v0, :cond_2c

    const/16 v0, 0x7d9

    if-ne v11, v0, :cond_2d

    .line 2417
    :cond_2c
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2418
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2422
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v4, v46

    goto/16 :goto_19

    .line 2424
    :cond_2d
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2425
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2429
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v4, v46

    goto :goto_19

    .line 2384
    .end local v5    # "sysUiFl":I
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v7    # "df":Landroid/graphics/Rect;
    .end local v8    # "of":Landroid/graphics/Rect;
    .end local v10    # "fl":I
    .restart local v31    # "of":Landroid/graphics/Rect;
    .restart local v39    # "df":Landroid/graphics/Rect;
    .restart local v45    # "sysUiFl":I
    .restart local v47    # "pf":Landroid/graphics/Rect;
    .restart local v48    # "fl":I
    :cond_2e
    move-object/from16 v8, v31

    move-object/from16 v7, v39

    move/from16 v5, v45

    move-object/from16 v6, v47

    move/from16 v10, v48

    const/4 v9, 0x1

    .line 2391
    .end local v31    # "of":Landroid/graphics/Rect;
    .end local v39    # "df":Landroid/graphics/Rect;
    .end local v45    # "sysUiFl":I
    .end local v47    # "pf":Landroid/graphics/Rect;
    .end local v48    # "fl":I
    .restart local v5    # "sysUiFl":I
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .restart local v7    # "df":Landroid/graphics/Rect;
    .restart local v8    # "of":Landroid/graphics/Rect;
    .restart local v10    # "fl":I
    :goto_15
    if-eqz v30, :cond_2f

    .line 2392
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_16

    :cond_2f
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_16
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 2393
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 2394
    if-eqz v30, :cond_30

    .line 2395
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_17

    .line 2396
    :cond_30
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_17
    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 2397
    if-eqz v30, :cond_31

    .line 2398
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_18

    .line 2399
    :cond_31
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_18
    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 2401
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Laying out status bar window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v46

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_32
    move-object/from16 v4, v46

    .line 2439
    :goto_19
    and-int/lit16 v0, v10, 0x400

    if-eqz v0, :cond_34

    if-eqz v18, :cond_33

    move-object/from16 v3, v34

    goto :goto_1a

    .line 2464
    :cond_33
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v3, v34

    .end local v34    # "cf":Landroid/graphics/Rect;
    .local v3, "cf":Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    goto :goto_1d

    .line 2439
    .end local v3    # "cf":Landroid/graphics/Rect;
    .restart local v34    # "cf":Landroid/graphics/Rect;
    :cond_34
    move-object/from16 v3, v34

    .line 2441
    .end local v34    # "cf":Landroid/graphics/Rect;
    .restart local v3    # "cf":Landroid/graphics/Rect;
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2442
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    .line 2446
    :cond_35
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_37

    const/16 v0, 0x10

    if-eq v13, v0, :cond_36

    goto :goto_1b

    .line 2450
    :cond_36
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    .line 2448
    :cond_37
    :goto_1b
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2456
    :goto_1c
    if-eqz v18, :cond_38

    .line 2457
    const/4 v1, 0x0

    iput v1, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1d

    .line 2456
    :cond_38
    const/4 v1, 0x0

    .line 2466
    :goto_1d
    invoke-direct {v12, v5, v10, v3, v15}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2467
    const/16 v0, 0x30

    if-eq v13, v0, :cond_39

    .line 2468
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v2, v28

    .end local v28    # "vf":Landroid/graphics/Rect;
    .local v2, "vf":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v14, v4

    move v4, v5

    move v0, v9

    move-object v5, v12

    move-object v9, v8

    move v12, v11

    move-object v8, v3

    move-object v11, v6

    move v6, v10

    move-object v10, v7

    move-object v7, v2

    goto/16 :goto_28

    .line 2470
    .end local v2    # "vf":Landroid/graphics/Rect;
    .restart local v28    # "vf":Landroid/graphics/Rect;
    :cond_39
    move-object/from16 v2, v28

    .end local v28    # "vf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v14, v4

    move v4, v5

    move v0, v9

    move-object v5, v12

    move-object v9, v8

    move v12, v11

    move-object v8, v3

    move-object v11, v6

    move v6, v10

    move-object v10, v7

    move-object v7, v2

    goto/16 :goto_28

    .line 2372
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "cf":Landroid/graphics/Rect;
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v23    # "sim":I
    .end local v37    # "dcf":Landroid/graphics/Rect;
    .end local v38    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "fl":I
    .restart local v4    # "of":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v7, "vf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .restart local v9    # "cf":Landroid/graphics/Rect;
    .local v10, "type":I
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v14    # "dcf":Landroid/graphics/Rect;
    .local v20, "sf":Landroid/graphics/Rect;
    .local v27, "pfl":I
    .local v28, "sysUiFl":I
    .local v34, "sim":I
    :cond_3a
    move-object v6, v8

    move-object v3, v9

    move-object/from16 v38, v11

    move-object/from16 v37, v14

    move/from16 v23, v34

    const/4 v9, 0x1

    move-object/from16 v14, p2

    move-object v8, v4

    move v11, v10

    move-object/from16 v4, v40

    move v10, v1

    const/4 v1, 0x0

    move-object/from16 v51, v7

    move-object v7, v5

    move/from16 v5, v28

    move-object/from16 v28, v51

    move/from16 v52, v27

    move-object/from16 v27, v20

    move/from16 v20, v52

    .line 2473
    .end local v1    # "fl":I
    .end local v4    # "of":Landroid/graphics/Rect;
    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v14    # "dcf":Landroid/graphics/Rect;
    .end local v34    # "sim":I
    .restart local v3    # "cf":Landroid/graphics/Rect;
    .local v5, "sysUiFl":I
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .local v7, "df":Landroid/graphics/Rect;
    .local v8, "of":Landroid/graphics/Rect;
    .local v10, "fl":I
    .local v11, "type":I
    .local v20, "pfl":I
    .restart local v23    # "sim":I
    .local v27, "sf":Landroid/graphics/Rect;
    .local v28, "vf":Landroid/graphics/Rect;
    .restart local v37    # "dcf":Landroid/graphics/Rect;
    .restart local v38    # "attrs":Landroid/view/WindowManager$LayoutParams;
    if-nez v35, :cond_46

    and-int/lit16 v1, v5, 0x600

    if-eqz v1, :cond_3b

    move-object v14, v4

    move/from16 v45, v5

    move-object v9, v8

    move/from16 v50, v10

    move v12, v11

    move-object v8, v3

    move-object v11, v6

    move-object v10, v7

    move-object/from16 v7, v28

    goto/16 :goto_21

    .line 2596
    :cond_3b
    if-eqz v14, :cond_3d

    .line 2597
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): attached to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_3c
    const/16 v24, 0x0

    move-object/from16 v0, p0

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v2, v10

    move-object/from16 v34, v3

    .end local v3    # "cf":Landroid/graphics/Rect;
    .local v34, "cf":Landroid/graphics/Rect;
    move v3, v13

    move-object v14, v4

    move-object/from16 v4, p2

    move v12, v5

    .end local v5    # "sysUiFl":I
    .local v12, "sysUiFl":I
    move/from16 v5, v24

    move-object/from16 v47, v6

    .end local v6    # "pf":Landroid/graphics/Rect;
    .restart local v47    # "pf":Landroid/graphics/Rect;
    move-object/from16 v39, v7

    .end local v7    # "df":Landroid/graphics/Rect;
    .restart local v39    # "df":Landroid/graphics/Rect;
    move-object/from16 v31, v8

    .end local v8    # "of":Landroid/graphics/Rect;
    .restart local v31    # "of":Landroid/graphics/Rect;
    move-object/from16 v9, v34

    move/from16 v50, v10

    .end local v10    # "fl":I
    .local v50, "fl":I
    move-object/from16 v10, v28

    move/from16 v45, v12

    move v12, v11

    .end local v11    # "type":I
    .local v12, "type":I
    .restart local v45    # "sysUiFl":I
    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    const/4 v0, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v28

    move-object/from16 v9, v31

    move-object/from16 v8, v34

    move-object/from16 v10, v39

    move/from16 v4, v45

    move-object/from16 v11, v47

    move/from16 v6, v50

    goto/16 :goto_28

    .line 2604
    .end local v12    # "type":I
    .end local v31    # "of":Landroid/graphics/Rect;
    .end local v34    # "cf":Landroid/graphics/Rect;
    .end local v39    # "df":Landroid/graphics/Rect;
    .end local v45    # "sysUiFl":I
    .end local v47    # "pf":Landroid/graphics/Rect;
    .end local v50    # "fl":I
    .restart local v3    # "cf":Landroid/graphics/Rect;
    .restart local v5    # "sysUiFl":I
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .restart local v7    # "df":Landroid/graphics/Rect;
    .restart local v8    # "of":Landroid/graphics/Rect;
    .restart local v10    # "fl":I
    .restart local v11    # "type":I
    :cond_3d
    move-object/from16 v34, v3

    move-object v14, v4

    move/from16 v45, v5

    move-object/from16 v47, v6

    move-object/from16 v39, v7

    move-object/from16 v31, v8

    move/from16 v50, v10

    move v12, v11

    .end local v3    # "cf":Landroid/graphics/Rect;
    .end local v5    # "sysUiFl":I
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v7    # "df":Landroid/graphics/Rect;
    .end local v8    # "of":Landroid/graphics/Rect;
    .end local v10    # "fl":I
    .end local v11    # "type":I
    .restart local v12    # "type":I
    .restart local v31    # "of":Landroid/graphics/Rect;
    .restart local v34    # "cf":Landroid/graphics/Rect;
    .restart local v39    # "df":Landroid/graphics/Rect;
    .restart local v45    # "sysUiFl":I
    .restart local v47    # "pf":Landroid/graphics/Rect;
    .restart local v50    # "fl":I
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): normal window"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :cond_3e
    if-ne v12, v2, :cond_3f

    .line 2612
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v8, v34

    .end local v34    # "cf":Landroid/graphics/Rect;
    .local v8, "cf":Landroid/graphics/Rect;
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2613
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v31

    .end local v31    # "of":Landroid/graphics/Rect;
    .local v9, "of":Landroid/graphics/Rect;
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2614
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v10, v39

    .end local v39    # "df":Landroid/graphics/Rect;
    .local v10, "df":Landroid/graphics/Rect;
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2615
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v11, v47

    .end local v47    # "pf":Landroid/graphics/Rect;
    .local v11, "pf":Landroid/graphics/Rect;
    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v28

    move/from16 v4, v45

    move/from16 v6, v50

    goto/16 :goto_28

    .line 2616
    .end local v8    # "cf":Landroid/graphics/Rect;
    .end local v9    # "of":Landroid/graphics/Rect;
    .end local v10    # "df":Landroid/graphics/Rect;
    .end local v11    # "pf":Landroid/graphics/Rect;
    .restart local v31    # "of":Landroid/graphics/Rect;
    .restart local v34    # "cf":Landroid/graphics/Rect;
    .restart local v39    # "df":Landroid/graphics/Rect;
    .restart local v47    # "pf":Landroid/graphics/Rect;
    :cond_3f
    move-object/from16 v9, v31

    move-object/from16 v8, v34

    move-object/from16 v10, v39

    move-object/from16 v11, v47

    .end local v31    # "of":Landroid/graphics/Rect;
    .end local v34    # "cf":Landroid/graphics/Rect;
    .end local v39    # "df":Landroid/graphics/Rect;
    .end local v47    # "pf":Landroid/graphics/Rect;
    .restart local v8    # "cf":Landroid/graphics/Rect;
    .restart local v9    # "of":Landroid/graphics/Rect;
    .restart local v10    # "df":Landroid/graphics/Rect;
    .restart local v11    # "pf":Landroid/graphics/Rect;
    const/16 v0, 0x7d5

    if-eq v12, v0, :cond_45

    const/16 v0, 0x7d3

    if-ne v12, v0, :cond_40

    move-object/from16 v7, v28

    goto :goto_20

    .line 2629
    :cond_40
    if-eqz v32, :cond_41

    goto :goto_1e

    .line 2632
    :cond_41
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2635
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2636
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2637
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2638
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1f

    .line 2639
    :cond_42
    const/16 v0, 0x10

    if-eq v13, v0, :cond_43

    .line 2640
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2641
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2642
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1f

    .line 2644
    :cond_43
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2645
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2646
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2648
    :goto_1f
    const/16 v0, 0x30

    if-eq v13, v0, :cond_44

    .line 2649
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v7, v28

    .end local v28    # "vf":Landroid/graphics/Rect;
    .local v7, "vf":Landroid/graphics/Rect;
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    move-object/from16 v5, p0

    move/from16 v4, v45

    move/from16 v6, v50

    goto/16 :goto_28

    .line 2651
    .end local v7    # "vf":Landroid/graphics/Rect;
    .restart local v28    # "vf":Landroid/graphics/Rect;
    :cond_44
    move-object/from16 v7, v28

    .end local v28    # "vf":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    move-object/from16 v5, p0

    move/from16 v4, v45

    move/from16 v6, v50

    goto/16 :goto_28

    .line 2616
    .end local v7    # "vf":Landroid/graphics/Rect;
    .restart local v28    # "vf":Landroid/graphics/Rect;
    :cond_45
    move-object/from16 v7, v28

    .line 2618
    .end local v28    # "vf":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    :goto_20
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2619
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2620
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2621
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    move-object/from16 v5, p0

    move/from16 v4, v45

    move/from16 v6, v50

    goto/16 :goto_28

    .line 2473
    .end local v9    # "of":Landroid/graphics/Rect;
    .end local v12    # "type":I
    .end local v45    # "sysUiFl":I
    .end local v50    # "fl":I
    .restart local v3    # "cf":Landroid/graphics/Rect;
    .restart local v5    # "sysUiFl":I
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .local v7, "df":Landroid/graphics/Rect;
    .local v8, "of":Landroid/graphics/Rect;
    .local v10, "fl":I
    .local v11, "type":I
    .restart local v28    # "vf":Landroid/graphics/Rect;
    :cond_46
    move-object v14, v4

    move/from16 v45, v5

    move-object v9, v8

    move/from16 v50, v10

    move v12, v11

    move-object v8, v3

    move-object v11, v6

    move-object v10, v7

    move-object/from16 v7, v28

    .line 2476
    .end local v3    # "cf":Landroid/graphics/Rect;
    .end local v5    # "sysUiFl":I
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v28    # "vf":Landroid/graphics/Rect;
    .local v7, "vf":Landroid/graphics/Rect;
    .local v8, "cf":Landroid/graphics/Rect;
    .restart local v9    # "of":Landroid/graphics/Rect;
    .local v10, "df":Landroid/graphics/Rect;
    .local v11, "pf":Landroid/graphics/Rect;
    .restart local v12    # "type":I
    .restart local v45    # "sysUiFl":I
    .restart local v50    # "fl":I
    :goto_21
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_47
    if-eq v12, v2, :cond_5a

    const/16 v0, 0x7e1

    if-ne v12, v0, :cond_48

    move/from16 v1, v45

    move/from16 v6, v50

    const/4 v0, 0x1

    goto/16 :goto_26

    .line 2492
    :cond_48
    const/16 v0, 0x7e3

    if-eq v12, v0, :cond_59

    const/16 v0, 0x7e8

    if-ne v12, v0, :cond_49

    move/from16 v1, v45

    move/from16 v6, v50

    const/4 v0, 0x1

    goto/16 :goto_25

    .line 2502
    :cond_49
    const/16 v0, 0x7df

    if-eq v12, v0, :cond_4b

    const/16 v0, 0x7f4

    if-eq v12, v0, :cond_4b

    const/16 v0, 0x901

    if-eq v12, v0, :cond_4b

    const/16 v0, 0x900

    if-eq v12, v0, :cond_4b

    const/16 v0, 0x8ff

    if-eq v12, v0, :cond_4b

    .line 2511
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_4b

    const/16 v0, 0x902

    if-ne v12, v0, :cond_4a

    goto :goto_22

    :cond_4a
    move/from16 v6, v50

    goto :goto_23

    :cond_4b
    :goto_22
    move/from16 v6, v50

    .end local v50    # "fl":I
    .local v6, "fl":I
    and-int/lit16 v0, v6, 0x400

    if-eqz v0, :cond_4c

    .line 2518
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2519
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2520
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2521
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v1, v45

    const/4 v0, 0x1

    goto/16 :goto_27

    .line 2522
    :cond_4c
    :goto_23
    const/16 v0, 0x7e5

    if-ne v12, v0, :cond_4d

    .line 2524
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2525
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2526
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2527
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v1, v45

    const/4 v0, 0x1

    goto/16 :goto_27

    .line 2528
    :cond_4d
    const/high16 v0, 0x2000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    if-lt v12, v0, :cond_4f

    const/16 v1, 0x7cf

    if-gt v12, v1, :cond_4f

    .line 2532
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2533
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2534
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2535
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v1, v45

    goto/16 :goto_27

    .line 2528
    :cond_4e
    const/4 v0, 0x1

    .line 2536
    :cond_4f
    move/from16 v1, v45

    .end local v45    # "sysUiFl":I
    .local v1, "sysUiFl":I
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_51

    const/16 v2, 0x7d0

    if-eq v12, v2, :cond_50

    const/16 v2, 0x7d5

    if-eq v12, v2, :cond_50

    const/16 v2, 0x7f2

    if-eq v12, v2, :cond_50

    const/16 v2, 0x7f1

    if-eq v12, v2, :cond_50

    if-lt v12, v0, :cond_51

    const/16 v2, 0x7cf

    if-gt v12, v2, :cond_51

    .line 2549
    :cond_50
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2550
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2551
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2552
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_27

    .line 2553
    :cond_51
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_54

    .line 2554
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2555
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2556
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2560
    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v2, :cond_53

    const/16 v2, 0x10

    if-eq v13, v2, :cond_52

    goto :goto_24

    .line 2564
    :cond_52
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_27

    .line 2562
    :cond_53
    :goto_24
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_27

    .line 2568
    :cond_54
    const/16 v2, 0x7f6

    if-ne v12, v2, :cond_55

    .line 2569
    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenDecorOverlayExpand"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    :cond_55
    const/16 v2, 0x7d3

    if-ne v12, v2, :cond_56

    .line 2571
    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.nfc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    :cond_56
    const/16 v2, 0x7da

    if-ne v12, v2, :cond_58

    .line 2575
    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpUserSwitchingDialog"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2577
    :cond_57
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2578
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2579
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2580
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_27

    .line 2583
    :cond_58
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2584
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2585
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2586
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_27

    .line 2492
    .end local v1    # "sysUiFl":I
    .end local v6    # "fl":I
    .restart local v45    # "sysUiFl":I
    .restart local v50    # "fl":I
    :cond_59
    move/from16 v1, v45

    move/from16 v6, v50

    const/4 v0, 0x1

    .line 2494
    .end local v45    # "sysUiFl":I
    .end local v50    # "fl":I
    .restart local v1    # "sysUiFl":I
    .restart local v6    # "fl":I
    :goto_25
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2495
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2496
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2497
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Laying out navigation bar window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 2480
    .end local v1    # "sysUiFl":I
    .end local v6    # "fl":I
    .restart local v45    # "sysUiFl":I
    .restart local v50    # "fl":I
    :cond_5a
    move/from16 v1, v45

    move/from16 v6, v50

    const/4 v0, 0x1

    .line 2481
    .end local v45    # "sysUiFl":I
    .end local v50    # "fl":I
    .restart local v1    # "sysUiFl":I
    .restart local v6    # "fl":I
    :goto_26
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2482
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2483
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2484
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2485
    if-eqz v30, :cond_5b

    .line 2486
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 2487
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 2488
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 2491
    :cond_5b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Laying out IN_SCREEN status bar window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_5c
    :goto_27
    move-object/from16 v5, p0

    move v4, v1

    .end local v1    # "sysUiFl":I
    .local v4, "sysUiFl":I
    invoke-direct {v5, v4, v6, v8, v15}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2591
    const/16 v1, 0x30

    if-eq v13, v1, :cond_5d

    .line 2592
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_28

    .line 2594
    :cond_5d
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2664
    .end local v19    # "inheritTranslucentDecor":Z
    .end local v21    # "isAppWindow":Z
    .end local v22    # "topAtRest":Z
    :goto_28
    move-object/from16 v3, p1

    invoke-static {v3, v15}, Lcom/android/server/wm/OpScreenCompatInjector;->resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I

    move-result v2

    .line 2666
    .local v2, "cutoutMode":I
    move-object v1, v14

    move-object/from16 v14, p2

    if-eqz v14, :cond_5e

    if-nez v35, :cond_5e

    move/from16 v19, v0

    goto :goto_29

    :cond_5e
    const/16 v19, 0x0

    .line 2667
    .local v19, "attachedInParent":Z
    :goto_29
    and-int/lit8 v21, v17, 0x2

    if-eqz v21, :cond_5f

    move/from16 v21, v0

    goto :goto_2a

    :cond_5f
    const/16 v21, 0x0

    .line 2672
    .local v21, "requestedHideNavigation":Z
    :goto_2a
    invoke-virtual/range {v38 .. v38}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v22

    if-nez v22, :cond_60

    if-eqz v35, :cond_60

    if-eq v12, v0, :cond_60

    move/from16 v22, v0

    goto :goto_2b

    :cond_60
    const/16 v22, 0x0

    .line 2677
    .local v22, "floatingInScreenWindow":Z
    :goto_2b
    if-eq v2, v0, :cond_68

    .line 2678
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 2679
    .local v0, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    move/from16 v45, v4

    .end local v4    # "sysUiFl":I
    .restart local v45    # "sysUiFl":I
    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2680
    if-eqz v35, :cond_61

    if-eqz v36, :cond_61

    if-nez v33, :cond_61

    if-nez v2, :cond_61

    .line 2686
    const/high16 v4, -0x80000000

    iput v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2c

    .line 2680
    :cond_61
    const/high16 v4, -0x80000000

    .line 2688
    :goto_2c
    if-eqz v35, :cond_65

    if-eqz v36, :cond_65

    if-nez v21, :cond_65

    if-nez v2, :cond_65

    .line 2691
    iget v4, v5, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    move/from16 v24, v2

    const/4 v2, 0x1

    .end local v2    # "cutoutMode":I
    .local v24, "cutoutMode":I
    if-eq v4, v2, :cond_64

    const/4 v2, 0x2

    if-eq v4, v2, :cond_63

    const/4 v2, 0x4

    if-eq v4, v2, :cond_62

    goto :goto_2d

    .line 2693
    :cond_62
    const v4, 0x7fffffff

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2694
    goto :goto_2d

    .line 2696
    :cond_63
    const/4 v2, 0x4

    const v4, 0x7fffffff

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2697
    goto :goto_2d

    .line 2699
    :cond_64
    const/4 v2, 0x4

    const/high16 v4, -0x80000000

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2d

    .line 2688
    .end local v24    # "cutoutMode":I
    .restart local v2    # "cutoutMode":I
    :cond_65
    move/from16 v24, v2

    const/4 v2, 0x4

    .line 2703
    .end local v2    # "cutoutMode":I
    .restart local v24    # "cutoutMode":I
    :goto_2d
    const/16 v4, 0x7db

    if-ne v12, v4, :cond_66

    iget v4, v5, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v4, v2, :cond_66

    .line 2705
    const v4, 0x7fffffff

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2712
    :cond_66
    if-nez v19, :cond_67

    if-nez v22, :cond_67

    .line 2713
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2714
    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2715
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v25, 0x1

    xor-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v44

    .end local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v2, "windowFrames":Lcom/android/server/wm/WindowFrames;
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_2e

    .line 2712
    .end local v2    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_67
    move-object/from16 v2, v44

    .line 2719
    .end local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v2    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_2e
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 2677
    .end local v0    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .end local v24    # "cutoutMode":I
    .end local v45    # "sysUiFl":I
    .local v2, "cutoutMode":I
    .restart local v4    # "sysUiFl":I
    .restart local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_68
    move/from16 v24, v2

    move/from16 v45, v4

    move-object/from16 v2, v44

    .line 2730
    .end local v4    # "sysUiFl":I
    .end local v44    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v2, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v24    # "cutoutMode":I
    .restart local v45    # "sysUiFl":I
    :goto_2f
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpScreenCompatInjector;->isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 2731
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2737
    :cond_69
    and-int/lit16 v0, v6, 0x200

    if-eqz v0, :cond_6a

    const/16 v0, 0x7da

    if-eq v12, v0, :cond_6a

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 2739
    const/16 v0, -0x2710

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 2740
    const/16 v0, 0x2710

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 2741
    const/16 v0, 0x7dd

    if-eq v12, v0, :cond_6a

    .line 2742
    const/16 v0, -0x2710

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 2743
    const/16 v0, 0x2710

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 2751
    :cond_6a
    move-object/from16 v4, v38

    .end local v38    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4, v6}, Lcom/android/server/wm/DisplayPolicy;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v25

    .line 2752
    .local v25, "useOutsets":Z
    if-eqz v16, :cond_6f

    if-eqz v25, :cond_6f

    .line 2753
    iget-object v0, v2, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    .line 2754
    .local v0, "osf":Landroid/graphics/Rect;
    move/from16 v42, v13

    .end local v13    # "adjust":I
    .restart local v42    # "adjust":I
    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v28, v7

    .end local v7    # "vf":Landroid/graphics/Rect;
    .restart local v28    # "vf":Landroid/graphics/Rect;
    iget v7, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v26, v9

    .end local v9    # "of":Landroid/graphics/Rect;
    .local v26, "of":Landroid/graphics/Rect;
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v13, v3, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2755
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowFrames;->setHasOutsets(Z)V

    .line 2756
    iget v3, v5, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 2757
    .local v3, "outset":I
    if-lez v3, :cond_70

    .line 2758
    iget v7, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2759
    .local v7, "rotation":I
    if-nez v7, :cond_6b

    .line 2760
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_30

    .line 2761
    :cond_6b
    const/4 v9, 0x1

    if-ne v7, v9, :cond_6c

    .line 2762
    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->right:I

    goto :goto_30

    .line 2763
    :cond_6c
    const/4 v9, 0x2

    if-ne v7, v9, :cond_6d

    .line 2764
    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->top:I

    goto :goto_30

    .line 2765
    :cond_6d
    const/4 v9, 0x3

    if-ne v7, v9, :cond_6e

    .line 2766
    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 2768
    :cond_6e
    :goto_30
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_70

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applying bottom outset of "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " with rotation "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", result: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 2752
    .end local v0    # "osf":Landroid/graphics/Rect;
    .end local v3    # "outset":I
    .end local v26    # "of":Landroid/graphics/Rect;
    .end local v28    # "vf":Landroid/graphics/Rect;
    .end local v42    # "adjust":I
    .local v7, "vf":Landroid/graphics/Rect;
    .restart local v9    # "of":Landroid/graphics/Rect;
    .restart local v13    # "adjust":I
    :cond_6f
    move-object/from16 v28, v7

    move-object/from16 v26, v9

    move/from16 v42, v13

    .line 2773
    .end local v7    # "vf":Landroid/graphics/Rect;
    .end local v9    # "of":Landroid/graphics/Rect;
    .end local v13    # "adjust":I
    .restart local v26    # "of":Landroid/graphics/Rect;
    .restart local v28    # "vf":Landroid/graphics/Rect;
    .restart local v42    # "adjust":I
    :cond_70
    :goto_31
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compute frame "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": sim=#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attach="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    .line 2776
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v7, v9

    const-string v3, " flags=0x%08x"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pf="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    invoke-virtual {v11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " df="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cf="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vf="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dcf="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sf="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " osf="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    .line 2782
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2773
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_71
    move-object/from16 v3, p1

    const/4 v9, 0x0

    .line 2784
    :goto_32
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 2785
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 2791
    :cond_72
    iget-boolean v0, v5, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    if-eqz v0, :cond_73

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isHomeApp(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, v5, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_73

    .line 2793
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2799
    :cond_73
    iget-object v7, v2, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    iget v0, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2801
    invoke-direct {v5, v0, v9}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v9

    .line 2799
    move-object v0, v11

    move-object v1, v10

    move-object v13, v2

    .end local v2    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v13, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move-object v2, v8

    move-object v14, v3

    move-object/from16 v3, v28

    move-object/from16 v31, v4

    move/from16 v34, v45

    const/16 v14, 0x7db

    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v45    # "sysUiFl":I
    .local v31, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v34, "sysUiFl":I
    move-object/from16 v4, v27

    move-object v5, v7

    move/from16 v38, v6

    .end local v6    # "fl":I
    .local v38, "fl":I
    move-object/from16 v6, p1

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->reserFrameForNavGesture(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;I)V

    .line 2806
    iget-object v5, v13, Lcom/android/server/wm/WindowFrames;->mOutsetFrame:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/OpScreenCompatInjector;->resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    .line 2808
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->computeFrameLw()V

    .line 2811
    if-ne v12, v14, :cond_75

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2812
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_74

    .line 2813
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_33

    .line 2812
    :cond_74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_33

    .line 2811
    :cond_75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2816
    :goto_33
    const/16 v2, 0x7ef

    if-ne v12, v2, :cond_76

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2817
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_76

    .line 2818
    invoke-direct {v0, v1, v15}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 2820
    :cond_76
    return-void

    .line 2128
    .end local v8    # "cf":Landroid/graphics/Rect;
    .end local v10    # "df":Landroid/graphics/Rect;
    .end local v11    # "pf":Landroid/graphics/Rect;
    .end local v12    # "type":I
    .end local v13    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v16    # "isDefaultDisplay":Z
    .end local v17    # "requestedSysUiFl":I
    .end local v18    # "isQuickReplyWin":Z
    .end local v19    # "attachedInParent":Z
    .end local v20    # "pfl":I
    .end local v21    # "requestedHideNavigation":Z
    .end local v22    # "floatingInScreenWindow":Z
    .end local v23    # "sim":I
    .end local v24    # "cutoutMode":I
    .end local v25    # "useOutsets":Z
    .end local v26    # "of":Landroid/graphics/Rect;
    .end local v27    # "sf":Landroid/graphics/Rect;
    .end local v28    # "vf":Landroid/graphics/Rect;
    .end local v29    # "forceNoNavBar":Z
    .end local v30    # "hasNavBar":Z
    .end local v31    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v32    # "blockAdjustIME":Z
    .end local v33    # "requestedFullscreen":Z
    .end local v34    # "sysUiFl":I
    .end local v35    # "layoutInScreen":Z
    .end local v36    # "layoutInsetDecor":Z
    .end local v37    # "dcf":Landroid/graphics/Rect;
    .end local v38    # "fl":I
    .end local v42    # "adjust":I
    :cond_77
    move-object v0, v12

    move-object v1, v13

    .line 2130
    :goto_34
    return-void
.end method

.method public navigationBarCanMove()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .locals 2
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .line 3570
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    .line 3571
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 3572
    return v1

    .line 3573
    :cond_0
    if-ne p3, v1, :cond_1

    .line 3574
    const/4 v0, 0x2

    return v0

    .line 3577
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .locals 2

    .line 3368
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$m-UPXUZKrPpeFUjrauzoJMNbYjM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$m-UPXUZKrPpeFUjrauzoJMNbYjM;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3373
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 9

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 3205
    .local v0, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3206
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 3207
    .local v2, "portraitRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 3208
    .local v3, "upsideDownRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 3209
    .local v4, "landscapeRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    .line 3210
    .local v5, "seascapeRotation":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    .line 3212
    .local v6, "uiMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3213
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050210

    .line 3215
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3216
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x105020f

    .line 3218
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    goto :goto_0

    .line 3220
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3227
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x1050188

    .line 3229
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3230
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x105018a

    .line 3232
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3235
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x1050185

    .line 3237
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3238
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x1050186

    .line 3240
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3243
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x105018d

    .line 3247
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3266
    const v7, 0x10e0086

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 3267
    const v7, 0x1050099

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mSideGestureInset:I

    .line 3268
    const v7, 0x111009f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 3269
    const v7, 0x111009c

    .line 3270
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 3273
    const v7, 0x1050187

    .line 3274
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3275
    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 3278
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowOutsetBottom:I

    .line 3282
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->onConfigurationChanged()V

    .line 3287
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    .line 3289
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1
    .param p1, "lockTaskState"    # I

    .line 4294
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 4295
    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 1

    .line 3194
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 3196
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 3197
    return-void
.end method

.method onPowerKeyDown(Z)V
    .locals 6
    .param p1, "isScreenOn"    # Z

    .line 4272
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 4273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4274
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4272
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 4275
    .local v0, "panic":Z
    if-eqz v0, :cond_0

    .line 4276
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4278
    :cond_0
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4281
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 4282
    return-void
.end method

.method public prepareAddWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1075
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    const/4 v4, -0x7

    const/4 v5, 0x0

    if-eq v0, v3, :cond_4

    const/16 v3, 0x7de

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7e1

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7e8

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7f1

    if-eq v0, v3, :cond_3

    goto/16 :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    return v4

    .line 1115
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1117
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$52bg3qYmo5Unt8Q07j9d6hFQG2o;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$52bg3qYmo5Unt8Q07j9d6hFQG2o;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$XeqRJzc7ac4NU1zAF74Hsb20Oyg;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x7

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$2VfPB7jRHi3x9grU1pG8ihi_Ga4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$2VfPB7jRHi3x9grU1pG8ihi_Ga4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x9

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LmU9vcWscAr5f4KqPLDYJTaZBVU;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LmU9vcWscAr5f4KqPLDYJTaZBVU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1146
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATION BAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1152
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    .line 1088
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1089
    return v4

    .line 1092
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    .line 1095
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1097
    :cond_6
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$sDsfACJdM5Dc_VvZ4b6PthimRJY;

    .local v0, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$sDsfACJdM5Dc_VvZ4b6PthimRJY;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1102
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v5, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1103
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1104
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1105
    nop

    .line 1157
    .end local v0    # "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    :cond_7
    :goto_0
    return v5
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 1168
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1170
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_0

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    .line 1175
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1177
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1179
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_3

    .line 1180
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1183
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .locals 1

    .line 3710
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3711
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3712
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 898
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 899
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 900
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 901
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 902
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 888
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 889
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 890
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 891
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 892
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public selectAnimationLw(Lcom/android/server/wm/WindowState;I)I
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "transit"    # I

    .line 1205
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAnimation in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": transit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne p1, v0, :cond_9

    .line 1208
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1209
    .local v0, "isKeyguard":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v8, v3, :cond_2

    .line 1210
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v8, v3, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v4

    .line 1211
    .local v8, "expanded":Z
    :goto_1
    if-nez v0, :cond_8

    if-eqz v8, :cond_3

    goto :goto_4

    .line 1214
    :cond_3
    if-eq p2, v5, :cond_7

    if-ne p2, v6, :cond_4

    goto :goto_3

    .line 1217
    :cond_4
    if-eq p2, v7, :cond_6

    if-ne p2, v2, :cond_5

    goto :goto_2

    .line 1221
    .end local v0    # "isKeyguard":Z
    .end local v8    # "expanded":Z
    :cond_5
    goto/16 :goto_8

    .line 1219
    .restart local v0    # "isKeyguard":Z
    .restart local v8    # "expanded":Z
    :cond_6
    :goto_2
    const v1, 0x10a00b4

    return v1

    .line 1216
    :cond_7
    :goto_3
    const v1, 0x10a00b5

    return v1

    .line 1212
    :cond_8
    :goto_4
    return v3

    .line 1221
    .end local v0    # "isKeyguard":Z
    .end local v8    # "expanded":Z
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_17

    .line 1222
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_a

    .line 1223
    return v4

    .line 1226
    :cond_a
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v0, v6, :cond_f

    .line 1227
    if-eq p2, v5, :cond_d

    if-ne p2, v6, :cond_b

    goto :goto_5

    .line 1234
    :cond_b
    if-eq p2, v7, :cond_c

    if-ne p2, v2, :cond_18

    .line 1236
    :cond_c
    const v0, 0x10a00ad

    return v0

    .line 1229
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1230
    const v0, 0x10a00af

    return v0

    .line 1232
    :cond_e
    const v0, 0x10a00ae

    return v0

    .line 1238
    :cond_f
    if-ne v0, v5, :cond_13

    .line 1239
    if-eq p2, v5, :cond_12

    if-ne p2, v6, :cond_10

    goto :goto_6

    .line 1242
    :cond_10
    if-eq p2, v7, :cond_11

    if-ne p2, v2, :cond_18

    .line 1244
    :cond_11
    const v0, 0x10a00b2

    return v0

    .line 1241
    :cond_12
    :goto_6
    const v0, 0x10a00b3

    return v0

    .line 1246
    :cond_13
    if-ne v0, v7, :cond_18

    .line 1247
    if-eq p2, v5, :cond_16

    if-ne p2, v6, :cond_14

    goto :goto_7

    .line 1250
    :cond_14
    if-eq p2, v7, :cond_15

    if-ne p2, v2, :cond_18

    .line 1252
    :cond_15
    const v0, 0x10a00b0

    return v0

    .line 1249
    :cond_16
    :goto_7
    const v0, 0x10a00b1

    return v0

    .line 1255
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v0, v2, :cond_18

    .line 1256
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->selectDockedDividerAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    .line 1259
    :cond_18
    :goto_8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1a

    .line 1260
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1261
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_19

    const-string v0, "**** STARTING EXIT"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_19
    const v0, 0x10a009a

    return v0

    .line 1264
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v0, :cond_1b

    if-ne p2, v7, :cond_1b

    .line 1270
    return v3

    .line 1273
    :cond_1b
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 7
    .param p1, "anim"    # [I

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1324
    .local v0, "forceJumpcut":Z
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectRotationAnimation mTopFullscreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " rotationAnimation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_2

    .line 1327
    const-string v4, "0"

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " forceJumpcut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1324
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_3
    const v3, 0x10a010f

    const v4, 0x10a010e

    if-eqz v0, :cond_4

    .line 1330
    aput v3, p1, v2

    .line 1331
    aput v4, p1, v1

    .line 1332
    return-void

    .line 1334
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_8

    .line 1335
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v5

    .line 1336
    .local v5, "animationHint":I
    if-gez v5, :cond_5

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v6, :cond_5

    .line 1337
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1339
    :cond_5
    if-eq v5, v1, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v3, 0x3

    if-eq v5, v3, :cond_7

    .line 1351
    aput v2, p1, v1

    aput v2, p1, v2

    goto :goto_3

    .line 1346
    :cond_6
    aput v3, p1, v2

    .line 1347
    aput v4, p1, v1

    .line 1348
    goto :goto_3

    .line 1342
    :cond_7
    const v3, 0x10a0110

    aput v3, p1, v2

    .line 1343
    aput v4, p1, v1

    .line 1344
    nop

    .line 1354
    .end local v5    # "animationHint":I
    :goto_3
    goto :goto_4

    .line 1355
    :cond_8
    aput v2, p1, v1

    aput v2, p1, v2

    .line 1357
    :goto_4
    return-void
.end method

.method public setAwake(Z)V
    .locals 0
    .param p1, "awake"    # Z

    .line 858
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 859
    return-void
.end method

.method public setDockMode(I)V
    .locals 0
    .param p1, "dockMode"    # I

    .line 798
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 799
    return-void
.end method

.method setForceShowSystemBars(Z)V
    .locals 0
    .param p1, "forceShowSystemBars"    # Z

    .line 809
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 810
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 0
    .param p1, "forwardedInsets"    # Landroid/graphics/Insets;

    .line 3560
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 3561
    return-void
.end method

.method public setHasNavigationBar(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHasNavigationBar to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 818
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .locals 1
    .param p1, "plugged"    # Z

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 764
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .locals 3
    .param p1, "plugged"    # Z
    .param p2, "force"    # Z

    .line 767
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_1

    .line 768
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 772
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 775
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setLidState(I)V
    .locals 0
    .param p1, "lidState"    # I

    .line 850
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 851
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 0
    .param p1, "persistentVrModeEnabled"    # Z

    .line 790
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 791
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .locals 2
    .param p1, "pointerLocationEnabled"    # Z

    .line 4406
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4407
    return-void

    .line 4410
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 4411
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 4410
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4412
    return-void
.end method

.method shouldRotateSeamlessly(Lcom/android/server/wm/DisplayRotation;II)Z
    .locals 4
    .param p1, "displayRotation"    # Lcom/android/server/wm/DisplayRotation;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I

    .line 4214
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    .line 4215
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v0

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 4222
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-nez v0, :cond_1

    .line 4223
    return v1

    .line 4226
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4227
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 4232
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4233
    return v1

    .line 4240
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 4241
    const/4 v1, 0x1

    return v1

    .line 4243
    :cond_4
    return v1

    .line 4228
    :cond_5
    :goto_0
    return v1

    .line 4216
    .end local v0    # "w":Lcom/android/server/wm/WindowState;
    :cond_6
    :goto_1
    return v1
.end method

.method public stopLongshotConnection()V
    .locals 2

    .line 4457
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 4458
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->stopLongshotConnection(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/server/wm/WindowState;)V

    .line 4460
    :cond_0
    return-void
.end method

.method public switchUser()V
    .locals 0

    .line 3187
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3188
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_0

    .line 754
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 756
    :cond_0
    return-void
.end method

.method public takeScreenshot(I)V
    .locals 11
    .param p1, "screenshotType"    # I

    .line 4305
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_2

    .line 4308
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4309
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4310
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 4311
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_1

    .line 4312
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 4308
    move v7, v0

    move v10, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/OpDisplayPolicyInjector;->takeScreenshot(Lcom/android/server/wm/WindowState;Landroid/content/Context;ZLcom/android/internal/util/ScreenshotHelper;ZIZZLandroid/os/Handler;I)V

    .line 4316
    :cond_2
    return-void
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 3

    .line 3292
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3293
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_0

    const v1, 0x111009d

    .line 3295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 3296
    const v1, 0x1110012

    .line 3297
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 3298
    return-void
.end method

.method public updateNavigationBar(Z)V
    .locals 3
    .param p1, "hideNaviBar"    # Z

    .line 4466
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    if-ne v0, p1, :cond_0

    .line 4467
    return-void

    .line 4469
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    .line 4470
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4471
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    nop

    .line 4472
    .local v0, "winCandidate":Lcom/android/server/wm/WindowState;
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHideNavigationBar:Z

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isNeedToHideNavBar(ZLcom/android/server/wm/WindowState;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    .line 4474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNavigationBar to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needHide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 4476
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    .line 4477
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4478
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4480
    :cond_2
    return-void
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .line 1373
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1384
    return v0

    .line 1377
    :pswitch_0
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1378
    return v1

    .line 1380
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1381
    .local v2, "anim":[I
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->selectRotationAnimationLw([I)V

    .line 1382
    aget v3, v2, v1

    if-ne p1, v3, :cond_1

    aget v3, v2, v0

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10a010f
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
