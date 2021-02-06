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

.field static final ANIMATION_NONE:I = -0x1

.field static final ANIMATION_STYLEABLE:I = 0x0

.field private static final DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field private static SCROLL_BOOST_SS_ENABLE:Z = false

.field private static final SHOW_TYPES_FOR_PANIC:[I

.field private static final SHOW_TYPES_FOR_SWIPE:[I

.field private static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static isLowRAM:Z

.field private static final isSupportLandPadding:Z

.field private static final sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpNavFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllowLockscreenWhenOn:Z

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

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mForceClearedSystemUiFlags:I

.field private mForceShowSystemBars:Z

.field private mForceShowSystemBarsFromExternal:Z

.field private mForceStatusBar:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mInputMethodName:Ljava/lang/String;

.field private mIsFreeformWindowOverlappingWithNavBar:Z

.field private mIsPerfBoostFlingAcquired:Z

.field private volatile mKeyguardDrawComplete:Z

.field private mLastAppearance:I

.field private mLastBehavior:I

.field private mLastDockedAppearance:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private mLastFocusIsFullscreen:Z

.field private mLastFocusIsImmersive:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastFullscreenAppearance:I

.field private mLastImmersiveMode:Z

.field private mLastNavAllowedHidden:Z

.field private mLastNavTranslucent:Z

.field private mLastNavVisible:Z

.field private final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastNotificationShadeForcesShowingNavigation:Z

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLeftGestureInset:I

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarOpacityMode:I

.field private final mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field private mNavButtonForcedVisible:Z

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAlt:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAltPosition:I

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

.field private mNotificationShade:Lcom/android/server/wm/WindowState;

.field private mPendingPanicGestureUptime:J

.field mPerf:Landroid/util/BoostFramework;

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private mResettingSystemUiFlags:I

.field private mRightGestureInset:I

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

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private mStatusBarAlt:Lcom/android/server/wm/WindowState;

.field private mStatusBarAltPosition:I

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

.field private final mUiContext:Landroid/content/Context;

.field private volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 296
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    .line 300
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x6b

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isSupportLandPadding:Z

    .line 316
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    .line 317
    new-array v1, v0, [I

    aput v0, v1, v3

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    .line 334
    sput-boolean v3, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 335
    sput-boolean v3, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 471
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 472
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 473
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 474
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 17
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 341
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 342
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 343
    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    .line 346
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 370
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 371
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 392
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 393
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 394
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 395
    const/4 v6, 0x4

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 396
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 397
    iput v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 399
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    .line 400
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    .line 401
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    .line 402
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    .line 406
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 407
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 411
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 412
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 416
    new-array v4, v6, [I

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    .line 426
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 452
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 454
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    .line 459
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 460
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 461
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 462
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 465
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 466
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    .line 482
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 497
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 520
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 1794
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 2441
    const-string v4, ""

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 4564
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 599
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 600
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 601
    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 602
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_1

    .line 604
    :cond_1
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v4

    :goto_1
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 605
    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 608
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 609
    .local v4, "displayId":I
    new-instance v6, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v6, v4}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 610
    new-instance v15, Lcom/android/server/wm/BarController;

    const/high16 v9, 0x8000000

    const/high16 v10, 0x20000000

    const/high16 v11, -0x80000000

    const/4 v12, 0x2

    const/16 v13, 0x7e3

    const/high16 v14, 0x8000000

    const v16, 0x8000

    const-string v7, "NavigationBar"

    move-object v6, v15

    move v8, v4

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v6 .. v15}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIIII)V

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 620
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 621
    .local v3, "r":Landroid/content/res/Resources;
    const v6, 0x111003e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 622
    const v6, 0x111004e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 623
    const v6, 0x111008a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 625
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 627
    iget-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 628
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 629
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 630
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 633
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    if-eqz v6, :cond_3

    .line 634
    const-string v8, "vendor.perf.gestureflingboost.enable"

    const-string v9, "false"

    invoke-virtual {v6, v8, v9}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 635
    :cond_3
    const-string v6, "ro.config.low_ram"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 637
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 638
    .local v6, "looper":Landroid/os/Looper;
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v8, v0, v6}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 639
    new-instance v9, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v11, v0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v9, v10, v8, v11}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 846
    invoke-virtual {v2, v9}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 847
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 848
    invoke-virtual {v9}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v9

    .line 847
    invoke-virtual {v8, v9}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 849
    new-instance v8, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v8, v9, v6, v10}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 853
    iget-boolean v8, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_4

    .line 854
    new-instance v8, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 856
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_7

    .line 857
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 858
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11100c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 862
    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 863
    .local v8, "navBarOverride":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 864
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_3

    .line 865
    :cond_5
    const-string v5, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 866
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 868
    .end local v8    # "navBarOverride":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 869
    :cond_7
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 870
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 873
    :goto_4
    new-instance v5, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 874
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 877
    new-instance v5, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;

    invoke-direct {v9, v0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v5, v7, v8, v9}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 885
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;

    invoke-direct {v8, v5}, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 886
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 270
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/util/BoostFramework;

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 270
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1972(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 270
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/wm/WindowState;

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 270
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/DisplayPolicy;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # J

    .line 270
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$2300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 270
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    return-object v0
.end method

.method static synthetic access$2500()[I
    .locals 1

    .line 270
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->checkAltBarSwipeForTransientBars(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 270
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2404
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 2405
    return-void

    .line 2409
    :cond_0
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2412
    :cond_1
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2414
    :goto_0
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .line 4553
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 2417
    nop

    .line 2418
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

    .line 2419
    .local v0, "notFocusable":Z
    :goto_0
    nop

    .line 2420
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

    .line 2421
    .local v3, "altFocusableIm":Z
    :goto_1
    xor-int v4, v0, v3

    .line 2422
    .local v4, "notFocusableForIm":Z
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private checkAltBarSwipeForTransientBars(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    if-ne v1, p1, :cond_0

    .line 890
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    if-ne v1, p1, :cond_1

    .line 893
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    .line 895
    :cond_1
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p0, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p1, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p2, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p3, "navBarPosition"    # I

    .line 4203
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4204
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 4206
    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4209
    .local v1, "imeWindowCanNavColorWindow":Z
    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    .line 4214
    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    .line 4217
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 4222
    :cond_3
    if-nez v1, :cond_4

    .line 4224
    return-object p1

    .line 4229
    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4231
    return-object p2

    .line 4234
    :cond_5
    return-object p1

    .line 4219
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    move-object v0, p2

    :cond_7
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .line 4522
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    .line 4523
    .local v1, "newVal":I
    if-eq v1, v0, :cond_0

    .line 4524
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 4525
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 4527
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

    .line 4478
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4479
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 4480
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4481
    :cond_0
    if-eqz p2, :cond_8

    .line 4482
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4484
    :cond_1
    if-nez v0, :cond_5

    .line 4485
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    .line 4491
    :cond_2
    if-eqz p5, :cond_8

    .line 4492
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4486
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz v0, :cond_4

    .line 4487
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4489
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4494
    :cond_5
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 4495
    if-eqz p4, :cond_6

    .line 4496
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4497
    :cond_6
    if-eqz p3, :cond_7

    .line 4498
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4500
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 4504
    :cond_8
    :goto_1
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    .line 4756
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_0

    .line 4757
    return-void

    .line 4760
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4761
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4762
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4763
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4764
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p1, "inputConsumer"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 3962
    if-eqz p1, :cond_0

    .line 3963
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dispose()V

    .line 3965
    :cond_0
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .locals 5
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "controller"    # Lcom/android/server/wm/BarController;
    .param p4, "translucentFlag"    # I

    .line 4448
    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4449
    return v1

    .line 4451
    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 4452
    return v0

    .line 4455
    :cond_1
    nop

    .line 4456
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

    .line 4457
    .local v2, "drawsSystemBars":Z
    :goto_0
    nop

    .line 4458
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

    .line 4460
    .local v3, "forceDrawsSystemBars":Z
    :goto_1
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    and-int v4, p1, p4

    if-nez v4, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    return v1
.end method

.method private drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 4468
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

    .line 4464
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private enablePointerLocation()V
    .locals 4

    .line 4727
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    .line 4728
    return-void

    .line 4731
    :cond_0
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4732
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 4733
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 4736
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4737
    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4740
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 4741
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4742
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4743
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4744
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4747
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4748
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

    .line 4749
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4750
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4751
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4752
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4753
    return-void
.end method

.method private static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .locals 6
    .param p0, "insetsTypes"    # [I

    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 1485
    .local v3, "insetsType":I
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 1489
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v4, :cond_1

    .line 1484
    .end local v3    # "insetsType":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1490
    .restart local v3    # "insetsType":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1495
    .end local v3    # "insetsType":I
    :cond_2
    return-void
.end method

.method private getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1450
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    .line 1460
    const/4 v0, -0x1

    return v0

    .line 1456
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 1458
    :cond_1
    const/16 v0, 0x8

    return v0

    .line 1454
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 1452
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private getAppPackageName()Ljava/lang/String;
    .locals 3

    .line 569
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->getFilteredTasks(IZ)Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    .local v0, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 574
    .local v0, "currentPackage":Ljava/lang/String;
    goto :goto_0

    .line 572
    .end local v0    # "currentPackage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 575
    .local v0, "currentPackage":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private getDisplayId()I
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1782
    const/4 v0, 0x0

    .line 1783
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

    .line 1786
    .local v1, "forceWindowDrawsBarBackgrounds":Z
    :goto_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 1788
    :cond_1
    or-int/lit16 v0, v0, 0x200

    .line 1789
    or-int/lit16 v0, v0, 0x400

    .line 1791
    :cond_2
    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3668
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3642
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 3643
    const/4 p1, 0x0

    .line 3648
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3599
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 3600
    const/4 p1, 0x0

    .line 3605
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1527
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getTransientState(II)Landroid/util/Pair;
    .locals 12
    .param p0, "vis"    # I
    .param p1, "oldVis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation

    .line 4145
    new-instance v4, Landroid/util/IntArray;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 4146
    .local v4, "typesToShow":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 4147
    .local v5, "typesToAbort":Landroid/util/IntArray;
    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    .line 4149
    const/high16 v8, 0x8000000

    const/4 v9, 0x1

    move v6, p0

    move v7, p1

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    .line 4151
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private hasStatusBarServicePermission(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1109
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

    .line 4531
    const/16 v0, 0x1800

    .line 4532
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    .line 4535
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4532
    :goto_0
    return v1
.end method

.method private isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 4539
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 4540
    .local v0, "behavior":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4541
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4544
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4545
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 4546
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeDream()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4540
    :goto_0
    return v2
.end method

.method private isKeyguardOccluded()Z
    .locals 1

    .line 3989
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3
    .param p0, "systemUiFlags"    # I

    .line 4557
    const/high16 v0, 0x1600000

    .line 4561
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

.method static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "targetWindow"    # Lcom/android/server/wm/WindowState;
    .param p1, "navBarWindow"    # Lcom/android/server/wm/WindowState;

    .line 4794
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 4795
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4799
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 4796
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 6
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "BoostType"    # Landroid/util/BoostFramework;

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "isGame":Z
    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 583
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 584
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    move v0, v2

    .line 590
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_2

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v1, 0x1601

    invoke-virtual {p2, v1, p1}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    move v0, v2

    .line 595
    :goto_2
    return v0
.end method

.method static synthetic lambda$canToastShowWhenLocked$1(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "callingPid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1212
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

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z
    .locals 19
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I
    .param p3, "navVisible"    # Z
    .param p4, "navTranslucent"    # Z
    .param p5, "navAllowedHidden"    # Z
    .param p6, "statusBarForcesShowingNavigation"    # Z
    .param p7, "simulatedContentFrame"    # Landroid/graphics/Rect;

    .line 2227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p7

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 2228
    return v6

    .line 2231
    :cond_0
    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 2232
    .local v5, "navigationFrame":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v7}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v14

    .line 2236
    .local v14, "transientNavBarShowing":Z
    iget v15, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2237
    .local v15, "rotation":I
    iget v13, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 2238
    .local v13, "displayHeight":I
    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 2239
    .local v12, "displayWidth":I
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2240
    .local v11, "dockFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v12, v13, v15}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v10

    .line 2242
    .local v10, "navBarPosition":I
    sget-object v9, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2243
    .local v9, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2244
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2246
    const/4 v7, 0x4

    if-ne v10, v7, :cond_5

    .line 2248
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 2249
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v16

    sub-int v7, v7, v16

    .line 2250
    .local v7, "topNavBar":I
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-eqz v8, :cond_1

    .line 2251
    move v8, v7

    goto :goto_0

    .line 2252
    :cond_1
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v17

    sub-int v8, v8, v17

    :goto_0
    nop

    .line 2253
    .local v8, "top":I
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2254
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2255
    if-eqz v14, :cond_2

    .line 2256
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_1

    .line 2257
    :cond_2
    const/4 v6, 0x1

    if-eqz p3, :cond_3

    .line 2258
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2259
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2262
    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2264
    :goto_1
    if-eqz p3, :cond_4

    if-nez p4, :cond_4

    if-nez p5, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2265
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2266
    invoke-virtual {v4}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2269
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2271
    .end local v7    # "topNavBar":I
    .end local v8    # "top":I
    :cond_4
    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x2

    if-ne v10, v4, :cond_8

    .line 2273
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 2274
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v4, v7

    .line 2275
    .local v4, "left":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v4, v6, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2276
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->right:I

    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 2277
    if-eqz v14, :cond_6

    .line 2278
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_2

    .line 2279
    :cond_6
    const/4 v7, 0x1

    if-eqz p3, :cond_7

    .line 2280
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2281
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 2284
    :cond_7
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2286
    :goto_2
    if-eqz p3, :cond_b

    if-nez p4, :cond_b

    if-nez p5, :cond_b

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2287
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2288
    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2291
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 2293
    .end local v4    # "left":I
    :cond_8
    const/4 v4, 0x1

    if-ne v10, v4, :cond_b

    .line 2295
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 2296
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v4, v7

    .line 2297
    .local v4, "right":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v7, v6, v4, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2298
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->left:I

    iput v4, v6, Landroid/graphics/Rect;->left:I

    .line 2299
    if-eqz v14, :cond_9

    .line 2300
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    .line 2301
    :cond_9
    const/4 v7, 0x1

    if-eqz p3, :cond_a

    .line 2302
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2303
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 2306
    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2308
    :goto_3
    if-eqz p3, :cond_c

    if-nez p4, :cond_c

    if-nez p5, :cond_c

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2309
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2310
    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2313
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 2293
    .end local v4    # "right":I
    :cond_b
    :goto_4
    nop

    .line 2319
    :cond_c
    :goto_5
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2320
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2321
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2323
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2324
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v4

    .line 2325
    .local v4, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    move-object v7, v4

    move-object v8, v5

    move-object/from16 v17, v9

    .end local v9    # "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    .local v17, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    move-object v9, v5

    move v2, v10

    .end local v10    # "navBarPosition":I
    .local v2, "navBarPosition":I
    move-object v10, v6

    move-object v6, v11

    .end local v11    # "dockFrame":Landroid/graphics/Rect;
    .local v6, "dockFrame":Landroid/graphics/Rect;
    move-object v11, v5

    move/from16 v18, v12

    .end local v12    # "displayWidth":I
    .local v18, "displayWidth":I
    move-object/from16 v12, v16

    move/from16 v16, v13

    .end local v13    # "displayHeight":I
    .local v16, "displayHeight":I
    move-object v13, v5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2330
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 2331
    move-object/from16 v7, p7

    if-eqz v7, :cond_d

    .line 2332
    iget-object v8, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2334
    :cond_d
    iput v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 2335
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v9, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2338
    :goto_6
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNavigationBar frame: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    :cond_e
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v8}, Lcom/android/server/wm/BarController;->checkHiddenLw()Z

    move-result v8

    return v8
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V
    .locals 19
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "simulatedFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 2081
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    return-void

    .line 2085
    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2086
    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 2087
    .local v4, "displayId":I
    iget-object v5, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2088
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget v6, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 2089
    .local v6, "displayHeight":I
    iget v7, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 2091
    .local v7, "displayWidth":I
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_d

    .line 2092
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 2093
    .local v10, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2095
    goto/16 :goto_2

    .line 2098
    :cond_1
    if-eqz v3, :cond_2

    move v0, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 2099
    .local v11, "isSimulatedLayout":Z
    if-eqz v11, :cond_3

    .line 2100
    invoke-virtual {v10, v3}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2102
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v15

    .line 2103
    .local v15, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v13, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v14, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v12, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    sget-object v17, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object v12, v15

    move-object v1, v15

    .end local v15    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v1, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move-object v15, v0

    move-object/from16 v18, v8

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2109
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    if-eqz v11, :cond_4

    .line 2112
    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2115
    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2117
    .local v0, "frame":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v12, " displayHeight="

    const-string v13, " displayWidth="

    const-string v14, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v15, "WindowManager"

    if-gtz v8, :cond_7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_7

    .line 2119
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_5

    .line 2121
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    .line 2122
    :cond_5
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_6

    .line 2124
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    .line 2126
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on left or top of display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2130
    :cond_7
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_a

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_a

    .line 2132
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_8

    .line 2134
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 2135
    :cond_8
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_9

    .line 2137
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2139
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on right or bottom of display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2145
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on one of the sides of the display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2111
    .end local v0    # "frame":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    move-object v12, v0

    if-eqz v11, :cond_b

    .line 2112
    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2114
    :cond_b
    throw v12

    .line 2091
    .end local v1    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v10    # "w":Lcom/android/server/wm/WindowState;
    .end local v11    # "isSimulatedLayout":Z
    :cond_c
    :goto_2
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 2151
    .end local v9    # "i":I
    :cond_d
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2152
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2153
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2154
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2155
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2156
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "sysui"    # I
    .param p3, "simulatedContentFrame"    # Landroid/graphics/Rect;

    .line 2161
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2162
    return v1

    .line 2165
    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2166
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    .line 2167
    .local v0, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2173
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 2176
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2179
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2183
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2184
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2185
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2186
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2187
    if-eqz p3, :cond_1

    .line 2188
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2190
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2193
    :goto_0
    const/high16 v2, 0x4000000

    and-int/2addr v2, p2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2194
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    .line 2195
    .local v2, "statusBarTransient":Z
    :goto_2
    const v4, 0x40000008    # 2.000002f

    and-int/2addr v4, p2

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    .line 2199
    .local v4, "statusBarTranslucent":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 2202
    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2203
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2204
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2205
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2206
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2208
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status bar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2209
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 2210
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 2208
    const-string v1, "dock=%s content=%s cur=%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_5
    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2213
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2218
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2221
    .end local v5    # "dockFrame":Landroid/graphics/Rect;
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkHiddenLw()Z

    move-result v1

    return v1
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;

    .line 3081
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3082
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3083
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3084
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 3087
    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 3088
    .local v0, "rotation":I
    iget v1, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3091
    .local v1, "navBarPosition":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3092
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 3093
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3094
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 3098
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v3

    .line 3099
    .local v3, "uimode":I
    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v4

    .line 3100
    .local v4, "navFrameHeight":I
    iget-object v5, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v6, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3103
    .end local v3    # "uimode":I
    .end local v4    # "navFrameHeight":I
    :cond_0
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3104
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 3105
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 3106
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3107
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input method: mDockBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mContentBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_1
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 3113
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3114
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3115
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3116
    return-void
.end method

.method private opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2427
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2428
    return v0

    .line 2431
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "BiometricPrompt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2433
    const/4 v0, 0x1

    return v0

    .line 2435
    :cond_1
    return v0
.end method

.method private postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2054
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    .line 2058
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2068
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2069
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2070
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .locals 8
    .param p1, "swipeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3879
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3881
    return-void

    .line 3885
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3886
    return-void

    .line 3889
    :cond_1
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    .line 3890
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 3891
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_2

    .line 3892
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3894
    .local v1, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v1, v4, :cond_3

    goto/16 :goto_4

    .line 3899
    :cond_3
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 3901
    .local v4, "requestedState":Landroid/view/InsetsState;
    invoke-virtual {v4, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3902
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v3

    .line 3903
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3904
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    or-int/2addr v2, v5

    .line 3906
    .local v2, "restorePositionTypes":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v5, :cond_6

    .line 3907
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_6

    .line 3911
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    invoke-interface {v1, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 3912
    return-void

    .line 3918
    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    or-int/2addr v5, v6

    .line 3921
    .local v5, "insetsTypesToShow":I
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3931
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v6

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/InsetsPolicy;->showTransient([I)I

    move-result v6

    not-int v6, v6

    and-int/2addr v5, v6

    .line 3932
    if-eqz v5, :cond_9

    .line 3933
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3934
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    not-int v6, v6

    and-int/2addr v5, v6

    .line 3936
    :cond_7
    invoke-interface {v1, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_3

    .line 3941
    :cond_8
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v1, v6, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 3943
    .end local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    .end local v2    # "restorePositionTypes":I
    .end local v4    # "requestedState":Landroid/view/InsetsState;
    .end local v5    # "insetsTypesToShow":I
    :cond_9
    :goto_3
    goto :goto_6

    .line 3896
    .restart local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .restart local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_a
    :goto_4
    return-void

    .line 3944
    .end local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v0

    .line 3945
    .local v0, "sb":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3946
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    move v1, v2

    .line 3947
    .local v1, "nb":Z
    if-nez v0, :cond_d

    if-eqz v1, :cond_11

    .line 3949
    :cond_d
    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_e

    .line 3951
    return-void

    .line 3953
    :cond_e
    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 3954
    :cond_f
    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 3955
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3958
    .end local v0    # "sb":Z
    .end local v1    # "nb":Z
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 3959
    return-void
.end method

.method private setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Lcom/android/server/wm/WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2345
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2354
    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2355
    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 2360
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 2361
    .local v0, "parentDisplayFrame":Landroid/graphics/Rect;
    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2362
    .local v1, "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 2366
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v2

    .line 2367
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2375
    :cond_1
    const/16 v2, 0x10

    if-eq p3, v2, :cond_3

    .line 2380
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    .line 2381
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 2380
    :goto_0
    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2388
    :cond_3
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2389
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2390
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2391
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2392
    :cond_5
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2395
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    move-object v2, v0

    goto :goto_2

    :cond_7
    move-object v2, p8

    :goto_2
    invoke-virtual {p7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2396
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2400
    .end local v0    # "parentDisplayFrame":Landroid/graphics/Rect;
    .end local v1    # "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_8

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, p7

    :goto_4
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2401
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4508
    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4512
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 4513
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTransparentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4517
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 4518
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

.method private simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "insetsState"    # Landroid/view/InsetsState;
    .param p4, "simulatedWindowFrames"    # Lcom/android/server/wm/WindowFrames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/view/InsetsState;",
            "Lcom/android/server/wm/WindowFrames;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1876
    .local p5, "contentFrames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p6, "layout":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1877
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1879
    .local v0, "contentFrame":Landroid/graphics/Rect;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1882
    nop

    .line 1883
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1884
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/server/wm/InsetsStateController;->computeSimulatedState(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1886
    return-void

    .line 1881
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1882
    throw v2
.end method

.method private supportsPointerLocation()Z
    .locals 1

    .line 4714
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

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

.method private updateCurrentUserResources()V
    .locals 14

    .line 3548
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 3549
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 3551
    .local v1, "uiContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 3554
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3555
    return-void

    .line 3560
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 3561
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3560
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3562
    .local v2, "pi":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 3563
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3565
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    .line 3566
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3567
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    .line 3569
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3562
    invoke-virtual/range {v3 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3572
    return-void
.end method

.method private static updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V
    .locals 10
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 2037
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-eqz v0, :cond_0

    .line 2038
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2039
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2041
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2042
    return-void

    .line 2044
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2045
    .local v0, "u":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 2046
    .local v5, "s":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2047
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2048
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2049
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2050
    return-void
.end method

.method private updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p1, "appearance"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p5, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 4259
    if-eqz p5, :cond_3

    .line 4260
    if-eq p5, p4, :cond_1

    if-ne p5, p2, :cond_0

    goto :goto_0

    .line 4265
    :cond_0
    if-ne p5, p3, :cond_2

    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4267
    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    .line 4262
    :cond_1
    :goto_0
    and-int/lit8 p1, p1, -0x11

    .line 4263
    iget-object v0, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 4269
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p5}, Lcom/android/server/wm/BarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4270
    and-int/lit8 p1, p1, -0x11

    .line 4273
    :cond_3
    return p1
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p0, "vis"    # I
    .param p1, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p2, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p3, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p4, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 4242
    if-eqz p4, :cond_2

    .line 4243
    if-eq p4, p3, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 4248
    :cond_0
    if-ne p4, p2, :cond_2

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4250
    and-int/lit8 p0, p0, -0x11

    goto :goto_1

    .line 4245
    :cond_1
    :goto_0
    and-int/lit8 p0, p0, -0x11

    .line 4246
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    .line 4253
    :cond_2
    :goto_1
    return p0
.end method

.method private updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 4
    .param p1, "appearance"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;

    .line 4167
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4168
    .local v0, "onKeyguard":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v1, p3

    .line 4169
    .local v1, "statusColorWin":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v1, :cond_5

    .line 4170
    if-eq v1, p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 4178
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4180
    and-int/lit8 p1, p1, -0x9

    goto :goto_3

    .line 4173
    :cond_3
    :goto_2
    and-int/lit8 p1, p1, -0x9

    .line 4174
    const/4 v2, 0x0

    .line 4175
    invoke-static {v1, v2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 4174
    invoke-static {v2}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v2

    .line 4176
    .local v2, "legacyAppearance":I
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->appearance:I

    or-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    .line 4178
    .end local v2    # "legacyAppearance":I
    :cond_4
    nop

    .line 4182
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/StatusBarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4183
    and-int/lit8 p1, p1, -0x9

    .line 4190
    :cond_5
    invoke-static {p2, p1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->forceDarkSystemUI(Lcom/android/server/wm/WindowState;I)I

    move-result p1

    .line 4193
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
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    .line 4277
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4278
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v9

    .line 4279
    .local v9, "dockedStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4280
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v10

    .line 4281
    .local v10, "freeformStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v11

    .line 4286
    .local v11, "resizing":Z
    const/4 v13, 0x0

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

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

    .line 4291
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4292
    iput-boolean v13, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 4297
    :cond_2
    iget-boolean v0, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_2
    move v14, v0

    .line 4300
    .local v14, "forceOpaqueStatusBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4301
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 4302
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_3
    move-object v15, v0

    .line 4303
    .local v15, "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v1, p3

    invoke-virtual {v0, v15, v1, v8}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 4304
    .end local p3    # "vis":I
    .local v0, "vis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v15, v0, v8}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 4305
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v13, v13}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    .line 4307
    .local v1, "dockedVis":I
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v1, v13}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v6

    .line 4310
    .end local v1    # "dockedVis":I
    .local v6, "dockedVis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4311
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v16

    .line 4312
    .local v16, "fullscreenDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4313
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 4314
    .local v17, "dockedDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4315
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v18

    .line 4316
    .local v18, "fullscreenDrawsNavBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4317
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v19

    .line 4320
    .local v19, "dockedDrawsNavigationBarBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4321
    .local v5, "type":I
    const/16 v1, 0x7f8

    if-ne v5, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v13

    :goto_4
    move/from16 v20, v1

    .line 4322
    .local v20, "notificationShadeHasFocus":Z
    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4323
    const/16 v1, 0x3806

    .line 4328
    .local v1, "flags":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4329
    const/high16 v2, -0x40000000    # -2.0f

    or-int/2addr v1, v2

    .line 4331
    :cond_6
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, v8, v1

    or-int v0, v2, v3

    .line 4334
    .end local v1    # "flags":I
    :cond_7
    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    .line 4335
    or-int/lit8 v0, v0, 0x8

    .line 4336
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    .line 4337
    :cond_8
    if-eqz v14, :cond_9

    .line 4338
    const v1, -0x40000009    # -1.9999989f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    .line 4337
    :cond_9
    move/from16 v21, v0

    .line 4341
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

    .line 4345
    .end local v21    # "vis":I
    .restart local v0    # "vis":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    move v1, v13

    .line 4347
    .local v1, "immersiveSticky":Z
    :goto_6
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    .line 4349
    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v2, v13

    .line 4351
    .local v2, "hideStatusBarWM":Z
    :goto_7
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_d

    .line 4358
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

    .line 4359
    .local v3, "hideStatusBarSysui":Z
    :goto_9
    if-nez v1, :cond_e

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4360
    const/4 v1, 0x1

    .line 4364
    :cond_e
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    move v4, v13

    .line 4367
    .local v4, "hideNavBarSysui":Z
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

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

    .line 4371
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

    .line 4374
    .local v6, "transientNavBarAllowed":Z
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 4375
    .local v24, "now":J
    iget-wide v12, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    move/from16 v27, v1

    move/from16 p3, v2

    .end local v1    # "immersiveSticky":Z
    .end local v2    # "hideStatusBarWM":Z
    .local v27, "immersiveSticky":Z
    .local p3, "hideStatusBarWM":Z
    const-wide/16 v1, 0x0

    cmp-long v28, v12, v1

    if-eqz v28, :cond_13

    sub-long v12, v24, v12

    const-wide/16 v28, 0x7530

    cmp-long v12, v12, v28

    if-gtz v12, :cond_13

    const/4 v12, 0x1

    goto :goto_d

    :cond_13
    const/4 v12, 0x0

    .line 4377
    .local v12, "pendingPanic":Z
    :goto_d
    iget-object v13, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4378
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    .line 4379
    .local v13, "defaultDisplayPolicy":Lcom/android/server/wm/DisplayPolicy;
    if-eqz v12, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v28

    if-nez v28, :cond_14

    .line 4381
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 4384
    iput-wide v1, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 4385
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 4386
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 4387
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 4391
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

    .line 4393
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

    .line 4395
    .local v2, "denyTransientNav":Z
    :goto_f
    if-nez v1, :cond_17

    if-nez v2, :cond_17

    move/from16 v28, v1

    .end local v1    # "denyTransientStatus":Z
    .local v28, "denyTransientStatus":Z
    iget-boolean v1, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v1, :cond_18

    goto :goto_10

    .end local v28    # "denyTransientStatus":Z
    .restart local v1    # "denyTransientStatus":Z
    :cond_17
    move/from16 v28, v1

    .line 4397
    .end local v1    # "denyTransientStatus":Z
    .restart local v28    # "denyTransientStatus":Z
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    .line 4398
    and-int/lit8 v0, v0, -0x8

    .line 4401
    :cond_18
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    .line 4402
    .local v1, "immersive":Z
    :goto_11
    move/from16 v29, v2

    .end local v2    # "denyTransientNav":Z
    .local v29, "denyTransientNav":Z
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_12

    :cond_1a
    const/4 v2, 0x0

    .line 4403
    .end local v27    # "immersiveSticky":Z
    .local v2, "immersiveSticky":Z
    :goto_12
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1b

    goto :goto_13

    :cond_1b
    const/16 v27, 0x0

    goto :goto_14

    :cond_1c
    :goto_13
    const/16 v27, 0x1

    .line 4405
    .local v27, "navAllowedHidden":Z
    :goto_14
    if-eqz v4, :cond_1d

    if-nez v27, :cond_1d

    move/from16 v30, v1

    .end local v1    # "immersive":Z
    .local v30, "immersive":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4406
    move/from16 v31, v2

    move-object/from16 v2, p1

    .end local v2    # "immersiveSticky":Z
    .local v31, "immersiveSticky":Z
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move/from16 v32, v3

    .end local v3    # "hideStatusBarSysui":Z
    .local v32, "hideStatusBarSysui":Z
    const/16 v3, 0x7e6

    .line 4407
    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-le v1, v2, :cond_1e

    .line 4410
    and-int/lit8 v0, v0, -0x3

    goto :goto_15

    .line 4405
    .end local v30    # "immersive":Z
    .end local v31    # "immersiveSticky":Z
    .end local v32    # "hideStatusBarSysui":Z
    .restart local v1    # "immersive":Z
    .restart local v2    # "immersiveSticky":Z
    .restart local v3    # "hideStatusBarSysui":Z
    :cond_1d
    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    .line 4413
    .end local v1    # "immersive":Z
    .end local v2    # "immersiveSticky":Z
    .end local v3    # "hideStatusBarSysui":Z
    .restart local v30    # "immersive":Z
    .restart local v31    # "immersiveSticky":Z
    .restart local v32    # "hideStatusBarSysui":Z
    :cond_1e
    :goto_15
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, v5, v8, v0}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 4416
    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    const/16 v21, 0x1

    goto :goto_16

    :cond_1f
    const/16 v21, 0x0

    :goto_16
    move/from16 v1, v21

    .line 4417
    .local v1, "newInsetsMode":Z
    if-eqz v1, :cond_20

    iget-boolean v2, v7, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    goto :goto_17

    :cond_20
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v2

    .line 4418
    .local v2, "oldImmersiveMode":Z
    :goto_17
    if-eqz v1, :cond_21

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    goto :goto_18

    :cond_21
    invoke-direct {v7, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v3

    .line 4421
    .local v3, "newImmersiveMode":Z
    :goto_18
    if-eqz v3, :cond_22

    .line 4422
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DisplayPolicyInjector;->shouldDisableImmersiveModeConfirm(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 4423
    const/4 v3, 0x0

    .line 4426
    :cond_22
    if-eq v2, v3, :cond_23

    .line 4427
    iput-boolean v3, v7, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 4428
    move/from16 v21, v1

    .end local v1    # "newInsetsMode":Z
    .local v21, "newInsetsMode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 4429
    .local v1, "pkg":Ljava/lang/String;
    move/from16 v26, v2

    .end local v2    # "oldImmersiveMode":Z
    .local v26, "oldImmersiveMode":Z
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    move/from16 v33, v4

    .end local v4    # "hideNavBarSysui":Z
    .local v33, "hideNavBarSysui":Z
    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4430
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v4

    .line 4431
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v34

    move/from16 v35, v5

    .end local v5    # "transientStatusBarAllowed":Z
    .local v35, "transientStatusBarAllowed":Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4429
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    goto :goto_19

    .line 4426
    .end local v21    # "newInsetsMode":Z
    .end local v26    # "oldImmersiveMode":Z
    .end local v33    # "hideNavBarSysui":Z
    .end local v35    # "transientStatusBarAllowed":Z
    .local v1, "newInsetsMode":Z
    .restart local v2    # "oldImmersiveMode":Z
    .restart local v4    # "hideNavBarSysui":Z
    .restart local v5    # "transientStatusBarAllowed":Z
    :cond_23
    move/from16 v21, v1

    move/from16 v26, v2

    move/from16 v33, v4

    move/from16 v35, v5

    .line 4434
    .end local v1    # "newInsetsMode":Z
    .end local v2    # "oldImmersiveMode":Z
    .end local v4    # "hideNavBarSysui":Z
    .end local v5    # "transientStatusBarAllowed":Z
    .restart local v21    # "newInsetsMode":Z
    .restart local v26    # "oldImmersiveMode":Z
    .restart local v33    # "hideNavBarSysui":Z
    .restart local v35    # "transientStatusBarAllowed":Z
    :goto_19
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v6, v8, v0}, Lcom/android/server/wm/BarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 4436
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4439
    .local v1, "navColorWin":Lcom/android/server/wm/WindowState;
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v2, v4, v5, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 4443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 4
    .param p0, "vis"    # I
    .param p1, "oldVis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "type"    # I
    .param p4, "typesToShow"    # Landroid/util/IntArray;
    .param p5, "typesToAbort"    # Landroid/util/IntArray;

    .line 4156
    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4157
    .local v0, "wasTransient":Z
    :goto_0
    and-int v3, p0, p2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 4158
    .local v1, "isTransient":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 4159
    invoke-virtual {p4, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_2

    .line 4160
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 4161
    invoke-virtual {p5, p3}, Landroid/util/IntArray;->add(I)V

    .line 4163
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1324
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1328
    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7e3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_3

    .line 1427
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_6

    .line 1428
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v4, v0, v2

    .line 1429
    .local v4, "insetsType":I
    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 1436
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1437
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1438
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    goto :goto_1

    .line 1431
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1432
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1433
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1434
    nop

    .line 1441
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, p1, v6}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1428
    .end local v4    # "insetsType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1330
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1331
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    .line 1332
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_2

    .line 1348
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1349
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1350
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1409
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1417
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1424
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6

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

    goto :goto_2

    .line 1336
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1337
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1338
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;

    .local v0, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1343
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1344
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1346
    nop

    .line 1446
    .end local v0    # "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1, "visibility"    # I

    .line 1671
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 1672
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 1676
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 1679
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

    .line 1124
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1125
    .local v0, "isScreenDecor":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1126
    if-nez v0, :cond_2

    .line 1128
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1130
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1131
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_2
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v1, :cond_a

    const/16 v1, 0x7dd

    if-eq v2, v1, :cond_9

    const/16 v1, 0x7df

    if-eq v2, v1, :cond_8

    const/16 v1, 0x7f8

    if-eq v2, v1, :cond_7

    const/16 v1, 0x7d5

    if-eq v2, v1, :cond_3

    const/16 v1, 0x7d6

    if-eq v2, v1, :cond_8

    goto/16 :goto_2

    .line 1162
    :cond_3
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0xdac

    if-ltz v1, :cond_4

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    .line 1164
    :cond_4
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1169
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1172
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1174
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1175
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1178
    :cond_6
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1179
    goto :goto_2

    .line 1152
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1153
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 1138
    :cond_8
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1140
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1141
    goto :goto_2

    .line 1145
    :cond_9
    const/4 v1, 0x3

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1146
    goto :goto_2

    .line 1185
    :cond_a
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1186
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 1188
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    .line 1189
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1198
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_d

    .line 1199
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1201
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_e

    .line 1202
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1204
    :cond_e
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3152
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 3153
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

    .line 3154
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3155
    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 3156
    .local v1, "fl":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_1

    .line 3158
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 3159
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 3162
    :cond_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ge v3, v6, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    .line 3164
    .local v3, "appWindow":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    .line 3165
    .local v6, "windowingMode":I
    if-eq v6, v4, :cond_4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v4

    .line 3168
    .local v7, "inFullScreenOrSplitScreenSecondaryWindowingMode":Z
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_b

    if-eqz v0, :cond_b

    .line 3169
    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_5

    .line 3170
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3172
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3175
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v8, :cond_6

    .line 3176
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3177
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 3178
    const/4 v3, 0x1

    .line 3185
    :cond_7
    if-eqz v3, :cond_b

    if-nez p3, :cond_b

    .line 3186
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v7, :cond_b

    .line 3187
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fullscreen window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3192
    new-array v8, v4, [I

    const/16 v9, 0x3c

    aput v9, v8, v5

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    .line 3193
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3194
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    .line 3195
    sget-boolean v5, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_9

    .line 3196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FP_ACCELERATE: top full app win="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_a

    .line 3201
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3203
    :cond_a
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    .line 3204
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 3211
    :cond_b
    if-eqz v0, :cond_d

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7ef

    if-ne v2, v5, :cond_d

    .line 3212
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    .line 3213
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3214
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    .line 3215
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3218
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d

    .line 3219
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3220
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d

    .line 3221
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3227
    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_e

    if-eqz v0, :cond_e

    .line 3228
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v7, :cond_e

    .line 3229
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3235
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x3

    if-nez v2, :cond_f

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    if-nez p3, :cond_f

    .line 3236
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne v6, v5, :cond_f

    .line 3237
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3238
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f

    .line 3239
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3244
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    .line 3245
    .local v2, "navBarWin":Lcom/android/server/wm/WindowState;
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v8, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3246
    invoke-static {p1, v2}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3247
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 3252
    :cond_11
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_12

    if-ne v6, v5, :cond_12

    .line 3254
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3259
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-static {v4, v5}, Lcom/android/server/wm/OpScreenCompatInjector;->expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3262
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 1687
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 22
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1926
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1929
    iget v0, v9, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    .line 1931
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1932
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1931
    invoke-static {v9, v0}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 1933
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 1934
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 1937
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1938
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpQuickPayInjector;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 1944
    :cond_0
    iget v10, v8, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 1945
    .local v10, "sysui":I
    iget v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1946
    .local v11, "behavior":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1947
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v12

    .line 1948
    .local v12, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 1949
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 1950
    :cond_2
    if-eqz v12, :cond_3

    .line 1951
    invoke-virtual {v12}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    goto :goto_0

    .line 1952
    :cond_3
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    :goto_0
    nop

    .line 1953
    .local v0, "navVisible":Z
    const v2, -0x7fff8000

    and-int/2addr v2, v10

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1955
    .local v2, "navTranslucent":Z
    :goto_1
    and-int/lit16 v4, v10, 0x800

    if-nez v4, :cond_6

    and-int/lit8 v4, v11, 0x1

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v1

    :goto_3
    move v13, v4

    .line 1957
    .local v13, "immersive":Z
    and-int/lit16 v4, v10, 0x1000

    if-nez v4, :cond_8

    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v4, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v1

    :goto_5
    move v14, v4

    .line 1959
    .local v14, "immersiveSticky":Z
    if-nez v13, :cond_a

    if-eqz v14, :cond_9

    goto :goto_6

    :cond_9
    move v4, v3

    goto :goto_7

    :cond_a
    :goto_6
    move v4, v1

    :goto_7
    move v15, v4

    .line 1960
    .local v15, "navAllowedHidden":Z
    if-nez v14, :cond_b

    move v4, v1

    goto :goto_8

    :cond_b
    move v4, v3

    :goto_8
    and-int v7, v2, v4

    .line 1961
    .end local v2    # "navTranslucent":Z
    .local v7, "navTranslucent":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_9

    :cond_c
    move v2, v3

    :goto_9
    move/from16 v16, v2

    .line 1962
    .local v16, "isKeyguardShowing":Z
    if-nez v16, :cond_d

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d

    .line 1964
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v2, v4

    if-eqz v2, :cond_d

    move v2, v1

    goto :goto_a

    :cond_d
    move v2, v3

    :goto_a
    move v6, v2

    .line 1967
    .local v6, "notificationShadeForcesShowingNavigation":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateHideNavInputEventReceiver()V

    .line 1971
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    xor-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 1973
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_e

    .line 1974
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x901

    if-ne v2, v4, :cond_e

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1976
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_b

    :cond_e
    move v2, v3

    :goto_b
    move/from16 v17, v2

    .line 1978
    .local v17, "shouldForceHide":Z
    if-nez v17, :cond_f

    goto :goto_c

    :cond_f
    move v1, v3

    :goto_c
    and-int v5, v0, v1

    .line 1981
    .end local v0    # "navVisible":Z
    .local v5, "navVisible":Z
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    move v4, v7

    move/from16 v19, v5

    .end local v5    # "navVisible":Z
    .local v19, "navVisible":Z
    move v5, v15

    move/from16 v20, v6

    .end local v6    # "notificationShadeForcesShowingNavigation":Z
    .local v20, "notificationShadeForcesShowingNavigation":Z
    move/from16 v21, v11

    move v11, v7

    .end local v7    # "navTranslucent":Z
    .local v11, "navTranslucent":Z
    .local v21, "behavior":I
    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z

    move-result v0

    .line 1984
    .local v0, "updateSysUiVisibility":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDock rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_10
    const/4 v1, 0x0

    invoke-direct {v8, v9, v10, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1987
    if-eqz v0, :cond_11

    .line 1988
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 1990
    :cond_11
    invoke-direct {v8, v9, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1991
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 1992
    move/from16 v1, v19

    .end local v19    # "navVisible":Z
    .local v1, "navVisible":Z
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    .line 1993
    iput-boolean v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    .line 1994
    iput-boolean v15, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    .line 1995
    move/from16 v2, v20

    .end local v20    # "notificationShadeForcesShowingNavigation":Z
    .local v2, "notificationShadeForcesShowingNavigation":Z
    iput-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    .line 1996
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    .line 3130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3131
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3132
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3133
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3135
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 3136
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 3138
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 3139
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 3140
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 3141
    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .locals 3
    .param p1, "callingPid"    # I

    .line 1211
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 3747
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3748
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 4636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4638
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4639
    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4640
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4641
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4642
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4643
    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4645
    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4646
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4647
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4648
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4649
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4650
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 4652
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4653
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4654
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4655
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4656
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4657
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4660
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4661
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 4662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4664
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    .line 4665
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4667
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4669
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    .line 4670
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExpandedPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4672
    :cond_4
    const-string v0, " isKeyguardShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4673
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    .line 4674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4675
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4676
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4677
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4678
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4680
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    .line 4681
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4682
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4683
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4685
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_7

    .line 4686
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4688
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    .line 4689
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4690
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4692
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    .line 4693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4694
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4696
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_a

    .line 4697
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4701
    :cond_a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4702
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4703
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4704
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4705
    const-string v0, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4706
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4707
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4709
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4710
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

    .line 4711
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1069
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1070
    monitor-exit v0

    .line 1071
    return v1

    .line 1065
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 1070
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    .line 3277
    const/4 v0, 0x0

    .line 3278
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 3284
    .local v1, "topIsFullscreen":Z
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v2, :cond_0

    .line 3285
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 3288
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 3289
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " top="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    .line 3299
    .local v2, "forceShowStatusBar":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    .line 3302
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    .line 3305
    .local v6, "notificationShadeForcesShowingNavigation":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v7

    .line 3309
    .local v7, "topAppHidesStatusBar":Z
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3310
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-eqz v8, :cond_4

    .line 3311
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3312
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_4

    .line 3313
    const-string v8, "QuickReply: mForceStatusBar to false"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    :cond_4
    if-eqz v6, :cond_5

    .line 3317
    const/4 v6, 0x0

    .line 3318
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_5

    .line 3319
    const-string v8, "QuickReply: notificationShadeForcesShowingNavigation to false"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v8, :cond_e

    if-eqz v2, :cond_6

    goto :goto_3

    .line 3338
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_12

    .line 3339
    move v1, v7

    .line 3344
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3345
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3346
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 3355
    :cond_7
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3357
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    .line 3366
    :cond_8
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_9

    const-string v4, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3368
    or-int/lit8 v0, v0, 0x1

    .line 3370
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 3359
    :cond_b
    :goto_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_c

    const-string v5, "** HIDING status bar"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3361
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3363
    :cond_d
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_12

    const-string v4, "Status bar already hiding"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3325
    :cond_e
    :goto_3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_f

    const-string v8, "Showing status bar: forced"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3327
    or-int/lit8 v0, v0, 0x1

    .line 3330
    :cond_10
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    move v5, v4

    :goto_4
    move v1, v5

    .line 3333
    if-eqz v6, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 3334
    invoke-virtual {v3}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3335
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    .line 3373
    :cond_12
    :goto_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 3376
    .end local v2    # "forceShowStatusBar":Z
    .end local v6    # "notificationShadeForcesShowingNavigation":Z
    .end local v7    # "topAppHidesStatusBar":Z
    :cond_13
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_15

    .line 3377
    if-nez v1, :cond_14

    .line 3379
    or-int/lit8 v0, v0, 0x1

    .line 3381
    :cond_14
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 3384
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 3387
    or-int/lit8 v0, v0, 0x1

    .line 3390
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_17

    .line 3391
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 3392
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    .line 3395
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 3396
    return v0
.end method

.method public finishScreenTurningOn()Z
    .locals 15

    .line 1088
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .local v1, "protoLogParam0":Z
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .local v5, "protoLogParam1":Z
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .local v6, "protoLogParam2":Z
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .local v7, "protoLogParam3":Z
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .local v8, "protoLogParam4":Z
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0x6f2b8ffc

    const/16 v11, 0x3ff

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v13, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v4, v12}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1096
    .end local v1    # "protoLogParam0":Z
    .end local v5    # "protoLogParam1":Z
    .end local v6    # "protoLogParam2":Z
    .end local v7    # "protoLogParam3":Z
    .end local v8    # "protoLogParam4":Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1101
    :cond_1
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x43f97d42

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v4, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    :cond_2
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1103
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1104
    monitor-exit v0

    .line 1105
    return v2

    .line 1098
    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    .line 1104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1082
    monitor-exit v0

    .line 1083
    return v1

    .line 1078
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1082
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

    .line 3852
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3853
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3857
    invoke-static {p1, p2}, Lcom/android/server/wm/OpQuickReplyInjector;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3862
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3863
    invoke-static {p1, p2}, Lcom/android/server/policy/OpQuickPayInjector;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3867
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    .line 3868
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3870
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 3873
    const/4 v0, 0x1

    return v0

    .line 3875
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method getAlternateNavBarPosition()I
    .locals 1

    .line 3845
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    return v0
.end method

.method getAlternateStatusBarPosition()I
    .locals 1

    .line 3840
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    return v0
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3715
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3716
    .local v0, "statusBarHeight":I
    if-eqz p5, :cond_0

    .line 3719
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3721
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

    .line 3700
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 3591
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    .line 3583
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 3584
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3586
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 984
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    return v0
.end method

.method public getDockMode()I
    .locals 1

    .line 948
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getFocusedAppOrientation()I
    .locals 1

    .line 3979
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 3980
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    return v0

    .line 3983
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedWindowState()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getForceShowSystemBars()Z
    .locals 1

    .line 959
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .locals 1

    .line 3812
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1465
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .locals 1

    .line 3993
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    return-object v0
.end method

.method getLayoutHint(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .locals 21
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p3, "outFrame"    # Landroid/graphics/Rect;
    .param p4, "outContentInsets"    # Landroid/graphics/Rect;
    .param p5, "outStableInsets"    # Landroid/graphics/Rect;
    .param p6, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 1709
    .local v5, "fl":I
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1710
    .local v6, "pfl":I
    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 1711
    .local v7, "requestedSysUiVis":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    or-int/2addr v8, v7

    .line 1713
    .local v8, "sysUiVis":I
    and-int/lit16 v9, v5, 0x100

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v11

    .line 1714
    .local v9, "layoutInScreen":Z
    :goto_0
    if-eqz v9, :cond_1

    const/high16 v12, 0x10000

    and-int/2addr v12, v5

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v11

    .line 1716
    .local v12, "layoutInScreenAndInsetDecor":Z
    :goto_1
    const/high16 v13, 0x400000

    and-int/2addr v13, v6

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    move v13, v11

    .line 1718
    .local v13, "screenDecor":Z
    :goto_2
    if-eqz p2, :cond_3

    .line 1719
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    move v14, v11

    .line 1720
    .local v14, "isFixedRotationTransforming":Z
    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    goto :goto_4

    :cond_4
    move-object v15, v4

    .line 1721
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    goto :goto_5

    :cond_5
    move-object/from16 v16, v4

    .line 1722
    .local v16, "task":Lcom/android/server/wm/Task;
    :goto_5
    if-eqz v14, :cond_6

    .line 1724
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_6

    .line 1725
    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_6

    :cond_7
    move-object/from16 v17, v4

    :goto_6
    move-object/from16 v18, v17

    .line 1726
    .local v18, "taskBounds":Landroid/graphics/Rect;
    if-eqz v14, :cond_8

    .line 1727
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_7

    .line 1728
    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :goto_7
    nop

    .line 1730
    .local v4, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    if-eqz v12, :cond_12

    if-nez v13, :cond_12

    .line 1731
    and-int/lit16 v10, v8, 0x200

    if-nez v10, :cond_a

    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v20

    and-int v10, v10, v20

    if-nez v10, :cond_9

    goto :goto_8

    .line 1735
    :cond_9
    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    .line 1733
    :cond_a
    :goto_8
    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1738
    :goto_9
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    move v10, v11

    .line 1739
    .local v10, "isFloatingTask":Z
    :goto_a
    if-eqz v10, :cond_c

    const/4 v11, 0x0

    goto :goto_b

    :cond_c
    iget-object v11, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1741
    .local v11, "sf":Landroid/graphics/Rect;
    :goto_b
    if-eqz v10, :cond_d

    .line 1742
    const/16 v17, 0x0

    move-object/from16 v1, v17

    .local v17, "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1743
    .end local v17    # "cf":Landroid/graphics/Rect;
    :cond_d
    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_f

    .line 1744
    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_e

    .line 1745
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .local v1, "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1747
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_e
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .restart local v1    # "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1749
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_f
    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_10

    .line 1750
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .restart local v1    # "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1752
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_10
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .line 1755
    .restart local v1    # "cf":Landroid/graphics/Rect;
    :goto_c
    move/from16 v17, v5

    move-object/from16 v5, v18

    .end local v18    # "taskBounds":Landroid/graphics/Rect;
    .local v5, "taskBounds":Landroid/graphics/Rect;
    .local v17, "fl":I
    if-eqz v5, :cond_11

    .line 1756
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1758
    :cond_11
    move/from16 v18, v6

    move-object/from16 v6, p4

    .end local v6    # "pfl":I
    .local v18, "pfl":I
    invoke-static {v2, v1, v6}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1759
    move-object/from16 v19, v1

    move-object/from16 v1, p5

    .end local v1    # "cf":Landroid/graphics/Rect;
    .local v19, "cf":Landroid/graphics/Rect;
    invoke-static {v2, v11, v1}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1760
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1761
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 1760
    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1762
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1

    .line 1730
    .end local v10    # "isFloatingTask":Z
    .end local v11    # "sf":Landroid/graphics/Rect;
    .end local v17    # "fl":I
    .end local v19    # "cf":Landroid/graphics/Rect;
    .local v5, "fl":I
    .restart local v6    # "pfl":I
    .local v18, "taskBounds":Landroid/graphics/Rect;
    :cond_12
    move/from16 v17, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, p4

    .line 1764
    .end local v6    # "pfl":I
    .local v5, "taskBounds":Landroid/graphics/Rect;
    .restart local v17    # "fl":I
    .local v18, "pfl":I
    if-eqz v9, :cond_13

    .line 1765
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 1767
    :cond_13
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1769
    :goto_d
    if-eqz v5, :cond_14

    .line 1770
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1773
    :cond_14
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1774
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1775
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1776
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1
.end method

.method public getLidState()I
    .locals 1

    .line 1010
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    .line 3835
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method getNavigationBar()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    :goto_0
    return-object v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3679
    move v0, p2

    .line 3680
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3681
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3682
    .local v1, "navBarPosition":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3683
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3686
    .end local v1    # "navBarPosition":I
    :cond_0
    if-eqz p5, :cond_1

    .line 3687
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3689
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

    .line 3628
    move v0, p1

    .line 3629
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3630
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3631
    .local v1, "navBarPosition":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3632
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3635
    .end local v1    # "navBarPosition":I
    :cond_1
    if-eqz p5, :cond_2

    .line 3636
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3638
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

    .line 3780
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3783
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3784
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3785
    .local v0, "uiMode":I
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3786
    .local v1, "position":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3787
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 3788
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3789
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3790
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3791
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 3795
    .end local v0    # "uiMode":I
    .end local v1    # "position":I
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 3796
    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 3797
    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 3798
    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 3799
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 3801
    :cond_3
    return-void
.end method

.method getNotificationShade()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .locals 1

    .line 4632
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .locals 1

    .line 1038
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

    .line 3761
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3764
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3765
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3766
    return-void
.end method

.method getStatusBar()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1537
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    :goto_0
    return-object v0
.end method

.method getStatusBarController()Lcom/android/server/wm/StatusBarController;
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 361
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 362
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUiContext()Landroid/content/Context;
    .locals 1

    .line 3595
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 3119
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .locals 2

    .line 3732
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3733
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3732
    :goto_0
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method hasSideGestures()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusBar()Z
    .locals 1

    .line 994
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .locals 1

    .line 932
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .locals 1

    .line 924
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .locals 1

    .line 1030
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 3974
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .locals 1

    .line 940
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .line 1026
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .locals 1

    .line 3737
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method isTopLayoutFullscreen()Z
    .locals 1

    .line 3123
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return v0
.end method

.method isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4781
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    .line 4782
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4785
    :cond_1
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$addWindowLw$2$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1340
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1342
    return-void
.end method

.method public synthetic lambda$addWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1357
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v0, :cond_0

    .line 1362
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1363
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1364
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1366
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 1365
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1368
    :cond_0
    return-void
.end method

.method public synthetic lambda$addWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1376
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1377
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1380
    .local v0, "orientation":I
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1385
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1387
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1389
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1390
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1391
    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1393
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1392
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1396
    :cond_2
    return-void
.end method

.method public synthetic lambda$addWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1400
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1401
    return-void
.end method

.method public synthetic lambda$addWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1404
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1405
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1406
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1407
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1408
    return-void
.end method

.method public synthetic lambda$addWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1411
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1413
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1414
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1415
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1416
    return-void
.end method

.method public synthetic lambda$addWindowLw$8$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1419
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_1

    .line 1421
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1423
    :cond_1
    return-void
.end method

.method public synthetic lambda$getImeSourceFrameProvider$9$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1472
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1473
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1474
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1475
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1477
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1479
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$DisplayPolicy()V
    .locals 2

    .line 879
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 881
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 882
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 883
    monitor-exit v0

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyDisplayReady$13$DisplayPolicy()V
    .locals 2

    .line 3611
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3612
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 3613
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 3614
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 3615
    .local v1, "wpMgr":Lcom/android/server/wallpaper/WallpaperManagerInternal;
    if-eqz v1, :cond_0

    .line 3616
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 3618
    :cond_0
    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$10$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "contentFrame"    # Landroid/graphics/Rect;

    .line 1904
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1905
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    .line 1904
    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$11$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "contentFrame"    # Landroid/graphics/Rect;

    .line 1912
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$updateHideNavInputEventReceiver$12$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1
    .param p1, "x$0"    # Landroid/view/InputChannel;
    .param p2, "x$1"    # Landroid/os/Looper;

    .line 2027
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(ILjava/lang/String;Landroid/util/Pair;I[Lcom/android/internal/view/AppearanceRegion;ZZZ)V
    .locals 5
    .param p1, "visibility"    # I
    .param p2, "cause"    # Ljava/lang/String;
    .param p3, "transientState"    # Landroid/util/Pair;
    .param p4, "appearance"    # I
    .param p5, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p6, "isNavbarColorManagedByIme"    # Z
    .param p7, "isFullscreen"    # Z
    .param p8, "isImmersive"    # Z

    .line 4119
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4120
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_2

    .line 4121
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    .line 4122
    .local v1, "displayId":I
    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    invoke-interface {v0, v1, v2, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    .line 4124
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 4125
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[I)V

    .line 4127
    :cond_0
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 4128
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 4130
    :cond_1
    invoke-interface {v0, v1, p4, p5, p6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    .line 4132
    invoke-interface {v0, v1, p7, p8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZZ)V

    .line 4135
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4136
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const v4, -0x30000001

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    .line 4138
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4140
    .end local v1    # "displayId":I
    :cond_2
    :goto_0
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 53
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attached"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2459
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v12, v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    move-object v8, v12

    goto/16 :goto_3b

    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v0, :cond_7c

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 2460
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p3

    move-object v8, v12

    goto/16 :goto_3b

    .line 2463
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 2465
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2466
    .local v15, "type":I
    invoke-static {v12, v14}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 2467
    .local v10, "fl":I
    iget v9, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2468
    .local v9, "pfl":I
    iget v8, v14, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2469
    .local v8, "sim":I
    const/4 v0, 0x0

    invoke-static {v0, v14}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v16

    .line 2477
    .local v16, "requestedSysUiFl":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 2478
    .local v17, "isQuickReplyWin":Z
    invoke-static {v14}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v0, v16, v0

    .line 2479
    .local v0, "sysUiFl":I
    if-eqz v17, :cond_3

    .line 2480
    or-int/lit8 v0, v0, 0x4

    move v7, v0

    goto :goto_1

    .line 2479
    :cond_3
    move v7, v0

    .line 2484
    .end local v0    # "sysUiFl":I
    .local v7, "sysUiFl":I
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v6

    .line 2485
    .end local p3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v6, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v5

    .line 2487
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2488
    iget-object v4, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 2489
    .local v4, "pf":Landroid/graphics/Rect;
    iget-object v3, v5, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 2490
    .local v3, "df":Landroid/graphics/Rect;
    iget-object v2, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 2491
    .local v2, "cf":Landroid/graphics/Rect;
    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 2492
    .local v1, "vf":Landroid/graphics/Rect;
    iget-object v0, v5, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 2493
    .local v0, "dcf":Landroid/graphics/Rect;
    move/from16 v24, v7

    .end local v7    # "sysUiFl":I
    .local v24, "sysUiFl":I
    iget-object v7, v5, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 2494
    .local v7, "sf":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2495
    move-object/from16 p3, v0

    .end local v0    # "dcf":Landroid/graphics/Rect;
    .local p3, "dcf":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 2498
    invoke-direct {v11, v14}, Lcom/android/server/wm/DisplayPolicy;->opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v25

    .line 2501
    .local v25, "forceNoNavBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v18

    move-object/from16 v26, v5

    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v26, "windowFrames":Lcom/android/server/wm/WindowFrames;
    if-eqz v18, :cond_4

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    .line 2502
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v25, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move/from16 v28, v0

    .line 2514
    .local v28, "hasNavBar":Z
    and-int/lit16 v0, v8, 0xf0

    .line 2515
    .local v0, "adjust":I
    const/16 v29, 0x0

    .line 2517
    .local v29, "blockAdjustIME":Z
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v18

    if-eqz v18, :cond_5

    iget-object v5, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2518
    invoke-static {v5}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2519
    const/16 v0, 0x30

    move v5, v0

    goto :goto_3

    .line 2523
    :cond_5
    move v5, v0

    .end local v0    # "adjust":I
    .local v5, "adjust":I
    :goto_3
    and-int/lit16 v0, v10, 0x100

    move/from16 v31, v8

    .end local v8    # "sim":I
    .local v31, "sim":I
    const/16 v8, 0x100

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    move/from16 v32, v0

    .line 2524
    .local v32, "layoutInScreen":Z
    const/high16 v0, 0x10000

    and-int v8, v10, v0

    if-ne v8, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    move/from16 v33, v0

    .line 2526
    .local v33, "layoutInsetDecor":Z
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2531
    const/16 v8, 0x7db

    const/4 v0, 0x4

    if-ne v15, v8, :cond_b

    .line 2532
    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 2533
    iget v8, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v8, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2534
    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 2535
    .local v8, "orientation":I
    const/16 v18, 0x0

    .line 2536
    .local v18, "navHeightOffset":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_9

    .line 2537
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 2538
    .local v0, "uimode":I
    move/from16 v20, v8

    .end local v8    # "orientation":I
    .local v20, "orientation":I
    iget v8, v6, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2539
    .local v8, "rotation":I
    invoke-direct {v11, v8, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v18

    .line 2541
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2542
    move/from16 v21, v0

    .end local v0    # "uimode":I
    .local v21, "uimode":I
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v22, v8

    const v8, 0x506009b

    .end local v8    # "rotation":I
    .local v22, "rotation":I
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2544
    .local v0, "inputMethodPaddingLand":I
    move v8, v0

    move/from16 v18, v8

    .end local v18    # "navHeightOffset":I
    .local v8, "navHeightOffset":I
    goto :goto_6

    .line 2541
    .end local v21    # "uimode":I
    .end local v22    # "rotation":I
    .local v0, "uimode":I
    .local v8, "rotation":I
    .restart local v18    # "navHeightOffset":I
    :cond_8
    move/from16 v21, v0

    move/from16 v22, v8

    .end local v0    # "uimode":I
    .end local v8    # "rotation":I
    .restart local v21    # "uimode":I
    .restart local v22    # "rotation":I
    goto :goto_6

    .line 2546
    .end local v20    # "orientation":I
    .end local v21    # "uimode":I
    .end local v22    # "rotation":I
    .local v8, "orientation":I
    :cond_9
    move/from16 v20, v8

    .end local v8    # "orientation":I
    .restart local v20    # "orientation":I
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->isSupportLandPadding:Z

    if-eqz v0, :cond_a

    .line 2547
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x506009b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2549
    .local v0, "inputMethodPaddingLand":I
    move/from16 v18, v0

    goto :goto_7

    .line 2546
    .end local v0    # "inputMethodPaddingLand":I
    :cond_a
    :goto_6
    nop

    .line 2553
    :goto_7
    if-lez v18, :cond_b

    .line 2554
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2555
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 2561
    .end local v18    # "navHeightOffset":I
    .end local v20    # "orientation":I
    :cond_b
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v8, 0x2

    move-object/from16 v37, v7

    .end local v7    # "sf":Landroid/graphics/Rect;
    .local v37, "sf":Landroid/graphics/Rect;
    const-string v7, "WindowManager"

    if-ne v0, v8, :cond_21

    .line 2562
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    .line 2563
    .local v0, "typesToFit":I
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v38

    .line 2564
    .local v38, "sidesToFit":I
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v8

    .line 2565
    .local v8, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move/from16 v39, v0

    .end local v0    # "typesToFit":I
    .local v39, "typesToFit":I
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2566
    .local v0, "dfu":Landroid/graphics/Rect;
    move/from16 v40, v15

    const/4 v15, 0x0

    .end local v15    # "type":I
    .local v40, "type":I
    invoke-static {v15, v15, v15, v15}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v20

    .line 2567
    .local v20, "insets":Landroid/graphics/Insets;
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v15

    const/16 v21, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v41, v2

    move-object/from16 v2, v20

    .end local v20    # "insets":Landroid/graphics/Insets;
    .local v2, "insets":Landroid/graphics/Insets;
    .local v15, "i":I
    .local v41, "cf":Landroid/graphics/Rect;
    :goto_8
    move/from16 v42, v10

    .end local v10    # "fl":I
    .local v42, "fl":I
    if-ltz v15, :cond_11

    .line 2568
    iget-object v10, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v10

    .line 2569
    invoke-virtual {v10, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v10

    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    move-object/from16 v43, v1

    .end local v1    # "vf":Landroid/graphics/Rect;
    .local v43, "vf":Landroid/graphics/Rect;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 2570
    .local v1, "source":Landroid/view/InsetsSource;
    if-nez v1, :cond_c

    .line 2571
    move-object/from16 v44, v8

    goto :goto_a

    .line 2575
    :cond_c
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2576
    invoke-static {v10}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v17, :cond_d

    .line 2577
    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v44, v8

    const/16 v8, 0xd

    .end local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v44, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-ne v10, v8, :cond_f

    .line 2578
    sget-boolean v8, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_10

    .line 2579
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickReply: Avoid IME adjust for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2576
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v44, v8

    .end local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    goto :goto_9

    .line 2575
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v44, v8

    .line 2584
    .end local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_f
    :goto_9
    nop

    .line 2585
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v8

    .line 2584
    invoke-virtual {v1, v0, v8}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    .line 2567
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_10
    :goto_a
    add-int/lit8 v15, v15, -0x1

    move/from16 v10, v42

    move-object/from16 v1, v43

    move-object/from16 v8, v44

    goto :goto_8

    .end local v43    # "vf":Landroid/graphics/Rect;
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v1, "vf":Landroid/graphics/Rect;
    .restart local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_11
    move-object/from16 v43, v1

    move-object/from16 v44, v8

    .line 2587
    .end local v1    # "vf":Landroid/graphics/Rect;
    .end local v8    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .restart local v43    # "vf":Landroid/graphics/Rect;
    .restart local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    and-int/lit8 v1, v38, 0x1

    if-eqz v1, :cond_12

    iget v1, v2, Landroid/graphics/Insets;->left:I

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 2588
    .local v1, "left":I
    :goto_b
    and-int/lit8 v8, v38, 0x2

    if-eqz v8, :cond_13

    iget v8, v2, Landroid/graphics/Insets;->top:I

    goto :goto_c

    :cond_13
    const/4 v8, 0x0

    .line 2589
    .local v8, "top":I
    :goto_c
    and-int/lit8 v10, v38, 0x4

    if-eqz v10, :cond_14

    iget v10, v2, Landroid/graphics/Insets;->right:I

    goto :goto_d

    :cond_14
    const/4 v10, 0x0

    .line 2590
    .local v10, "right":I
    :goto_d
    and-int/lit8 v15, v38, 0x8

    if-eqz v15, :cond_15

    iget v15, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_e

    :cond_15
    const/4 v15, 0x0

    .line 2591
    .local v15, "bottom":I
    :goto_e
    move-object/from16 v45, v2

    .end local v2    # "insets":Landroid/graphics/Insets;
    .local v45, "insets":Landroid/graphics/Insets;
    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v10

    move/from16 v46, v10

    .end local v10    # "right":I
    .local v46, "right":I
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v15

    invoke-virtual {v3, v1, v8, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2592
    if-nez v13, :cond_19

    .line 2593
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2594
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v9

    if-eqz v2, :cond_17

    .line 2595
    iget-object v2, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    .line 2596
    invoke-virtual {v2, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    const/16 v10, 0xd

    invoke-virtual {v2, v10}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 2597
    .local v2, "source":Landroid/view/InsetsSource;
    if-eqz v2, :cond_16

    .line 2598
    move-object/from16 v47, v0

    const/4 v10, 0x0

    .end local v0    # "dfu":Landroid/graphics/Rect;
    .local v47, "dfu":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v10}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_f

    .line 2597
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .restart local v0    # "dfu":Landroid/graphics/Rect;
    :cond_16
    move-object/from16 v47, v0

    .end local v0    # "dfu":Landroid/graphics/Rect;
    .restart local v47    # "dfu":Landroid/graphics/Rect;
    goto :goto_f

    .line 2594
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .restart local v0    # "dfu":Landroid/graphics/Rect;
    :cond_17
    move-object/from16 v47, v0

    .line 2601
    .end local v0    # "dfu":Landroid/graphics/Rect;
    .restart local v47    # "dfu":Landroid/graphics/Rect;
    :goto_f
    const/16 v0, 0x30

    if-eq v5, v0, :cond_18

    .line 2602
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    goto :goto_10

    :cond_18
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2601
    :goto_10
    move-object/from16 v2, v43

    .end local v43    # "vf":Landroid/graphics/Rect;
    .local v2, "vf":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v10, v42

    goto :goto_12

    .line 2604
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .restart local v0    # "dfu":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_19
    move-object/from16 v47, v0

    move-object/from16 v2, v43

    .end local v0    # "dfu":Landroid/graphics/Rect;
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .restart local v47    # "dfu":Landroid/graphics/Rect;
    move/from16 v10, v42

    .end local v42    # "fl":I
    .local v10, "fl":I
    and-int/lit16 v0, v10, 0x100

    if-nez v0, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_11

    :cond_1a
    move-object v0, v3

    :goto_11
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2605
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2607
    :goto_12
    const/16 v0, 0x10

    if-eq v5, v0, :cond_1b

    .line 2608
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_13

    :cond_1b
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 2607
    :goto_13
    move/from16 v42, v8

    move-object/from16 v8, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .local v8, "cf":Landroid/graphics/Rect;
    .local v42, "top":I
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2609
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    move/from16 v41, v1

    move-object/from16 v1, p3

    .end local p3    # "dcf":Landroid/graphics/Rect;
    .local v1, "dcf":Landroid/graphics/Rect;
    .local v41, "left":I
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2614
    move/from16 p3, v15

    move/from16 v0, v40

    const/16 v15, 0x7db

    .end local v15    # "bottom":I
    .end local v40    # "type":I
    .local v0, "type":I
    .local p3, "bottom":I
    if-ne v0, v15, :cond_1c

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 2615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2616
    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v15

    move-object/from16 v19, v13

    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-static/range {v18 .. v23}, Lcom/android/server/wm/OpQuickReplyInjector;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v13, 0x0

    goto :goto_14

    .line 2617
    :cond_1c
    if-eqz v17, :cond_1d

    .line 2618
    const/4 v13, 0x0

    iput v13, v8, Landroid/graphics/Rect;->top:I

    goto :goto_14

    .line 2617
    :cond_1d
    const/4 v13, 0x0

    .line 2624
    :goto_14
    const/16 v15, 0x7f6

    if-ne v0, v15, :cond_1e

    .line 2625
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v13, "ScreenDecorOverlayExpand"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    :cond_1e
    const/16 v13, 0x7d3

    if-ne v0, v13, :cond_20

    .line 2626
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "com.android.nfc"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 2627
    :cond_1f
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2628
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2629
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2633
    .end local v38    # "sidesToFit":I
    .end local v39    # "typesToFit":I
    .end local v41    # "left":I
    .end local v42    # "top":I
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v45    # "insets":Landroid/graphics/Insets;
    .end local v46    # "right":I
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .end local p3    # "bottom":I
    :cond_20
    move v13, v0

    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object/from16 v24, v37

    const/4 v0, 0x1

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_2f

    .end local v0    # "type":I
    .end local v8    # "cf":Landroid/graphics/Rect;
    .local v1, "vf":Landroid/graphics/Rect;
    .local v2, "cf":Landroid/graphics/Rect;
    .local v15, "type":I
    .local p3, "dcf":Landroid/graphics/Rect;
    :cond_21
    move-object v8, v2

    move v0, v15

    move-object v2, v1

    move-object/from16 v1, p3

    .end local v15    # "type":I
    .end local p3    # "dcf":Landroid/graphics/Rect;
    .restart local v0    # "type":I
    .local v1, "dcf":Landroid/graphics/Rect;
    .local v2, "vf":Landroid/graphics/Rect;
    .restart local v8    # "cf":Landroid/graphics/Rect;
    const/16 v13, 0x7db

    if-ne v0, v13, :cond_26

    .line 2634
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2635
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2636
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2637
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2639
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    iput v15, v3, Landroid/graphics/Rect;->bottom:I

    iput v15, v4, Landroid/graphics/Rect;->bottom:I

    .line 2641
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    iput v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 2642
    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_23

    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v13, v15, :cond_23

    invoke-direct {v11, v15}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 2645
    iget v13, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_22

    .line 2646
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    iput v13, v2, Landroid/graphics/Rect;->right:I

    iput v13, v8, Landroid/graphics/Rect;->right:I

    iput v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->right:I

    goto :goto_15

    .line 2648
    :cond_22
    const/4 v15, 0x1

    if-ne v13, v15, :cond_23

    .line 2649
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    iput v13, v2, Landroid/graphics/Rect;->left:I

    iput v13, v8, Landroid/graphics/Rect;->left:I

    iput v13, v3, Landroid/graphics/Rect;->left:I

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 2656
    :cond_23
    :goto_15
    iget v13, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v15, 0x4

    if-ne v13, v15, :cond_25

    .line 2657
    iget v13, v6, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2658
    .local v13, "rotation":I
    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v15}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v15

    .line 2659
    .local v15, "uimode":I
    invoke-direct {v11, v13, v15}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v18

    .line 2660
    invoke-direct {v11, v13, v15}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v19

    sub-int v18, v18, v19

    .line 2661
    .restart local v18    # "navHeightOffset":I
    if-lez v18, :cond_24

    .line 2662
    move/from16 v19, v13

    .end local v13    # "rotation":I
    .local v19, "rotation":I
    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v13, v18

    iput v13, v8, Landroid/graphics/Rect;->bottom:I

    .line 2663
    move/from16 p3, v15

    move-object/from16 v13, v37

    .end local v15    # "uimode":I
    .end local v37    # "sf":Landroid/graphics/Rect;
    .local v13, "sf":Landroid/graphics/Rect;
    .local p3, "uimode":I
    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v15, v18

    iput v15, v13, Landroid/graphics/Rect;->bottom:I

    .line 2664
    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v15, v18

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 2665
    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v15, v18

    iput v15, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_16

    .line 2661
    .end local v19    # "rotation":I
    .end local p3    # "uimode":I
    .local v13, "rotation":I
    .restart local v15    # "uimode":I
    .restart local v37    # "sf":Landroid/graphics/Rect;
    :cond_24
    move/from16 v19, v13

    move/from16 p3, v15

    move-object/from16 v13, v37

    .end local v15    # "uimode":I
    .end local v37    # "sf":Landroid/graphics/Rect;
    .local v13, "sf":Landroid/graphics/Rect;
    .restart local v19    # "rotation":I
    .restart local p3    # "uimode":I
    goto :goto_16

    .line 2656
    .end local v13    # "sf":Landroid/graphics/Rect;
    .end local v18    # "navHeightOffset":I
    .end local v19    # "rotation":I
    .end local p3    # "uimode":I
    .restart local v37    # "sf":Landroid/graphics/Rect;
    :cond_25
    move-object/from16 v13, v37

    .line 2670
    .end local v37    # "sf":Landroid/graphics/Rect;
    .restart local v13    # "sf":Landroid/graphics/Rect;
    :goto_16
    const/16 v15, 0x50

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move v13, v0

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2671
    .end local v13    # "sf":Landroid/graphics/Rect;
    .restart local v37    # "sf":Landroid/graphics/Rect;
    :cond_26
    move-object/from16 v13, v37

    .end local v37    # "sf":Landroid/graphics/Rect;
    .restart local v13    # "sf":Landroid/graphics/Rect;
    const/16 v15, 0x7ef

    if-ne v0, v15, :cond_29

    .line 2672
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2673
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2674
    const/16 v15, 0x10

    if-eq v5, v15, :cond_27

    .line 2675
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_17

    .line 2677
    :cond_27
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2679
    :goto_17
    const/16 v15, 0x30

    if-eq v5, v15, :cond_28

    .line 2680
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move v13, v0

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2682
    :cond_28
    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move v13, v0

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2684
    :cond_29
    const/16 v15, 0x7dd

    if-ne v0, v15, :cond_2a

    .line 2685
    invoke-direct {v11, v6, v4, v3, v8}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move v13, v0

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2686
    :cond_2a
    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v15, :cond_60

    const/16 v15, 0x7f8

    if-ne v0, v15, :cond_2b

    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move v13, v0

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v0, 0x1

    goto/16 :goto_2e

    .line 2707
    :cond_2b
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v1, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2708
    const/4 v15, 0x1

    if-lt v0, v15, :cond_2c

    const/16 v15, 0x63

    if-gt v0, v15, :cond_2c

    const/4 v15, 0x1

    goto :goto_18

    :cond_2c
    const/4 v15, 0x0

    .line 2710
    .local v15, "isAppWindow":Z
    :goto_18
    move/from16 v40, v0

    .end local v0    # "type":I
    .restart local v40    # "type":I
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v12, v0, :cond_2d

    .line 2711
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_19

    :cond_2d
    const/4 v0, 0x0

    :goto_19
    move/from16 v20, v0

    .line 2712
    .local v20, "topAtRest":Z
    if-eqz v15, :cond_30

    if-nez v20, :cond_30

    .line 2713
    and-int/lit8 v0, v24, 0x4

    if-nez v0, :cond_2e

    and-int/lit16 v0, v10, 0x400

    if-nez v0, :cond_2e

    const/high16 v0, 0x4000000

    and-int/2addr v0, v10

    if-nez v0, :cond_2e

    const/high16 v0, -0x80000000

    and-int v21, v10, v0

    if-nez v21, :cond_2e

    const/high16 v0, 0x20000

    and-int/2addr v0, v9

    if-nez v0, :cond_2e

    .line 2719
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2721
    :cond_2e
    const/high16 v0, 0x8000000

    and-int/2addr v0, v10

    if-nez v0, :cond_2f

    and-int/lit8 v0, v24, 0x2

    if-nez v0, :cond_2f

    const/high16 v21, -0x80000000

    and-int v0, v10, v21

    if-nez v0, :cond_31

    const/high16 v0, 0x20000

    and-int/2addr v0, v9

    if-nez v0, :cond_31

    .line 2726
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2727
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1a

    .line 2721
    :cond_2f
    const/high16 v21, -0x80000000

    goto :goto_1a

    .line 2712
    :cond_30
    const/high16 v21, -0x80000000

    .line 2731
    :cond_31
    :goto_1a
    const-string v0, "layoutWindowLw("

    if-eqz v32, :cond_43

    if-eqz v33, :cond_43

    .line 2732
    sget-boolean v36, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v36, :cond_32

    move-object/from16 v36, v1

    .end local v1    # "dcf":Landroid/graphics/Rect;
    .local v36, "dcf":Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .end local v36    # "dcf":Landroid/graphics/Rect;
    .restart local v1    # "dcf":Landroid/graphics/Rect;
    :cond_32
    move-object/from16 v36, v1

    .line 2737
    .end local v1    # "dcf":Landroid/graphics/Rect;
    .restart local v36    # "dcf":Landroid/graphics/Rect;
    :goto_1b
    move-object/from16 v1, p2

    if-eqz v1, :cond_33

    .line 2740
    const/16 v18, 0x1

    move-object/from16 v37, v13

    move-object/from16 v35, v36

    move/from16 v13, v40

    move/from16 v36, v15

    const/4 v15, 0x4

    .end local v15    # "isAppWindow":Z
    .end local v40    # "type":I
    .local v13, "type":I
    .local v35, "dcf":Landroid/graphics/Rect;
    .local v36, "isAppWindow":Z
    .restart local v37    # "sf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v43, v2

    move-object v2, v1

    .end local v2    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    move-object/from16 v1, p1

    move-object/from16 v41, v8

    move-object v8, v2

    .end local v8    # "cf":Landroid/graphics/Rect;
    .local v41, "cf":Landroid/graphics/Rect;
    move v2, v10

    move-object/from16 v38, v3

    .end local v3    # "df":Landroid/graphics/Rect;
    .local v38, "df":Landroid/graphics/Rect;
    move v3, v5

    move-object/from16 v39, v4

    .end local v4    # "pf":Landroid/graphics/Rect;
    .local v39, "pf":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    move v15, v5

    move-object/from16 v48, v26

    const/4 v12, 0x1

    .end local v5    # "adjust":I
    .end local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v15, "adjust":I
    .local v48, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move/from16 v5, v18

    move-object/from16 v30, v6

    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v30, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    move-object/from16 v6, v39

    move-object/from16 v49, v7

    move/from16 v12, v24

    move-object/from16 v24, v37

    .end local v37    # "sf":Landroid/graphics/Rect;
    .local v12, "sysUiFl":I
    .local v24, "sf":Landroid/graphics/Rect;
    move-object/from16 v7, v38

    move/from16 v21, v31

    .end local v31    # "sim":I
    .local v21, "sim":I
    move-object/from16 v8, v41

    move/from16 v31, v9

    .end local v9    # "pfl":I
    .local v31, "pfl":I
    move-object/from16 v9, v43

    move-object/from16 v34, v14

    move v14, v10

    .end local v10    # "fl":I
    .local v14, "fl":I
    .local v34, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v7, v30

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v6, v43

    move-object/from16 v1, v49

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2743
    .end local v12    # "sysUiFl":I
    .end local v21    # "sim":I
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v35    # "dcf":Landroid/graphics/Rect;
    .end local v38    # "df":Landroid/graphics/Rect;
    .end local v39    # "pf":Landroid/graphics/Rect;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .end local v43    # "vf":Landroid/graphics/Rect;
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .restart local v3    # "df":Landroid/graphics/Rect;
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .restart local v5    # "adjust":I
    .restart local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v8    # "cf":Landroid/graphics/Rect;
    .restart local v9    # "pfl":I
    .restart local v10    # "fl":I
    .local v13, "sf":Landroid/graphics/Rect;
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "isAppWindow":Z
    .local v24, "sysUiFl":I
    .restart local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v31, "sim":I
    .local v36, "dcf":Landroid/graphics/Rect;
    .restart local v40    # "type":I
    :cond_33
    move-object/from16 v43, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v30, v6

    move-object/from16 v49, v7

    move-object/from16 v41, v8

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object/from16 v35, v36

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move/from16 v36, v15

    move/from16 v13, v40

    move v15, v5

    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "df":Landroid/graphics/Rect;
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "adjust":I
    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v8    # "cf":Landroid/graphics/Rect;
    .end local v9    # "pfl":I
    .end local v10    # "fl":I
    .end local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v40    # "type":I
    .restart local v12    # "sysUiFl":I
    .local v13, "type":I
    .local v14, "fl":I
    .local v15, "adjust":I
    .restart local v21    # "sim":I
    .local v24, "sf":Landroid/graphics/Rect;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v31, "pfl":I
    .restart local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v35    # "dcf":Landroid/graphics/Rect;
    .local v36, "isAppWindow":Z
    .restart local v38    # "df":Landroid/graphics/Rect;
    .restart local v39    # "pf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    const/16 v0, 0x7f9

    if-eq v13, v0, :cond_39

    const/16 v0, 0x7e1

    if-ne v13, v0, :cond_34

    move-object/from16 v10, v30

    move-object/from16 v9, v38

    move-object/from16 v8, v39

    goto :goto_1e

    .line 2761
    :cond_34
    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    if-lt v13, v0, :cond_35

    const/16 v0, 0x7cf

    if-le v13, v0, :cond_37

    :cond_35
    const/16 v0, 0x7e4

    if-eq v13, v0, :cond_37

    const/16 v0, 0x7d9

    if-ne v13, v0, :cond_36

    goto :goto_1c

    :cond_36
    move-object/from16 v10, v30

    move-object/from16 v9, v38

    move-object/from16 v8, v39

    goto :goto_1d

    .line 2769
    :cond_37
    :goto_1c
    move-object/from16 v10, v30

    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v38

    .end local v38    # "df":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2770
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v8, v39

    .end local v39    # "pf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v7, v49

    goto/16 :goto_22

    .line 2761
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v38    # "df":Landroid/graphics/Rect;
    .restart local v39    # "pf":Landroid/graphics/Rect;
    :cond_38
    move-object/from16 v10, v30

    move-object/from16 v9, v38

    move-object/from16 v8, v39

    .line 2772
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v38    # "df":Landroid/graphics/Rect;
    .end local v39    # "pf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :goto_1d
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2773
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v7, v49

    goto :goto_22

    .line 2743
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v38    # "df":Landroid/graphics/Rect;
    .restart local v39    # "pf":Landroid/graphics/Rect;
    :cond_39
    move-object/from16 v10, v30

    move-object/from16 v9, v38

    move-object/from16 v8, v39

    .line 2750
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v38    # "df":Landroid/graphics/Rect;
    .end local v39    # "pf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :goto_1e
    if-eqz v28, :cond_3a

    .line 2751
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_1f

    :cond_3a
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_1f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 2752
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 2753
    if-eqz v28, :cond_3b

    .line 2754
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_20

    .line 2755
    :cond_3b
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_20
    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 2756
    if-eqz v28, :cond_3c

    .line 2757
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_21

    .line 2758
    :cond_3c
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_21
    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2760
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Laying out status bar window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v49

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_3d
    move-object/from16 v7, v49

    .line 2776
    :goto_22
    and-int/lit16 v0, v14, 0x400

    if-nez v0, :cond_41

    .line 2777
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2778
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v6, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .local v6, "cf":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 2782
    .end local v6    # "cf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    :cond_3e
    move-object/from16 v6, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .restart local v6    # "cf":Landroid/graphics/Rect;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_40

    const/16 v0, 0x10

    if-eq v15, v0, :cond_3f

    goto :goto_23

    .line 2786
    :cond_3f
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 2784
    :cond_40
    :goto_23
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 2793
    .end local v6    # "cf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    :cond_41
    move-object/from16 v6, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .restart local v6    # "cf":Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2795
    :goto_24
    invoke-direct {v11, v12, v14, v6, v10}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2796
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_42

    const/16 v0, 0x30

    if-eq v15, v0, :cond_42

    .line 2798
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v5, v43

    .end local v43    # "vf":Landroid/graphics/Rect;
    .local v5, "vf":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v7

    move-object v7, v10

    const/4 v0, 0x1

    move-object v10, v8

    move-object v8, v6

    move-object v6, v5

    goto/16 :goto_2f

    .line 2796
    .end local v5    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_42
    move-object/from16 v5, v43

    .line 2800
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v5    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v7

    move-object v7, v10

    const/4 v0, 0x1

    move-object v10, v8

    move-object v8, v6

    move-object v6, v5

    goto/16 :goto_2f

    .line 2731
    .end local v12    # "sysUiFl":I
    .end local v21    # "sim":I
    .end local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v35    # "dcf":Landroid/graphics/Rect;
    .end local v36    # "isAppWindow":Z
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v1    # "dcf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .restart local v3    # "df":Landroid/graphics/Rect;
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .local v5, "adjust":I
    .local v6, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v8, "cf":Landroid/graphics/Rect;
    .local v9, "pfl":I
    .local v10, "fl":I
    .local v13, "sf":Landroid/graphics/Rect;
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "isAppWindow":Z
    .local v24, "sysUiFl":I
    .restart local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v31, "sim":I
    .restart local v40    # "type":I
    :cond_43
    move-object/from16 v35, v1

    move-object/from16 v34, v14

    move/from16 v36, v15

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move v15, v5

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move/from16 v13, v40

    move-object v5, v2

    move-object v9, v3

    move-object v10, v6

    move-object v6, v8

    move-object v8, v4

    .line 2803
    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "df":Landroid/graphics/Rect;
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v40    # "type":I
    .local v5, "vf":Landroid/graphics/Rect;
    .local v6, "cf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v12    # "sysUiFl":I
    .local v13, "type":I
    .local v14, "fl":I
    .local v15, "adjust":I
    .restart local v21    # "sim":I
    .local v24, "sf":Landroid/graphics/Rect;
    .local v31, "pfl":I
    .restart local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v35    # "dcf":Landroid/graphics/Rect;
    .restart local v36    # "isAppWindow":Z
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    if-nez v32, :cond_4e

    and-int/lit16 v1, v12, 0x600

    if-eqz v1, :cond_44

    move-object v1, v7

    move-object v7, v10

    move-object v10, v8

    move-object v8, v6

    move-object v6, v5

    goto/16 :goto_28

    .line 2894
    :cond_44
    move-object/from16 v4, p2

    if-eqz v4, :cond_46

    .line 2895
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): attached to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_45
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move-object/from16 v4, p2

    move-object/from16 v43, v5

    .end local v5    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    move/from16 v5, v18

    move-object/from16 v41, v6

    .end local v6    # "cf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    move-object v6, v8

    move-object/from16 v50, v7

    move-object v7, v9

    move-object/from16 v51, v8

    .end local v8    # "pf":Landroid/graphics/Rect;
    .local v51, "pf":Landroid/graphics/Rect;
    move-object/from16 v8, v41

    move-object/from16 v52, v9

    .end local v9    # "df":Landroid/graphics/Rect;
    .local v52, "df":Landroid/graphics/Rect;
    move-object/from16 v9, v43

    move-object/from16 v30, v10

    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v7, v30

    move-object/from16 v6, v43

    move-object/from16 v1, v50

    move-object/from16 v10, v51

    move-object/from16 v9, v52

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2902
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .end local v43    # "vf":Landroid/graphics/Rect;
    .end local v51    # "pf":Landroid/graphics/Rect;
    .end local v52    # "df":Landroid/graphics/Rect;
    .restart local v5    # "vf":Landroid/graphics/Rect;
    .restart local v6    # "cf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_46
    move-object/from16 v43, v5

    move-object/from16 v41, v6

    move-object/from16 v50, v7

    move-object/from16 v51, v8

    move-object/from16 v52, v9

    move-object/from16 v30, v10

    .end local v5    # "vf":Landroid/graphics/Rect;
    .end local v6    # "cf":Landroid/graphics/Rect;
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    .restart local v51    # "pf":Landroid/graphics/Rect;
    .restart local v52    # "df":Landroid/graphics/Rect;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): normal window"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v50

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_47
    move-object/from16 v1, v50

    .line 2906
    :goto_25
    const/16 v0, 0x7f9

    if-ne v13, v0, :cond_48

    .line 2910
    move-object/from16 v7, v30

    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v7, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v8, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .local v8, "cf":Landroid/graphics/Rect;
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2911
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v52

    .end local v52    # "df":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2912
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v10, v51

    .end local v51    # "pf":Landroid/graphics/Rect;
    .local v10, "pf":Landroid/graphics/Rect;
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v6, v43

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2913
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v8    # "cf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "pf":Landroid/graphics/Rect;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    .restart local v51    # "pf":Landroid/graphics/Rect;
    .restart local v52    # "df":Landroid/graphics/Rect;
    :cond_48
    move-object/from16 v7, v30

    move-object/from16 v8, v41

    move-object/from16 v10, v51

    move-object/from16 v9, v52

    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .end local v51    # "pf":Landroid/graphics/Rect;
    .end local v52    # "df":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v8    # "cf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "pf":Landroid/graphics/Rect;
    const/16 v0, 0x7d5

    if-eq v13, v0, :cond_4d

    const/16 v0, 0x7d3

    if-ne v13, v0, :cond_49

    move-object/from16 v6, v43

    goto :goto_27

    .line 2919
    :cond_49
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2920
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2921
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2922
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    .line 2923
    :cond_4a
    const/16 v0, 0x10

    if-eq v15, v0, :cond_4b

    .line 2924
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2925
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    .line 2927
    :cond_4b
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2928
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2930
    :goto_26
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_4c

    const/16 v0, 0x30

    if-eq v15, v0, :cond_4c

    .line 2932
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v6, v43

    .end local v43    # "vf":Landroid/graphics/Rect;
    .local v6, "vf":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2930
    .end local v6    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_4c
    move-object/from16 v6, v43

    .line 2934
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v6    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2913
    .end local v6    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_4d
    move-object/from16 v6, v43

    .line 2915
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v6    # "vf":Landroid/graphics/Rect;
    :goto_27
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2916
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2917
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2803
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v5    # "vf":Landroid/graphics/Rect;
    .local v6, "cf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_4e
    move-object v1, v7

    move-object v7, v10

    move-object v10, v8

    move-object v8, v6

    move-object v6, v5

    .line 2806
    .end local v5    # "vf":Landroid/graphics/Rect;
    .local v6, "vf":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v8, "cf":Landroid/graphics/Rect;
    .local v10, "pf":Landroid/graphics/Rect;
    :goto_28
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    :cond_4f
    const/16 v0, 0x7f9

    if-eq v13, v0, :cond_5c

    const/16 v0, 0x7e1

    if-ne v13, v0, :cond_50

    const/4 v0, 0x1

    goto/16 :goto_2c

    .line 2821
    :cond_50
    const/16 v0, 0x7e3

    if-eq v13, v0, :cond_5b

    const/16 v0, 0x7e8

    if-ne v13, v0, :cond_51

    const/4 v0, 0x1

    goto/16 :goto_2b

    .line 2830
    :cond_51
    const/16 v0, 0x7df

    if-eq v13, v0, :cond_52

    const/16 v0, 0x7f4

    if-eq v13, v0, :cond_52

    const/16 v0, 0x901

    if-eq v13, v0, :cond_52

    const/16 v0, 0x900

    if-eq v13, v0, :cond_52

    const/16 v0, 0x8ff

    if-eq v13, v0, :cond_52

    const/16 v0, 0x903

    if-eq v13, v0, :cond_52

    const/16 v0, 0x902

    if-ne v13, v0, :cond_53

    :cond_52
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_53

    .line 2844
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2845
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2846
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto/16 :goto_2d

    .line 2847
    :cond_53
    const/16 v0, 0x7e5

    if-ne v13, v0, :cond_54

    .line 2849
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2850
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2851
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto/16 :goto_2d

    .line 2852
    :cond_54
    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_56

    const/16 v0, 0x7f8

    if-eq v13, v0, :cond_55

    const/16 v0, 0x7d5

    if-eq v13, v0, :cond_55

    const/16 v0, 0x7f2

    if-eq v13, v0, :cond_55

    const/16 v0, 0x7f1

    if-eq v13, v0, :cond_55

    const/4 v0, 0x1

    if-lt v13, v0, :cond_57

    const/16 v2, 0x7cf

    if-gt v13, v2, :cond_57

    goto :goto_29

    :cond_55
    const/4 v0, 0x1

    .line 2865
    :goto_29
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2866
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2867
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2d

    .line 2852
    :cond_56
    const/4 v0, 0x1

    .line 2868
    :cond_57
    and-int/lit16 v2, v12, 0x400

    if-eqz v2, :cond_5a

    .line 2869
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2870
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2874
    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v2, :cond_59

    const/16 v2, 0x10

    if-eq v15, v2, :cond_58

    goto :goto_2a

    .line 2878
    :cond_58
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2d

    .line 2876
    :cond_59
    :goto_2a
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2d

    .line 2881
    :cond_5a
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2882
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2883
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2d

    .line 2821
    :cond_5b
    const/4 v0, 0x1

    .line 2823
    :goto_2b
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2824
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2825
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Laying out navigation bar window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 2810
    :cond_5c
    const/4 v0, 0x1

    .line 2811
    :goto_2c
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2812
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2813
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2814
    if-eqz v28, :cond_5d

    .line 2815
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 2816
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 2817
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 2820
    :cond_5d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Laying out IN_SCREEN status bar window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_5e
    :goto_2d
    invoke-direct {v11, v12, v14, v8, v7}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2888
    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v2, :cond_5f

    const/16 v2, 0x30

    if-eq v15, v2, :cond_5f

    .line 2890
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2f

    .line 2892
    :cond_5f
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 2686
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v12    # "sysUiFl":I
    .end local v15    # "adjust":I
    .end local v20    # "topAtRest":Z
    .end local v21    # "sim":I
    .end local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v35    # "dcf":Landroid/graphics/Rect;
    .end local v36    # "isAppWindow":Z
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v0    # "type":I
    .restart local v1    # "dcf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .restart local v3    # "df":Landroid/graphics/Rect;
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .local v5, "adjust":I
    .local v6, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "pfl":I
    .local v10, "fl":I
    .local v13, "sf":Landroid/graphics/Rect;
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v24, "sysUiFl":I
    .restart local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v31, "sim":I
    :cond_60
    move-object/from16 v35, v1

    move v15, v5

    move-object v1, v7

    move-object/from16 v34, v14

    move/from16 v12, v24

    move-object/from16 v48, v26

    move/from16 v21, v31

    move-object v7, v6

    move/from16 v31, v9

    move v14, v10

    move-object/from16 v24, v13

    move v13, v0

    move-object v6, v2

    move-object v9, v3

    move-object v10, v4

    const/4 v0, 0x1

    .line 2687
    .end local v0    # "type":I
    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "df":Landroid/graphics/Rect;
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "adjust":I
    .end local v26    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v6, "vf":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "pf":Landroid/graphics/Rect;
    .restart local v12    # "sysUiFl":I
    .local v13, "type":I
    .local v14, "fl":I
    .restart local v15    # "adjust":I
    .restart local v21    # "sim":I
    .local v24, "sf":Landroid/graphics/Rect;
    .local v31, "pfl":I
    .restart local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v35    # "dcf":Landroid/graphics/Rect;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_2e
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2688
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2689
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2690
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2692
    const/16 v2, 0x10

    if-ne v15, v2, :cond_61

    .line 2695
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_63

    .line 2696
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2f

    .line 2699
    :cond_61
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_62

    .line 2700
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 2702
    :cond_62
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_63

    .line 2703
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 2947
    :cond_63
    :goto_2f
    move-object/from16 v5, p1

    invoke-static {v5, v7}, Lcom/android/server/wm/OpScreenCompatInjector;->resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I

    move-result v4

    .line 2949
    .local v4, "cutoutMode":I
    move-object/from16 v3, p2

    if-eqz v3, :cond_64

    if-nez v32, :cond_64

    move v2, v0

    goto :goto_30

    :cond_64
    const/4 v2, 0x0

    :goto_30
    move/from16 v18, v2

    .line 2950
    .local v18, "attachedInParent":Z
    and-int/lit16 v2, v14, 0x400

    if-nez v2, :cond_66

    and-int/lit8 v2, v16, 0x4

    if-nez v2, :cond_66

    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v0, 0x2

    if-ne v2, v0, :cond_65

    .line 2953
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v2

    if-nez v2, :cond_65

    goto :goto_31

    :cond_65
    const/4 v0, 0x0

    goto :goto_32

    :cond_66
    :goto_31
    const/4 v0, 0x1

    :goto_32
    move/from16 v19, v0

    .line 2955
    .local v19, "requestedFullscreen":Z
    and-int/lit8 v0, v16, 0x2

    if-nez v0, :cond_68

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_67

    .line 2958
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_33

    :cond_67
    const/4 v0, 0x0

    goto :goto_34

    :cond_68
    :goto_33
    const/4 v0, 0x1

    :goto_34
    move/from16 v20, v0

    .line 2963
    .local v20, "requestedHideNavigation":Z
    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_69

    if-eqz v32, :cond_69

    const/4 v0, 0x1

    if-eq v13, v0, :cond_69

    const/4 v0, 0x1

    goto :goto_35

    :cond_69
    const/4 v0, 0x0

    :goto_35
    move/from16 v22, v0

    .line 2967
    .local v22, "floatingInScreenWindow":Z
    const/4 v0, 0x3

    if-eq v4, v0, :cond_75

    .line 2968
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 2969
    .local v0, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2970
    const/4 v2, 0x1

    if-ne v4, v2, :cond_6b

    .line 2971
    iget v2, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v5, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    if-ge v2, v5, :cond_6a

    .line 2972
    const/high16 v2, -0x80000000

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2973
    const v5, 0x7fffffff

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_36

    .line 2975
    :cond_6a
    const/high16 v2, -0x80000000

    const v5, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2976
    iput v5, v0, Landroid/graphics/Rect;->right:I

    goto :goto_36

    .line 2970
    :cond_6b
    const/high16 v2, -0x80000000

    .line 2980
    :goto_36
    if-eqz v32, :cond_6d

    if-eqz v33, :cond_6d

    if-nez v19, :cond_6d

    if-eqz v4, :cond_6c

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6d

    .line 2987
    :cond_6c
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2989
    :cond_6d
    if-eqz v32, :cond_72

    if-eqz v33, :cond_72

    if-nez v20, :cond_72

    if-eqz v4, :cond_6e

    const/4 v5, 0x1

    if-ne v4, v5, :cond_72

    goto :goto_37

    :cond_6e
    const/4 v5, 0x1

    .line 2993
    :goto_37
    iget v2, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-eq v2, v5, :cond_71

    const/4 v5, 0x2

    if-eq v2, v5, :cond_70

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6f

    goto :goto_38

    .line 2995
    :cond_6f
    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2996
    goto :goto_38

    .line 2998
    :cond_70
    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2999
    goto :goto_38

    .line 3001
    :cond_71
    const/high16 v2, -0x80000000

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3005
    :cond_72
    :goto_38
    const/16 v5, 0x7db

    if-ne v13, v5, :cond_73

    iget v2, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_73

    .line 3007
    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3014
    :cond_73
    if-nez v18, :cond_74

    if-nez v22, :cond_74

    .line 3015
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3016
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3017
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    move-object/from16 v5, v48

    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_39

    .line 3014
    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_74
    move-object/from16 v5, v48

    .line 3021
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_39
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_3a

    .line 2967
    .end local v0    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_75
    move-object/from16 v5, v48

    .line 3032
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_3a
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpScreenCompatInjector;->isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 3033
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3039
    :cond_76
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_77

    const/16 v0, 0x7da

    if-eq v13, v0, :cond_77

    .line 3040
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_77

    .line 3041
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 3042
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 3043
    const/16 v0, 0x7dd

    if-eq v13, v0, :cond_77

    .line 3044
    const/16 v0, -0x2710

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 3045
    const/16 v0, 0x2710

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 3049
    :cond_77
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_78

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute frame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": sim=#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attach="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3052
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v23, 0x0

    aput-object v2, v3, v23

    const-string v2, " flags=0x%08x"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " df="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dcf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3049
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :cond_78
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 3059
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 3064
    :cond_79
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    move-object v3, v6

    move/from16 v26, v4

    .end local v4    # "cutoutMode":I
    .local v26, "cutoutMode":I
    move-object/from16 v4, v24

    move-object/from16 v27, v5

    move-object/from16 v41, v8

    move-object/from16 v38, v9

    const/16 v9, 0x7db

    move-object/from16 v8, p1

    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v8    # "cf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .local v27, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v38    # "df":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    move-object/from16 v5, v23

    move-object/from16 v23, v6

    .end local v6    # "vf":Landroid/graphics/Rect;
    .local v23, "vf":Landroid/graphics/Rect;
    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/OpScreenCompatInjector;->resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    .line 3066
    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 3069
    if-ne v13, v9, :cond_7a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3070
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 3071
    invoke-direct {v11, v8, v7}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 3073
    :cond_7a
    const/16 v0, 0x7ef

    if-ne v13, v0, :cond_7b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 3074
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3075
    invoke-direct {v11, v8, v7}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 3077
    :cond_7b
    return-void

    .line 2459
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v10    # "pf":Landroid/graphics/Rect;
    .end local v12    # "sysUiFl":I
    .end local v13    # "type":I
    .end local v14    # "fl":I
    .end local v15    # "adjust":I
    .end local v16    # "requestedSysUiFl":I
    .end local v17    # "isQuickReplyWin":Z
    .end local v18    # "attachedInParent":Z
    .end local v19    # "requestedFullscreen":Z
    .end local v20    # "requestedHideNavigation":Z
    .end local v21    # "sim":I
    .end local v22    # "floatingInScreenWindow":Z
    .end local v23    # "vf":Landroid/graphics/Rect;
    .end local v24    # "sf":Landroid/graphics/Rect;
    .end local v25    # "forceNoNavBar":Z
    .end local v26    # "cutoutMode":I
    .end local v27    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v28    # "hasNavBar":Z
    .end local v29    # "blockAdjustIME":Z
    .end local v31    # "pfl":I
    .end local v32    # "layoutInScreen":Z
    .end local v33    # "layoutInsetDecor":Z
    .end local v34    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v35    # "dcf":Landroid/graphics/Rect;
    .end local v38    # "df":Landroid/graphics/Rect;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .local p3, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_7c
    move-object/from16 v0, p3

    move-object v8, v12

    .line 2461
    :goto_3b
    return-void
.end method

.method public navigationBarCanMove()Z
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .locals 2
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .line 3817
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    .line 3818
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 3819
    return v1

    .line 3820
    :cond_0
    if-ne p3, v1, :cond_1

    .line 3821
    const/4 v0, 0x2

    return v0

    .line 3824
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .locals 2

    .line 3610
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3619
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 9

    .line 3441
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 3443
    .local v0, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3444
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 3445
    .local v2, "portraitRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 3446
    .local v3, "upsideDownRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 3447
    .local v4, "landscapeRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    .line 3448
    .local v5, "seascapeRotation":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    .line 3450
    .local v6, "uiMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3451
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x105024a

    .line 3453
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3454
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050249

    .line 3456
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    goto :goto_0

    .line 3458
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3465
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501af

    .line 3467
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3468
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501b1

    .line 3470
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3473
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ac

    .line 3475
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3476
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ad

    .line 3478
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3481
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x10501b4

    .line 3485
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3504
    const v7, 0x10e008e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 3505
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 3506
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 3507
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 3508
    invoke-virtual {v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    .line 3509
    const v7, 0x11100a7

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 3510
    const v7, 0x11100a4

    .line 3511
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 3514
    const v7, 0x10501ae

    .line 3515
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3516
    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 3518
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 3522
    sget-boolean v7, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    if-eqz v7, :cond_1

    .line 3523
    invoke-static {}, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->onConfigurationChanged()V

    .line 3529
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    .line 3531
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->onConfigurationChanged()V

    .line 3533
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1
    .param p1, "lockTaskState"    # I

    .line 4606
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 4607
    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 1

    .line 3432
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3433
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 3434
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 3435
    return-void
.end method

.method onPowerKeyDown(Z)V
    .locals 6
    .param p1, "isScreenOn"    # Z

    .line 4584
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 4585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4586
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4584
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 4587
    .local v0, "panic":Z
    if-eqz v0, :cond_0

    .line 4588
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4590
    :cond_0
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4593
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 4594
    return-void
.end method

.method release()V
    .locals 3

    .line 4789
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4790
    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_4

    .line 1515
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1516
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4

    .line 1517
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_2

    .line 1510
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1511
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1512
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    .line 1505
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1506
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1507
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1508
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1520
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_5

    .line 1521
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1523
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1524
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .locals 1

    .line 3997
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 3998
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 3999
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1054
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1055
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1056
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1057
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1058
    monitor-exit v0

    .line 1059
    return-void

    .line 1058
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

    .line 1042
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1044
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1045
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1046
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1047
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1048
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .locals 19
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "transit"    # I

    .line 1563
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectAnimation in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": transit="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const v5, 0x10a002d

    const v6, 0x10a002e

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v1, v3, :cond_4

    .line 1566
    if-eq v2, v10, :cond_3

    if-ne v2, v9, :cond_1

    goto :goto_0

    .line 1569
    :cond_1
    if-eq v2, v11, :cond_2

    if-ne v2, v7, :cond_22

    .line 1571
    :cond_2
    return v5

    .line 1568
    :cond_3
    :goto_0
    return v6

    .line 1573
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const v12, 0x10a0029

    const v13, 0x10a002b

    const v14, 0x10a0026

    const v15, 0x10a002a

    const v16, 0x10a0027

    const v17, 0x10a002c

    if-ne v1, v3, :cond_12

    .line 1574
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_5

    .line 1575
    return v8

    .line 1578
    :cond_5
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v3, v9, :cond_a

    .line 1579
    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_6

    goto :goto_1

    .line 1586
    :cond_6
    if-eq v2, v11, :cond_7

    if-ne v2, v7, :cond_22

    .line 1588
    :cond_7
    return v14

    .line 1581
    :cond_8
    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1582
    const v3, 0x10a0028

    return v3

    .line 1584
    :cond_9
    return v16

    .line 1590
    :cond_a
    if-ne v3, v10, :cond_e

    .line 1591
    if-eq v2, v10, :cond_d

    if-ne v2, v9, :cond_b

    goto :goto_2

    .line 1594
    :cond_b
    if-eq v2, v11, :cond_c

    if-ne v2, v7, :cond_22

    .line 1596
    :cond_c
    return v13

    .line 1593
    :cond_d
    :goto_2
    return v17

    .line 1598
    :cond_e
    if-ne v3, v11, :cond_22

    .line 1599
    if-eq v2, v10, :cond_11

    if-ne v2, v9, :cond_f

    goto :goto_3

    .line 1602
    :cond_f
    if-eq v2, v11, :cond_10

    if-ne v2, v7, :cond_22

    .line 1604
    :cond_10
    return v12

    .line 1601
    :cond_11
    :goto_3
    return v15

    .line 1607
    :cond_12
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_13

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_22

    .line 1608
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_14

    .line 1609
    return v8

    .line 1612
    :cond_14
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_15

    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    goto :goto_4

    :cond_15
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1614
    .local v3, "pos":I
    :goto_4
    if-eq v2, v10, :cond_17

    if-ne v2, v9, :cond_16

    goto :goto_5

    :cond_16
    move/from16 v18, v8

    goto :goto_6

    :cond_17
    :goto_5
    move/from16 v18, v11

    .line 1615
    .local v18, "isExitOrHide":Z
    :goto_6
    if-eq v2, v11, :cond_19

    if-ne v2, v7, :cond_18

    goto :goto_7

    :cond_18
    move v7, v8

    goto :goto_8

    :cond_19
    :goto_7
    move v7, v11

    .line 1617
    .local v7, "isEnterOrShow":Z
    :goto_8
    if-eq v3, v11, :cond_20

    if-eq v3, v10, :cond_1e

    if-eq v3, v9, :cond_1c

    const/16 v9, 0x8

    if-eq v3, v9, :cond_1a

    goto :goto_9

    .line 1640
    :cond_1a
    if-eqz v18, :cond_1b

    .line 1641
    return v6

    .line 1642
    :cond_1b
    if-eqz v7, :cond_22

    .line 1643
    return v5

    .line 1633
    :cond_1c
    if-eqz v18, :cond_1d

    .line 1634
    return v16

    .line 1635
    :cond_1d
    if-eqz v7, :cond_22

    .line 1636
    return v14

    .line 1626
    :cond_1e
    if-eqz v18, :cond_1f

    .line 1627
    return v17

    .line 1628
    :cond_1f
    if-eqz v7, :cond_22

    .line 1629
    return v13

    .line 1619
    :cond_20
    if-eqz v18, :cond_21

    .line 1620
    return v15

    .line 1621
    :cond_21
    if-eqz v7, :cond_22

    .line 1622
    return v12

    .line 1649
    .end local v3    # "pos":I
    .end local v7    # "isEnterOrShow":Z
    .end local v18    # "isExitOrHide":Z
    :cond_22
    :goto_9
    const/4 v3, 0x5

    if-ne v2, v3, :cond_25

    .line 1650
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1651
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1654
    const/4 v3, -0x1

    return v3

    .line 1656
    :cond_23
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_24

    const-string v3, "**** STARTING EXIT"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_24
    const v3, 0x10a0013

    return v3

    .line 1661
    :cond_25
    return v8
.end method

.method public setAwake(Z)V
    .locals 0
    .param p1, "awake"    # Z

    .line 1014
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 1015
    return-void
.end method

.method public setDockMode(I)V
    .locals 0
    .param p1, "dockMode"    # I

    .line 944
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 945
    return-void
.end method

.method setForceShowSystemBars(Z)V
    .locals 0
    .param p1, "forceShowSystemBars"    # Z

    .line 955
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 956
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 0
    .param p1, "forwardedInsets"    # Landroid/graphics/Insets;

    .line 3807
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 3808
    return-void
.end method

.method public setHasNavigationBar(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHasNavigationBar to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 968
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .locals 1
    .param p1, "plugged"    # Z

    .line 909
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 910
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .locals 3
    .param p1, "plugged"    # Z
    .param p2, "force"    # Z

    .line 913
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_1

    .line 914
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 915
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 916
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 918
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 919
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 921
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setLidState(I)V
    .locals 0
    .param p1, "lidState"    # I

    .line 1006
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 1007
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 0
    .param p1, "persistentVrModeEnabled"    # Z

    .line 936
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 937
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .locals 2
    .param p1, "pointerLocationEnabled"    # Z

    .line 4718
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4719
    return-void

    .line 4722
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 4723
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 4722
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4724
    return-void
.end method

.method simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "insetsState"    # Landroid/view/InsetsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1897
    .local p3, "barContentFrames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1898
    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 1899
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 1900
    new-instance v0, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v0}, Lcom/android/server/wm/WindowFrames;-><init>()V

    .line 1901
    .local v0, "simulatedWindowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 1902
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1909
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 1910
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1915
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 1917
    return-void
.end method

.method public stopLongshotConnection()V
    .locals 2

    .line 4769
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 4770
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->stopLongshotConnection(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/server/wm/WindowState;)V

    .line 4772
    :cond_0
    return-void
.end method

.method public switchUser()V
    .locals 0

    .line 3425
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3426
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 902
    :cond_0
    return-void
.end method

.method public takeScreenshot(II)V
    .locals 11
    .param p1, "screenshotType"    # I
    .param p2, "source"    # I

    .line 4618
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_2

    .line 4621
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4622
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4623
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    .line 4624
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    .line 4625
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_1

    move v8, v7

    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 4621
    move v7, v0

    move v10, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/OpDisplayPolicyInjector;->takeScreenshot(Lcom/android/server/wm/WindowState;Landroid/content/Context;ZLcom/android/internal/util/ScreenshotHelper;ZIZZLandroid/os/Handler;I)V

    .line 4629
    :cond_2
    return-void
.end method

.method topAppHidesStatusBar()Z
    .locals 8

    .line 3404
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3407
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3408
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 3409
    .local v3, "fl":I
    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 3410
    .local v2, "sysui":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 3411
    invoke-virtual {v4, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 3412
    .local v4, "request":Landroid/view/InsetsSource;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 3413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frame: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attr: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " request: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    :cond_1
    and-int/lit16 v5, v3, 0x400

    if-nez v5, :cond_3

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    .line 3418
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 3416
    :goto_1
    return v1

    .line 3405
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "sysui":I
    .end local v3    # "fl":I
    .end local v4    # "request":Landroid/view/InsetsSource;
    :cond_4
    :goto_2
    return v1
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 3

    .line 3536
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3537
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_0

    const v1, 0x11100a5

    .line 3539
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 3540
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    .line 3541
    return-void
.end method

.method updateHideNavInputEventReceiver()V
    .locals 12

    .line 1999
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 2000
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 2002
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 2004
    .local v3, "navControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    instance-of v4, v3, Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 2005
    .local v4, "navControllingWin":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v4, :cond_2

    .line 2006
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 2007
    .local v5, "requestedState":Landroid/view/InsetsState;
    :goto_2
    if-eqz v5, :cond_3

    .line 2008
    invoke-virtual {v5, v1}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    goto :goto_3

    .line 2009
    :cond_3
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v6

    :goto_3
    nop

    .line 2010
    .local v6, "navVisible":Z
    const/4 v7, 0x0

    if-eqz v4, :cond_4

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->behavior:I

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move v1, v7

    .line 2015
    .local v1, "showBarsByTouch":Z
    :goto_4
    const-string v8, "WindowManager"

    if-nez v6, :cond_6

    if-nez v1, :cond_5

    goto :goto_5

    .line 2023
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2024
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 2025
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 2024
    const-string v11, "nav_input_consumer"

    invoke-virtual {v2, v9, v11, v10}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2028
    const-string v2, "nav_input_consumer created."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_6

    .line 2016
    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v7, :cond_7

    .line 2017
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 2018
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2019
    invoke-virtual {v7, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2018
    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2020
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2021
    const-string v2, "nav_input_consumer dismissed."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :cond_7
    :goto_6
    return-void
.end method

.method updateSystemUiVisibilityLw()I
    .locals 32

    .line 4004
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4005
    :cond_0
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    nop

    .line 4006
    .local v0, "winCandidate":Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 4007
    return v6

    .line 4012
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_6

    .line 4017
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    .line 4018
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    move v1, v6

    .line 4019
    .local v1, "lastFocusCanReceiveKeys":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4020
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4021
    :cond_4
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_2
    move-object v0, v2

    .line 4022
    if-nez v0, :cond_5

    .line 4023
    return v6

    .line 4022
    :cond_5
    move-object/from16 v16, v0

    goto :goto_3

    .line 4012
    .end local v1    # "lastFocusCanReceiveKeys":Z
    :cond_6
    move-object/from16 v16, v0

    .line 4026
    .end local v0    # "winCandidate":Lcom/android/server/wm/WindowState;
    .local v16, "winCandidate":Lcom/android/server/wm/WindowState;
    :goto_3
    move-object/from16 v14, v16

    .line 4028
    .local v14, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 4030
    const/4 v0, 0x0

    invoke-static {v14, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 4033
    .local v0, "tmpVisibility":I
    iget-boolean v1, v15, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v1, :cond_7

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v1

    iget v2, v15, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v1, v2, :cond_7

    .line 4034
    const/4 v1, 0x7

    .line 4035
    invoke-static {v14, v1}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    move v11, v0

    goto :goto_4

    .line 4038
    :cond_7
    move v11, v0

    .end local v0    # "tmpVisibility":I
    .local v11, "tmpVisibility":I
    :goto_4
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v6, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v10

    .line 4040
    .local v10, "fullscreenAppearance":I
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v6, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v9

    .line 4042
    .local v9, "dockedAppearance":I
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 4043
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v17

    .line 4044
    .local v17, "inSplitScreen":Z
    const/4 v0, 0x3

    if-eqz v17, :cond_8

    .line 4045
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    goto :goto_5

    .line 4048
    :cond_8
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 4050
    :goto_5
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v17, :cond_9

    const/4 v2, 0x4

    goto :goto_6

    .line 4051
    :cond_9
    move v2, v7

    :goto_6
    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 4050
    invoke-virtual {v1, v2, v6, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 4053
    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4054
    invoke-direct {v15, v14, v1, v11}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v8

    .line 4055
    .local v8, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 4056
    .local v12, "visibility":I
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4057
    .local v5, "navColorWin":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_a

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v1, :cond_a

    move v13, v7

    goto :goto_7

    :cond_a
    move v13, v6

    .line 4059
    .local v13, "isNavbarColorManagedByIme":Z
    :goto_7
    invoke-static {v12}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v1

    and-int/lit8 v18, v1, 0x3

    .line 4061
    .local v18, "opaqueAppearance":I
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 4064
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4062
    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "navColorWin":Lcom/android/server/wm/WindowState;
    .local v19, "navColorWin":Lcom/android/server/wm/WindowState;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    or-int v0, v0, v18

    goto :goto_8

    .line 4065
    .end local v19    # "navColorWin":Lcom/android/server/wm/WindowState;
    .restart local v5    # "navColorWin":Lcom/android/server/wm/WindowState;
    :cond_b
    move-object/from16 v19, v5

    .end local v5    # "navColorWin":Lcom/android/server/wm/WindowState;
    .restart local v19    # "navColorWin":Lcom/android/server/wm/WindowState;
    invoke-static {v12}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v0

    :goto_8
    nop

    .line 4066
    .local v0, "appearance":I
    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int/2addr v1, v12

    .line 4067
    .local v1, "diff":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    .line 4068
    .local v2, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_e

    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 4070
    invoke-static {v14, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_e

    .line 4071
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v6}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 4072
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v7}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    move v3, v6

    goto :goto_a

    :cond_e
    :goto_9
    move v3, v7

    .line 4076
    .local v3, "isFullscreen":Z
    :goto_a
    invoke-static {v3}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->setFullscreenScene(Z)V

    .line 4079
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    .line 4080
    .local v4, "behavior":I
    and-int/lit16 v5, v12, 0x1800

    if-nez v5, :cond_10

    if-eq v4, v7, :cond_10

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v20, v6

    goto :goto_c

    :cond_10
    const/4 v5, 0x2

    :goto_b
    move/from16 v20, v7

    :goto_c
    move/from16 v21, v20

    .line 4084
    .local v21, "isImmersive":Z
    if-nez v1, :cond_11

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v7, v0, :cond_11

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    if-ne v7, v10, :cond_11

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    if-ne v7, v9, :cond_11

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v7, v4, :cond_11

    iget-boolean v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v7, v3, :cond_11

    iget-boolean v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    move/from16 v5, v21

    .end local v21    # "isImmersive":Z
    .local v5, "isImmersive":Z
    if-ne v7, v5, :cond_12

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 4091
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 4092
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 4093
    const/4 v6, 0x0

    return v6

    .line 4084
    .end local v5    # "isImmersive":Z
    .restart local v21    # "isImmersive":Z
    :cond_11
    move/from16 v5, v21

    .line 4098
    .end local v21    # "isImmersive":Z
    .restart local v5    # "isImmersive":Z
    :cond_12
    iget v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v12, v6}, Lcom/android/server/wm/DisplayPolicy;->getTransientState(II)Landroid/util/Pair;

    move-result-object v23

    .line 4100
    .local v23, "transientState":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    iput v12, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4101
    iput v0, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 4102
    iput v10, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    .line 4103
    iput v9, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    .line 4104
    iput v4, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 4105
    iput-boolean v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 4106
    iput-boolean v5, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    .line 4107
    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4108
    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4109
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v6

    .line 4110
    .local v7, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v24, v2

    .end local v2    # "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    .local v24, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v6

    .line 4111
    .local v2, "dockedStackBounds":Landroid/graphics/Rect;
    if-eqz v17, :cond_13

    .line 4112
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/internal/view/AppearanceRegion;

    move/from16 v22, v4

    .end local v4    # "behavior":I
    .local v22, "behavior":I
    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v10, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    const/16 v21, 0x0

    aput-object v4, v6, v21

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v9, v2}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    move-object/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "dockedStackBounds":Landroid/graphics/Rect;
    .local v25, "dockedStackBounds":Landroid/graphics/Rect;
    aput-object v4, v6, v2

    move-object v2, v6

    goto :goto_d

    .line 4115
    .end local v22    # "behavior":I
    .end local v25    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v2    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v4    # "behavior":I
    :cond_13
    move-object/from16 v25, v2

    move/from16 v22, v4

    const/4 v2, 0x1

    const/16 v21, 0x0

    .end local v2    # "dockedStackBounds":Landroid/graphics/Rect;
    .end local v4    # "behavior":I
    .restart local v22    # "behavior":I
    .restart local v25    # "dockedStackBounds":Landroid/graphics/Rect;
    new-array v2, v2, [Lcom/android/internal/view/AppearanceRegion;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v10, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    aput-object v4, v2, v21

    :goto_d
    move v4, v12

    .end local v12    # "visibility":I
    .local v4, "visibility":I
    move-object v12, v2

    .line 4117
    .local v12, "appearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4118
    .local v2, "cause":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    move/from16 v20, v1

    .end local v1    # "diff":I
    .local v20, "diff":I
    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;

    move-object/from16 v26, v6

    move-object v6, v1

    move-object/from16 v21, v7

    .end local v7    # "fullscreenStackBounds":Landroid/graphics/Rect;
    .local v21, "fullscreenStackBounds":Landroid/graphics/Rect;
    move-object/from16 v7, p0

    move-object/from16 v27, v8

    .end local v8    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    .local v27, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    move v8, v4

    move/from16 v28, v9

    .end local v9    # "dockedAppearance":I
    .local v28, "dockedAppearance":I
    move-object v9, v2

    move/from16 v29, v10

    .end local v10    # "fullscreenAppearance":I
    .local v29, "fullscreenAppearance":I
    move-object/from16 v10, v23

    move/from16 v30, v11

    .end local v11    # "tmpVisibility":I
    .local v30, "tmpVisibility":I
    move v11, v0

    move-object/from16 v31, v14

    .end local v14    # "win":Lcom/android/server/wm/WindowState;
    .local v31, "win":Lcom/android/server/wm/WindowState;
    move v14, v3

    move v15, v5

    invoke-direct/range {v6 .. v15}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ;-><init>(Lcom/android/server/wm/DisplayPolicy;ILjava/lang/String;Landroid/util/Pair;I[Lcom/android/internal/view/AppearanceRegion;ZZZ)V

    move-object/from16 v6, v26

    invoke-virtual {v6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4141
    return v20
.end method

.method validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 1232
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "DisplayPolicy"

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1238
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    const/4 v4, -0x7

    if-eq v0, v3, :cond_7

    const/16 v3, 0x7de

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7e1

    if-eq v0, v3, :cond_5

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x7e8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7f1

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1283
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1286
    goto :goto_0

    .line 1249
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 1253
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1254
    return v4

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 1263
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1264
    :cond_4
    return v4

    .line 1278
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1281
    goto :goto_0

    .line 1288
    :cond_6
    const/16 v0, -0xa

    return v0

    .line 1240
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 1244
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1245
    :cond_9
    return v4

    .line 1291
    :cond_a
    :goto_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 1292
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1295
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    .line 1297
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_12

    aget v5, v0, v2

    .line 1298
    .local v5, "insetType":I
    if-eqz v5, :cond_e

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    goto :goto_2

    .line 1306
    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11

    .line 1307
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1308
    :cond_d
    return v4

    .line 1300
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11

    .line 1301
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1302
    :cond_10
    return v4

    .line 1297
    .end local v5    # "insetType":I
    :cond_11
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1314
    :cond_12
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f8
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
