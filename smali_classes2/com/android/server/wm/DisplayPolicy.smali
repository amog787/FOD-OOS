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

    .line 309
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    .line 313
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x6b

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isSupportLandPadding:Z

    .line 329
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    .line 330
    new-array v1, v0, [I

    aput v0, v1, v3

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    .line 347
    sput-boolean v3, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 348
    sput-boolean v3, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 485
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 486
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 487
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

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 354
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 355
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 356
    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    .line 359
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 383
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 384
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 405
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 406
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 407
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 408
    const/4 v6, 0x4

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 409
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 410
    iput v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 412
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    .line 413
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    .line 414
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    .line 415
    new-array v7, v6, [I

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    .line 419
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 420
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 424
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 425
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 429
    new-array v4, v6, [I

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    .line 439
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 465
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 467
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    .line 472
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 473
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 474
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 475
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 478
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 479
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    .line 495
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 510
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 533
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 1827
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 2474
    const-string v4, ""

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 4650
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 612
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 613
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 614
    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 615
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_1

    .line 617
    :cond_1
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v4

    :goto_1
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 618
    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 621
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 622
    .local v4, "displayId":I
    new-instance v6, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v6, v4}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 623
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

    .line 633
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 634
    .local v3, "r":Landroid/content/res/Resources;
    const v6, 0x111003e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 635
    const v6, 0x111004e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 636
    const v6, 0x111008a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 638
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 640
    iget-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 641
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 642
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 643
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 646
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    if-eqz v6, :cond_3

    .line 647
    const-string v8, "vendor.perf.gestureflingboost.enable"

    const-string v9, "false"

    invoke-virtual {v6, v8, v9}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 648
    :cond_3
    const-string v6, "ro.config.low_ram"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 650
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 651
    .local v6, "looper":Landroid/os/Looper;
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v8, v0, v6}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 652
    new-instance v9, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v11, v0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v9, v10, v8, v11}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 879
    invoke-virtual {v2, v9}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 880
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 881
    invoke-virtual {v9}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v9

    .line 880
    invoke-virtual {v8, v9}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 882
    new-instance v8, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v8, v9, v6, v10}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 886
    iget-boolean v8, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_4

    .line 887
    new-instance v8, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    iput-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 889
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_7

    .line 890
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 891
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11100c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 895
    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 896
    .local v8, "navBarOverride":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 897
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_3

    .line 898
    :cond_5
    const-string v5, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 899
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 901
    .end local v8    # "navBarOverride":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 902
    :cond_7
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 903
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 906
    :goto_4
    new-instance v5, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 907
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 910
    new-instance v5, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;

    invoke-direct {v9, v0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v5, v7, v8, v9}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 918
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;

    invoke-direct {v8, v5}, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 283
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/util/BoostFramework;

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 283
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1972(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 283
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/wm/WindowState;

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/DisplayPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 283
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/DisplayPolicy;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # J

    .line 283
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$2300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 283
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    return-object v0
.end method

.method static synthetic access$2500()[I
    .locals 1

    .line 283
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->checkAltBarSwipeForTransientBars(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 283
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2437
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 2438
    return-void

    .line 2442
    :cond_0
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    .line 2443
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2445
    :cond_1
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2447
    :goto_0
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .line 4639
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 2450
    nop

    .line 2451
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

    .line 2452
    .local v0, "notFocusable":Z
    :goto_0
    nop

    .line 2453
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

    .line 2454
    .local v3, "altFocusableIm":Z
    :goto_1
    xor-int v4, v0, v3

    .line 2455
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

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    if-ne v1, p1, :cond_0

    .line 923
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    if-ne v1, p1, :cond_1

    .line 926
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    .line 928
    :cond_1
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p0, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p1, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p2, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p3, "navBarPosition"    # I

    .line 4278
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4279
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 4281
    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4284
    .local v1, "imeWindowCanNavColorWindow":Z
    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    .line 4289
    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    .line 4292
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 4297
    :cond_3
    if-nez v1, :cond_4

    .line 4299
    return-object p1

    .line 4304
    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4306
    return-object p2

    .line 4309
    :cond_5
    return-object p1

    .line 4294
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    move-object v0, p2

    :cond_7
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .line 4608
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    .line 4609
    .local v1, "newVal":I
    if-eq v1, v0, :cond_0

    .line 4610
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 4611
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 4613
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

    .line 4553
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4554
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 4555
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4556
    :cond_0
    if-eqz p2, :cond_9

    .line 4557
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4559
    :cond_1
    if-nez v0, :cond_6

    .line 4560
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    .line 4577
    :cond_2
    if-eqz p5, :cond_9

    .line 4578
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4561
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz v0, :cond_4

    .line 4562
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4570
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4571
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4573
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4580
    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 4581
    if-eqz p4, :cond_7

    .line 4582
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    .line 4583
    :cond_7
    if-eqz p3, :cond_8

    .line 4584
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_1

    .line 4586
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 4590
    :cond_9
    :goto_1
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    .line 4842
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_0

    .line 4843
    return-void

    .line 4846
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4847
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4848
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4849
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4850
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0
    .param p1, "inputConsumer"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 4018
    if-eqz p1, :cond_0

    .line 4019
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dispose()V

    .line 4021
    :cond_0
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .locals 5
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "controller"    # Lcom/android/server/wm/BarController;
    .param p4, "translucentFlag"    # I

    .line 4523
    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4524
    return v1

    .line 4526
    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 4527
    return v0

    .line 4530
    :cond_1
    nop

    .line 4531
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

    .line 4532
    .local v2, "drawsSystemBars":Z
    :goto_0
    nop

    .line 4533
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

    .line 4535
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

    .line 4543
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

    .line 4539
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private enablePointerLocation()V
    .locals 4

    .line 4813
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    .line 4814
    return-void

    .line 4817
    :cond_0
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 4818
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 4819
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 4822
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4823
    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4826
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 4827
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4828
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4829
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4830
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4833
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4834
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

    .line 4835
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 4836
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4837
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4838
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 4839
    return-void
.end method

.method private static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .locals 6
    .param p0, "insetsTypes"    # [I

    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 1518
    .local v3, "insetsType":I
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 1522
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v4, :cond_1

    .line 1517
    .end local v3    # "insetsType":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1523
    .restart local v3    # "insetsType":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1528
    .end local v3    # "insetsType":I
    :cond_2
    return-void
.end method

.method private getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1483
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    .line 1493
    const/4 v0, -0x1

    return v0

    .line 1489
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 1491
    :cond_1
    const/16 v0, 0x8

    return v0

    .line 1487
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 1485
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private getAppPackageName()Ljava/lang/String;
    .locals 3

    .line 582
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->getFilteredTasks(IZ)Ljava/util/List;

    move-result-object v0

    .line 583
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 584
    .local v0, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 587
    .local v0, "currentPackage":Ljava/lang/String;
    goto :goto_0

    .line 585
    .end local v0    # "currentPackage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 588
    .local v0, "currentPackage":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private getDisplayId()I
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1815
    const/4 v0, 0x0

    .line 1816
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

    .line 1819
    .local v1, "forceWindowDrawsBarBackgrounds":Z
    :goto_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 1821
    :cond_1
    or-int/lit16 v0, v0, 0x200

    .line 1822
    or-int/lit16 v0, v0, 0x400

    .line 1824
    :cond_2
    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3721
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3695
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 3696
    const/4 p1, 0x0

    .line 3701
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3652
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 3653
    const/4 p1, 0x0

    .line 3658
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1560
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

    .line 4220
    new-instance v4, Landroid/util/IntArray;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 4221
    .local v4, "typesToShow":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 4222
    .local v5, "typesToAbort":Landroid/util/IntArray;
    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    .line 4224
    const/high16 v8, 0x8000000

    const/4 v9, 0x1

    move v6, p0

    move v7, p1

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    .line 4226
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

    .line 1142
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

    .line 4617
    const/16 v0, 0x1800

    .line 4618
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    .line 4621
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4618
    :goto_0
    return v1
.end method

.method private isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 4625
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 4626
    .local v0, "behavior":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4627
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4630
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4631
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 4632
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeDream()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4626
    :goto_0
    return v2
.end method

.method private isKeyguardOccluded()Z
    .locals 1

    .line 4045
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3
    .param p0, "systemUiFlags"    # I

    .line 4643
    const/high16 v0, 0x1600000

    .line 4647
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

    .line 4880
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    .line 4881
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4885
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 4882
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 6
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "BoostType"    # Landroid/util/BoostFramework;

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "isGame":Z
    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 596
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 597
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

    .line 603
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_2

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 605
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

    .line 608
    :goto_2
    return v0
.end method

.method static synthetic lambda$canToastShowWhenLocked$1(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "callingPid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1245
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

    .line 2260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p7

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 2261
    return v6

    .line 2264
    :cond_0
    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 2265
    .local v5, "navigationFrame":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v7}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v14

    .line 2269
    .local v14, "transientNavBarShowing":Z
    iget v15, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2270
    .local v15, "rotation":I
    iget v13, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 2271
    .local v13, "displayHeight":I
    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 2272
    .local v12, "displayWidth":I
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2273
    .local v11, "dockFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v12, v13, v15}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v10

    .line 2275
    .local v10, "navBarPosition":I
    sget-object v9, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2276
    .local v9, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2277
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2279
    const/4 v7, 0x4

    if-ne v10, v7, :cond_5

    .line 2281
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 2282
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v16

    sub-int v7, v7, v16

    .line 2283
    .local v7, "topNavBar":I
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-eqz v8, :cond_1

    .line 2284
    move v8, v7

    goto :goto_0

    .line 2285
    :cond_1
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v17

    sub-int v8, v8, v17

    :goto_0
    nop

    .line 2286
    .local v8, "top":I
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2287
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2288
    if-eqz v14, :cond_2

    .line 2289
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_1

    .line 2290
    :cond_2
    const/4 v6, 0x1

    if-eqz p3, :cond_3

    .line 2291
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2292
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2295
    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2297
    :goto_1
    if-eqz p3, :cond_4

    if-nez p4, :cond_4

    if-nez p5, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2298
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2299
    invoke-virtual {v4}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2302
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2304
    .end local v7    # "topNavBar":I
    .end local v8    # "top":I
    :cond_4
    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x2

    if-ne v10, v4, :cond_8

    .line 2306
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 2307
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v4, v7

    .line 2308
    .local v4, "left":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v4, v6, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2309
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->right:I

    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 2310
    if-eqz v14, :cond_6

    .line 2311
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_2

    .line 2312
    :cond_6
    const/4 v7, 0x1

    if-eqz p3, :cond_7

    .line 2313
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2314
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 2317
    :cond_7
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2319
    :goto_2
    if-eqz p3, :cond_b

    if-nez p4, :cond_b

    if-nez p5, :cond_b

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2320
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2321
    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2324
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 2326
    .end local v4    # "left":I
    :cond_8
    const/4 v4, 0x1

    if-ne v10, v4, :cond_b

    .line 2328
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 2329
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v4, v7

    .line 2330
    .local v4, "right":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v7, v6, v4, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2331
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->left:I

    iput v4, v6, Landroid/graphics/Rect;->left:I

    .line 2332
    if-eqz v14, :cond_9

    .line 2333
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    .line 2334
    :cond_9
    const/4 v7, 0x1

    if-eqz p3, :cond_a

    .line 2335
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2336
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 2339
    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2341
    :goto_3
    if-eqz p3, :cond_c

    if-nez p4, :cond_c

    if-nez p5, :cond_c

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2342
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2343
    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2346
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 2326
    .end local v4    # "right":I
    :cond_b
    :goto_4
    nop

    .line 2352
    :cond_c
    :goto_5
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2353
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2354
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2356
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2357
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v4

    .line 2358
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

    .line 2363
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 2364
    move-object/from16 v7, p7

    if-eqz v7, :cond_d

    .line 2365
    iget-object v8, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 2367
    :cond_d
    iput v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 2368
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v9, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2371
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

    .line 2372
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

    .line 2114
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    return-void

    .line 2118
    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2119
    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 2120
    .local v4, "displayId":I
    iget-object v5, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2121
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget v6, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 2122
    .local v6, "displayHeight":I
    iget v7, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 2124
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

    .line 2125
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 2126
    .local v10, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    goto/16 :goto_2

    .line 2131
    :cond_1
    if-eqz v3, :cond_2

    move v0, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 2132
    .local v11, "isSimulatedLayout":Z
    if-eqz v11, :cond_3

    .line 2133
    invoke-virtual {v10, v3}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2135
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v15

    .line 2136
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

    .line 2142
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    if-eqz v11, :cond_4

    .line 2145
    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2148
    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2150
    .local v0, "frame":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v12, " displayHeight="

    const-string v13, " displayWidth="

    const-string v14, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v15, "WindowManager"

    if-gtz v8, :cond_7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_7

    .line 2152
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_5

    .line 2154
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    .line 2155
    :cond_5
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_6

    .line 2157
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    .line 2159
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

    .line 2163
    :cond_7
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_a

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_a

    .line 2165
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_8

    .line 2167
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 2168
    :cond_8
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_9

    .line 2170
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2172
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

    .line 2178
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

    .line 2144
    .end local v0    # "frame":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    move-object v12, v0

    if-eqz v11, :cond_b

    .line 2145
    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2147
    :cond_b
    throw v12

    .line 2124
    .end local v1    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v10    # "w":Lcom/android/server/wm/WindowState;
    .end local v11    # "isSimulatedLayout":Z
    :cond_c
    :goto_2
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 2184
    .end local v9    # "i":I
    :cond_d
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2185
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2186
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2187
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2188
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2189
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "sysui"    # I
    .param p3, "simulatedContentFrame"    # Landroid/graphics/Rect;

    .line 2194
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2195
    return v1

    .line 2198
    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2199
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    .line 2200
    .local v0, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2206
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 2209
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2212
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2216
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2217
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2218
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2219
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2220
    if-eqz p3, :cond_1

    .line 2221
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2223
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2226
    :goto_0
    const/high16 v2, 0x4000000

    and-int/2addr v2, p2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2227
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

    .line 2228
    .local v2, "statusBarTransient":Z
    :goto_2
    const v4, 0x40000008    # 2.000002f

    and-int/2addr v4, p2

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v1

    .line 2232
    .local v4, "statusBarTranslucent":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 2235
    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2236
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2237
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2238
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2239
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2241
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status bar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2242
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 2243
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 2241
    const-string v1, "dock=%s content=%s cur=%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_5
    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2246
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2251
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2254
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

    .line 3134
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3135
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3136
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3137
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 3140
    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 3141
    .local v0, "rotation":I
    iget v1, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3144
    .local v1, "navBarPosition":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3145
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 3146
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3147
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 3151
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v3

    .line 3152
    .local v3, "uimode":I
    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v4

    .line 3153
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

    .line 3156
    .end local v3    # "uimode":I
    .end local v4    # "navFrameHeight":I
    :cond_0
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3157
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 3158
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 3159
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3160
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

    .line 3163
    :cond_1
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 3166
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3167
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3168
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3169
    return-void
.end method

.method private opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2460
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2461
    return v0

    .line 2464
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "BiometricPrompt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2466
    const/4 v0, 0x1

    return v0

    .line 2468
    :cond_1
    return v0
.end method

.method private postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2087
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    .line 2091
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2101
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2102
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2103
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "swipeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3932
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3934
    return-void

    .line 3938
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3939
    return-void

    .line 3942
    :cond_1
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    .line 3943
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 3944
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_2

    .line 3945
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3947
    .local v1, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v1, v4, :cond_3

    goto/16 :goto_4

    .line 3952
    :cond_3
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 3954
    .local v4, "requestedState":Landroid/view/InsetsState;
    invoke-virtual {v4, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3955
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v3

    .line 3956
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3957
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    or-int/2addr v5, v6

    .line 3959
    .local v5, "restorePositionTypes":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_6

    .line 3960
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_6

    .line 3964
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 3965
    return-void

    .line 3971
    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v6, v7

    .line 3974
    .local v6, "insetsTypesToShow":I
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3984
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InsetsPolicy;->showTransient([I)I

    move-result v7

    not-int v7, v7

    and-int/2addr v6, v7

    .line 3985
    if-eqz v6, :cond_a

    .line 3986
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3987
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    not-int v7, v7

    and-int/2addr v6, v7

    .line 3989
    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3990
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v6, v2

    .line 3992
    :cond_8
    invoke-interface {v1, v6, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_3

    .line 3997
    :cond_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 3999
    .end local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    .end local v4    # "requestedState":Landroid/view/InsetsState;
    .end local v5    # "restorePositionTypes":I
    .end local v6    # "insetsTypesToShow":I
    :cond_a
    :goto_3
    goto :goto_6

    .line 3949
    .restart local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .restart local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_b
    :goto_4
    return-void

    .line 4000
    .end local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v0

    .line 4001
    .local v0, "sb":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4002
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    move v2, v3

    :goto_5
    move v1, v2

    .line 4003
    .local v1, "nb":Z
    if-nez v0, :cond_e

    if-eqz v1, :cond_12

    .line 4005
    :cond_e
    if-nez v1, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_f

    .line 4007
    return-void

    .line 4009
    :cond_f
    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 4010
    :cond_10
    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 4011
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 4014
    .end local v0    # "sb":Z
    .end local v1    # "nb":Z
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 4015
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

    .line 2378
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2387
    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2388
    iget-object v0, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 2393
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 2394
    .local v0, "parentDisplayFrame":Landroid/graphics/Rect;
    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2395
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

    .line 2399
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v2

    .line 2400
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2408
    :cond_1
    const/16 v2, 0x10

    if-eq p3, v2, :cond_3

    .line 2413
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    .line 2414
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 2413
    :goto_0
    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2421
    :cond_3
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2422
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2423
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2424
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2425
    :cond_5
    iget-object v2, p10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2428
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    move-object v2, v0

    goto :goto_2

    :cond_7
    move-object v2, p8

    :goto_2
    invoke-virtual {p7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2429
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2433
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

    .line 2434
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4594
    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4598
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 4599
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTransparentFlag(I)I
    .locals 1
    .param p1, "visibility"    # I

    .line 4603
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 4604
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

    .line 1909
    .local p5, "contentFrames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p6, "layout":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1910
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1912
    .local v0, "contentFrame":Landroid/graphics/Rect;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1915
    nop

    .line 1916
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1917
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/server/wm/InsetsStateController;->computeSimulatedState(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1919
    return-void

    .line 1914
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1915
    throw v2
.end method

.method private supportsPointerLocation()Z
    .locals 1

    .line 4800
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

    .line 3601
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 3602
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 3604
    .local v1, "uiContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 3607
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3608
    return-void

    .line 3613
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 3614
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3613
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3615
    .local v2, "pi":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 3616
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3618
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    .line 3619
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3620
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    .line 3622
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3615
    invoke-virtual/range {v3 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3625
    return-void
.end method

.method private static updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V
    .locals 10
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 2070
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

    .line 2071
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2072
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2073
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2074
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2075
    return-void

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2078
    .local v0, "u":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 2079
    .local v5, "s":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2080
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2081
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2082
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2083
    return-void
.end method

.method private updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p1, "appearance"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p5, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 4334
    if-eqz p5, :cond_3

    .line 4335
    if-eq p5, p4, :cond_1

    if-ne p5, p2, :cond_0

    goto :goto_0

    .line 4340
    :cond_0
    if-ne p5, p3, :cond_2

    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4342
    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    .line 4337
    :cond_1
    :goto_0
    and-int/lit8 p1, p1, -0x11

    .line 4338
    iget-object v0, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 4344
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p5}, Lcom/android/server/wm/BarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4345
    and-int/lit8 p1, p1, -0x11

    .line 4348
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

    .line 4317
    if-eqz p4, :cond_2

    .line 4318
    if-eq p4, p3, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 4323
    :cond_0
    if-ne p4, p2, :cond_2

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4325
    and-int/lit8 p0, p0, -0x11

    goto :goto_1

    .line 4320
    :cond_1
    :goto_0
    and-int/lit8 p0, p0, -0x11

    .line 4321
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    .line 4328
    :cond_2
    :goto_1
    return p0
.end method

.method private updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 4
    .param p1, "appearance"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;

    .line 4242
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

    .line 4243
    .local v0, "onKeyguard":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v1, p3

    .line 4244
    .local v1, "statusColorWin":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v1, :cond_5

    .line 4245
    if-eq v1, p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 4253
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4255
    and-int/lit8 p1, p1, -0x9

    goto :goto_3

    .line 4248
    :cond_3
    :goto_2
    and-int/lit8 p1, p1, -0x9

    .line 4249
    const/4 v2, 0x0

    .line 4250
    invoke-static {v1, v2}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 4249
    invoke-static {v2}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v2

    .line 4251
    .local v2, "legacyAppearance":I
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v3, v3, Landroid/view/InsetsFlags;->appearance:I

    or-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    .line 4253
    .end local v2    # "legacyAppearance":I
    :cond_4
    nop

    .line 4257
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/StatusBarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4258
    and-int/lit8 p1, p1, -0x9

    .line 4265
    :cond_5
    invoke-static {p2, p1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->forceDarkSystemUI(Lcom/android/server/wm/WindowState;I)I

    move-result p1

    .line 4268
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

    .line 4352
    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4353
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v9

    .line 4354
    .local v9, "dockedStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4355
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v10

    .line 4356
    .local v10, "freeformStackVisible":Z
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v11

    .line 4361
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

    .line 4366
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4367
    iput-boolean v13, v7, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 4372
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

    .line 4375
    .local v14, "forceOpaqueStatusBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4376
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 4377
    :cond_4
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_3
    move-object v15, v0

    .line 4378
    .local v15, "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v1, p3

    invoke-virtual {v0, v15, v1, v8}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 4379
    .end local p3    # "vis":I
    .local v0, "vis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v15, v0, v8}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 4380
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v13, v13}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    .line 4382
    .local v1, "dockedVis":I
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v1, v13}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v6

    .line 4385
    .end local v1    # "dockedVis":I
    .local v6, "dockedVis":I
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4386
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v16

    .line 4387
    .local v16, "fullscreenDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4388
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 4389
    .local v17, "dockedDrawsStatusBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4390
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v18

    .line 4391
    .local v18, "fullscreenDrawsNavBarBackground":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4392
    invoke-direct {v7, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v19

    .line 4395
    .local v19, "dockedDrawsNavigationBarBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4396
    .local v5, "type":I
    const/16 v1, 0x7f8

    if-ne v5, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v13

    :goto_4
    move/from16 v20, v1

    .line 4397
    .local v20, "notificationShadeHasFocus":Z
    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4398
    const/16 v1, 0x3806

    .line 4403
    .local v1, "flags":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4404
    const/high16 v2, -0x40000000    # -2.0f

    or-int/2addr v1, v2

    .line 4406
    :cond_6
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, v8, v1

    or-int v0, v2, v3

    .line 4409
    .end local v1    # "flags":I
    :cond_7
    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    .line 4410
    or-int/lit8 v0, v0, 0x8

    .line 4411
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    .line 4412
    :cond_8
    if-eqz v14, :cond_9

    .line 4413
    const v1, -0x40000009    # -1.9999989f

    and-int/2addr v0, v1

    move/from16 v21, v0

    goto :goto_5

    .line 4412
    :cond_9
    move/from16 v21, v0

    .line 4416
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

    .line 4420
    .end local v21    # "vis":I
    .restart local v0    # "vis":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    move v1, v13

    .line 4422
    .local v1, "immersiveSticky":Z
    :goto_6
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    .line 4424
    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move v2, v13

    .line 4426
    .local v2, "hideStatusBarWM":Z
    :goto_7
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_d

    .line 4433
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

    .line 4434
    .local v3, "hideStatusBarSysui":Z
    :goto_9
    if-nez v1, :cond_e

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4435
    const/4 v1, 0x1

    .line 4439
    :cond_e
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    move v4, v13

    .line 4442
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

    .line 4446
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

    .line 4449
    .local v6, "transientNavBarAllowed":Z
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 4450
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

    .line 4452
    .local v12, "pendingPanic":Z
    :goto_d
    iget-object v13, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4453
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    .line 4454
    .local v13, "defaultDisplayPolicy":Lcom/android/server/wm/DisplayPolicy;
    if-eqz v12, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v28

    if-nez v28, :cond_14

    .line 4456
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 4459
    iput-wide v1, v7, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 4460
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 4461
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 4462
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 4466
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

    .line 4468
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

    .line 4470
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

    .line 4472
    .end local v1    # "denyTransientStatus":Z
    .restart local v28    # "denyTransientStatus":Z
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    .line 4473
    and-int/lit8 v0, v0, -0x8

    .line 4476
    :cond_18
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    .line 4477
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

    .line 4478
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

    .line 4480
    .local v27, "navAllowedHidden":Z
    :goto_14
    if-eqz v4, :cond_1d

    if-nez v27, :cond_1d

    move/from16 v30, v1

    .end local v1    # "immersive":Z
    .local v30, "immersive":Z
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4481
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

    .line 4482
    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-le v1, v2, :cond_1e

    .line 4485
    and-int/lit8 v0, v0, -0x3

    goto :goto_15

    .line 4480
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

    .line 4488
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

    .line 4491
    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    const/16 v21, 0x1

    goto :goto_16

    :cond_1f
    const/16 v21, 0x0

    :goto_16
    move/from16 v1, v21

    .line 4492
    .local v1, "newInsetsMode":Z
    if-eqz v1, :cond_20

    iget-boolean v2, v7, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    goto :goto_17

    :cond_20
    invoke-direct {v7, v8}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v2

    .line 4493
    .local v2, "oldImmersiveMode":Z
    :goto_17
    if-eqz v1, :cond_21

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    goto :goto_18

    :cond_21
    invoke-direct {v7, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v3

    .line 4496
    .local v3, "newImmersiveMode":Z
    :goto_18
    if-eqz v3, :cond_22

    .line 4497
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DisplayPolicyInjector;->shouldDisableImmersiveModeConfirm(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 4498
    const/4 v3, 0x0

    .line 4501
    :cond_22
    if-eq v2, v3, :cond_23

    .line 4502
    iput-boolean v3, v7, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 4503
    move/from16 v21, v1

    .end local v1    # "newInsetsMode":Z
    .local v21, "newInsetsMode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 4504
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

    .line 4505
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v4

    .line 4506
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v34

    move/from16 v35, v5

    .end local v5    # "transientStatusBarAllowed":Z
    .local v35, "transientStatusBarAllowed":Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4504
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    goto :goto_19

    .line 4501
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

    .line 4509
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

    .line 4511
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v5, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4514
    .local v1, "navColorWin":Lcom/android/server/wm/WindowState;
    iget-object v2, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v7, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, v7, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v2, v4, v5, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 4518
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

    .line 4231
    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4232
    .local v0, "wasTransient":Z
    :goto_0
    and-int v3, p0, p2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 4233
    .local v1, "isTransient":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 4234
    invoke-virtual {p4, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_2

    .line 4235
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 4236
    invoke-virtual {p5, p3}, Landroid/util/IntArray;->add(I)V

    .line 4238
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1357
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1361
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

    .line 1460
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_6

    .line 1461
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v4, v0, v2

    .line 1462
    .local v4, "insetsType":I
    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 1469
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1470
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1471
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    goto :goto_1

    .line 1464
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1465
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1466
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1467
    nop

    .line 1474
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, p1, v6}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1461
    .end local v4    # "insetsType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1363
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1364
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    .line 1365
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_2

    .line 1381
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1382
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1383
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    .line 1385
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1435
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1442
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1457
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

    .line 1369
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1371
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;

    .local v0, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1376
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1377
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1378
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1379
    nop

    .line 1479
    .end local v0    # "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1, "visibility"    # I

    .line 1704
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 1709
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 1712
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

    .line 1157
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1158
    .local v0, "isScreenDecor":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1159
    if-nez v0, :cond_2

    .line 1161
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1164
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1167
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

    .line 1195
    :cond_3
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0xdac

    if-ltz v1, :cond_4

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    .line 1197
    :cond_4
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1202
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1205
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1207
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1208
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1211
    :cond_6
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1212
    goto :goto_2

    .line 1185
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1186
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 1171
    :cond_8
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1173
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1174
    goto :goto_2

    .line 1178
    :cond_9
    const/4 v1, 0x3

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1179
    goto :goto_2

    .line 1218
    :cond_a
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1219
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 1221
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    .line 1222
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
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

    .line 1231
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_d

    .line 1232
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1234
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_e

    .line 1235
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1237
    :cond_e
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3205
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 3206
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

    .line 3207
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3208
    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 3209
    .local v1, "fl":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_1

    .line 3211
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 3212
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 3215
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

    .line 3217
    .local v3, "appWindow":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    .line 3218
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

    .line 3221
    .local v7, "inFullScreenOrSplitScreenSecondaryWindowingMode":Z
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_b

    if-eqz v0, :cond_b

    .line 3222
    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_5

    .line 3223
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3225
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3228
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v8, :cond_6

    .line 3229
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3230
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 3231
    const/4 v3, 0x1

    .line 3238
    :cond_7
    if-eqz v3, :cond_b

    if-nez p3, :cond_b

    .line 3239
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v7, :cond_b

    .line 3240
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

    .line 3241
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3245
    new-array v8, v4, [I

    const/16 v9, 0x3c

    aput v9, v8, v5

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    .line 3246
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3247
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    .line 3248
    sget-boolean v5, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_9

    .line 3249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FP_ACCELERATE: top full app win="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_a

    .line 3254
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3256
    :cond_a
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    .line 3257
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 3264
    :cond_b
    if-eqz v0, :cond_d

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7ef

    if-ne v2, v5, :cond_d

    .line 3265
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    .line 3266
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3267
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_c

    .line 3268
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3271
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d

    .line 3272
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3273
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d

    .line 3274
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3280
    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_e

    if-eqz v0, :cond_e

    .line 3281
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v7, :cond_e

    .line 3282
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3288
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x3

    if-nez v2, :cond_f

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    if-nez p3, :cond_f

    .line 3289
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne v6, v5, :cond_f

    .line 3290
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3291
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f

    .line 3292
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3297
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    .line 3298
    .local v2, "navBarWin":Lcom/android/server/wm/WindowState;
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v8, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3299
    invoke-static {p1, v2}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3300
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 3305
    :cond_11
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_12

    if-ne v6, v5, :cond_12

    .line 3307
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3312
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-static {v4, v5}, Lcom/android/server/wm/OpScreenCompatInjector;->expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3315
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 1720
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 22
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1959
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1962
    iget v0, v9, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    .line 1964
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1965
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1964
    invoke-static {v9, v0}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 1966
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 1967
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 1970
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1971
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpQuickPayInjector;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 1977
    :cond_0
    iget v10, v8, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 1978
    .local v10, "sysui":I
    iget v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1979
    .local v11, "behavior":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1980
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v12

    .line 1981
    .local v12, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 1982
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 1983
    :cond_2
    if-eqz v12, :cond_3

    .line 1984
    invoke-virtual {v12}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    goto :goto_0

    .line 1985
    :cond_3
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    :goto_0
    nop

    .line 1986
    .local v0, "navVisible":Z
    const v2, -0x7fff8000

    and-int/2addr v2, v10

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1988
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

    .line 1990
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

    .line 1992
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

    .line 1993
    .local v15, "navAllowedHidden":Z
    if-nez v14, :cond_b

    move v4, v1

    goto :goto_8

    :cond_b
    move v4, v3

    :goto_8
    and-int v7, v2, v4

    .line 1994
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

    .line 1995
    .local v16, "isKeyguardShowing":Z
    if-nez v16, :cond_d

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d

    .line 1997
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

    .line 2000
    .local v6, "notificationShadeForcesShowingNavigation":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateHideNavInputEventReceiver()V

    .line 2004
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    xor-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 2006
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_e

    .line 2007
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x901

    if-ne v2, v4, :cond_e

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2009
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_b

    :cond_e
    move v2, v3

    :goto_b
    move/from16 v17, v2

    .line 2011
    .local v17, "shouldForceHide":Z
    if-nez v17, :cond_f

    goto :goto_c

    :cond_f
    move v1, v3

    :goto_c
    and-int v5, v0, v1

    .line 2014
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

    .line 2017
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

    .line 2018
    :cond_10
    const/4 v1, 0x0

    invoke-direct {v8, v9, v10, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2020
    if-eqz v0, :cond_11

    .line 2021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 2023
    :cond_11
    invoke-direct {v8, v9, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 2024
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 2025
    move/from16 v1, v19

    .end local v19    # "navVisible":Z
    .local v1, "navVisible":Z
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    .line 2026
    iput-boolean v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    .line 2027
    iput-boolean v15, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    .line 2028
    move/from16 v2, v20

    .end local v20    # "notificationShadeForcesShowingNavigation":Z
    .local v2, "notificationShadeForcesShowingNavigation":Z
    iput-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    .line 2029
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    .line 3183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3184
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3185
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3186
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3188
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 3189
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 3191
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 3192
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 3193
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 3194
    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .locals 3
    .param p1, "callingPid"    # I

    .line 1244
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

    .line 3800
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3801
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 4722
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4724
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4725
    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4726
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4727
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4728
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4729
    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4731
    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4732
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4733
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4734
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4735
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4736
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 4738
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4740
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4741
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4742
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4743
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4745
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4746
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4747
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 4748
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4750
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    .line 4751
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4752
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4753
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4755
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    .line 4756
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExpandedPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4758
    :cond_4
    const-string v0, " isKeyguardShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4759
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    .line 4760
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4761
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4762
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4764
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4766
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    .line 4767
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4768
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4771
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_7

    .line 4772
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4774
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    .line 4775
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4776
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4778
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    .line 4779
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4780
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4782
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_a

    .line 4783
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4784
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4785
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4787
    :cond_a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4790
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4791
    const-string v0, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4792
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4793
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4795
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4796
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

    .line 4797
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1102
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1103
    monitor-exit v0

    .line 1104
    return v1

    .line 1098
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 1103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    .line 3330
    const/4 v0, 0x0

    .line 3331
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 3337
    .local v1, "topIsFullscreen":Z
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v2, :cond_0

    .line 3338
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 3341
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 3342
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

    .line 3344
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

    .line 3352
    .local v2, "forceShowStatusBar":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_3

    .line 3355
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

    .line 3358
    .local v6, "notificationShadeForcesShowingNavigation":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v7

    .line 3362
    .local v7, "topAppHidesStatusBar":Z
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3363
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-eqz v8, :cond_4

    .line 3364
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3365
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_4

    .line 3366
    const-string v8, "QuickReply: mForceStatusBar to false"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_4
    if-eqz v6, :cond_5

    .line 3370
    const/4 v6, 0x0

    .line 3371
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_5

    .line 3372
    const-string v8, "QuickReply: notificationShadeForcesShowingNavigation to false"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v8, :cond_e

    if-eqz v2, :cond_6

    goto :goto_3

    .line 3391
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_12

    .line 3392
    move v1, v7

    .line 3397
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3398
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3399
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 3408
    :cond_7
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v1, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3410
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    .line 3419
    :cond_8
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_9

    const-string v4, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3421
    or-int/lit8 v0, v0, 0x1

    .line 3423
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 3412
    :cond_b
    :goto_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_c

    const-string v5, "** HIDING status bar"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3414
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3416
    :cond_d
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_12

    const-string v4, "Status bar already hiding"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3378
    :cond_e
    :goto_3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_f

    const-string v8, "Showing status bar: forced"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3380
    or-int/lit8 v0, v0, 0x1

    .line 3383
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

    .line 3386
    if-eqz v6, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 3387
    invoke-virtual {v3}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3388
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    .line 3426
    :cond_12
    :goto_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 3429
    .end local v2    # "forceShowStatusBar":Z
    .end local v6    # "notificationShadeForcesShowingNavigation":Z
    .end local v7    # "topAppHidesStatusBar":Z
    :cond_13
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_15

    .line 3430
    if-nez v1, :cond_14

    .line 3432
    or-int/lit8 v0, v0, 0x1

    .line 3434
    :cond_14
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 3437
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 3440
    or-int/lit8 v0, v0, 0x1

    .line 3443
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_17

    .line 3444
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 3445
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    .line 3448
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 3449
    return v0
.end method

.method public finishScreenTurningOn()Z
    .locals 15

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
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

    .line 1129
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

    .line 1134
    :cond_1
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x43f97d42

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v4, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    :cond_2
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1136
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1137
    monitor-exit v0

    .line 1138
    return v2

    .line 1131
    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    .line 1137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1114
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1115
    monitor-exit v0

    .line 1116
    return v1

    .line 1111
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1115
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

    .line 3905
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3906
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3910
    invoke-static {p1, p2}, Lcom/android/server/wm/OpQuickReplyInjector;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 3915
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3916
    invoke-static {p1, p2}, Lcom/android/server/policy/OpQuickPayInjector;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3920
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    .line 3921
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3923
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 3926
    const/4 v0, 0x1

    return v0

    .line 3928
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method getAlternateNavBarPosition()I
    .locals 1

    .line 3898
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    return v0
.end method

.method getAlternateStatusBarPosition()I
    .locals 1

    .line 3893
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

    .line 3768
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3769
    .local v0, "statusBarHeight":I
    if-eqz p5, :cond_0

    .line 3772
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3774
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

    .line 3753
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 3644
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    .line 3636
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 3637
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3639
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 1017
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    return v0
.end method

.method public getDockMode()I
    .locals 1

    .line 981
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getFocusedAppOrientation()I
    .locals 1

    .line 4035
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 4036
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    return v0

    .line 4039
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFocusedWindowState()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getForceShowSystemBars()Z
    .locals 1

    .line 992
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .locals 1

    .line 3865
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

    .line 1498
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .locals 1

    .line 4049
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

    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 1742
    .local v5, "fl":I
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1743
    .local v6, "pfl":I
    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 1744
    .local v7, "requestedSysUiVis":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    or-int/2addr v8, v7

    .line 1746
    .local v8, "sysUiVis":I
    and-int/lit16 v9, v5, 0x100

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v11

    .line 1747
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

    .line 1749
    .local v12, "layoutInScreenAndInsetDecor":Z
    :goto_1
    const/high16 v13, 0x400000

    and-int/2addr v13, v6

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    move v13, v11

    .line 1751
    .local v13, "screenDecor":Z
    :goto_2
    if-eqz p2, :cond_3

    .line 1752
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    move v14, v11

    .line 1753
    .local v14, "isFixedRotationTransforming":Z
    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    goto :goto_4

    :cond_4
    move-object v15, v4

    .line 1754
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    goto :goto_5

    :cond_5
    move-object/from16 v16, v4

    .line 1755
    .local v16, "task":Lcom/android/server/wm/Task;
    :goto_5
    if-eqz v14, :cond_6

    .line 1757
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_6

    .line 1758
    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_6

    :cond_7
    move-object/from16 v17, v4

    :goto_6
    move-object/from16 v18, v17

    .line 1759
    .local v18, "taskBounds":Landroid/graphics/Rect;
    if-eqz v14, :cond_8

    .line 1760
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_7

    .line 1761
    :cond_8
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :goto_7
    nop

    .line 1763
    .local v4, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    if-eqz v12, :cond_12

    if-nez v13, :cond_12

    .line 1764
    and-int/lit16 v10, v8, 0x200

    if-nez v10, :cond_a

    .line 1765
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v20

    and-int v10, v10, v20

    if-nez v10, :cond_9

    goto :goto_8

    .line 1768
    :cond_9
    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    .line 1766
    :cond_a
    :goto_8
    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1771
    :goto_9
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    move v10, v11

    .line 1772
    .local v10, "isFloatingTask":Z
    :goto_a
    if-eqz v10, :cond_c

    const/4 v11, 0x0

    goto :goto_b

    :cond_c
    iget-object v11, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 1774
    .local v11, "sf":Landroid/graphics/Rect;
    :goto_b
    if-eqz v10, :cond_d

    .line 1775
    const/16 v17, 0x0

    move-object/from16 v1, v17

    .local v17, "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1776
    .end local v17    # "cf":Landroid/graphics/Rect;
    :cond_d
    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_f

    .line 1777
    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_e

    .line 1778
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .local v1, "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1780
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_e
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .restart local v1    # "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1782
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_f
    and-int/lit16 v1, v5, 0x400

    if-eqz v1, :cond_10

    .line 1783
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .restart local v1    # "cf":Landroid/graphics/Rect;
    goto :goto_c

    .line 1785
    .end local v1    # "cf":Landroid/graphics/Rect;
    :cond_10
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .line 1788
    .restart local v1    # "cf":Landroid/graphics/Rect;
    :goto_c
    move/from16 v17, v5

    move-object/from16 v5, v18

    .end local v18    # "taskBounds":Landroid/graphics/Rect;
    .local v5, "taskBounds":Landroid/graphics/Rect;
    .local v17, "fl":I
    if-eqz v5, :cond_11

    .line 1789
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1791
    :cond_11
    move/from16 v18, v6

    move-object/from16 v6, p4

    .end local v6    # "pfl":I
    .local v18, "pfl":I
    invoke-static {v2, v1, v6}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1792
    move-object/from16 v19, v1

    move-object/from16 v1, p5

    .end local v1    # "cf":Landroid/graphics/Rect;
    .local v19, "cf":Landroid/graphics/Rect;
    invoke-static {v2, v11, v1}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1793
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1794
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 1793
    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1795
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1

    .line 1763
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

    .line 1797
    .end local v6    # "pfl":I
    .local v5, "taskBounds":Landroid/graphics/Rect;
    .restart local v17    # "fl":I
    .local v18, "pfl":I
    if-eqz v9, :cond_13

    .line 1798
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d

    .line 1800
    :cond_13
    iget-object v1, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1802
    :goto_d
    if-eqz v5, :cond_14

    .line 1803
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1806
    :cond_14
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1807
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1808
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1809
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1
.end method

.method public getLidState()I
    .locals 1

    .line 1043
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    .line 3888
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method getNavigationBar()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1578
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

    .line 3732
    move v0, p2

    .line 3733
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3734
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3735
    .local v1, "navBarPosition":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3736
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3739
    .end local v1    # "navBarPosition":I
    :cond_0
    if-eqz p5, :cond_1

    .line 3740
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3742
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

    .line 3681
    move v0, p1

    .line 3682
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3683
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3684
    .local v1, "navBarPosition":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3685
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3688
    .end local v1    # "navBarPosition":I
    :cond_1
    if-eqz p5, :cond_2

    .line 3689
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3691
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

    .line 3833
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3836
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3837
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3838
    .local v0, "uiMode":I
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3839
    .local v1, "position":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3840
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 3841
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3842
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 3843
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3844
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 3848
    .end local v0    # "uiMode":I
    .end local v1    # "position":I
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 3849
    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 3850
    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 3851
    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 3852
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 3854
    :cond_3
    return-void
.end method

.method getNotificationShade()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .locals 1

    .line 4718
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .locals 1

    .line 1071
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

    .line 3814
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3817
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3818
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3819
    return-void
.end method

.method getStatusBar()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1570
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

    .line 1566
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 374
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 375
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUiContext()Landroid/content/Context;
    .locals 1

    .line 3648
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFocusedActivityWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 3172
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .locals 2

    .line 3785
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3785
    :goto_0
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method hasSideGestures()Z
    .locals 1

    .line 1031
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

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .locals 1

    .line 961
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .locals 1

    .line 965
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .locals 1

    .line 957
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 4030
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .locals 1

    .line 973
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .line 1059
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .locals 1

    .line 3790
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method isTopLayoutFullscreen()Z
    .locals 1

    .line 3176
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return v0
.end method

.method isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4867
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    .line 4868
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4871
    :cond_1
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .locals 1

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$addWindowLw$2$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1373
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1374
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1375
    return-void
.end method

.method public synthetic lambda$addWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1390
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v0, :cond_0

    .line 1395
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1396
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1397
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1399
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 1398
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1401
    :cond_0
    return-void
.end method

.method public synthetic lambda$addWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1409
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1410
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1413
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

    .line 1418
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1419
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1420
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1422
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1423
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1424
    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1426
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1425
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1429
    :cond_2
    return-void
.end method

.method public synthetic lambda$addWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1433
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1434
    return-void
.end method

.method public synthetic lambda$addWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1437
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1438
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1439
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1440
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1441
    return-void
.end method

.method public synthetic lambda$addWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1444
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1446
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1447
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1448
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1449
    return-void
.end method

.method public synthetic lambda$addWindowLw$8$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1452
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_1

    .line 1454
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1456
    :cond_1
    return-void
.end method

.method public synthetic lambda$getImeSourceFrameProvider$9$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1499
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1505
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1506
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1507
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1508
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1510
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1512
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$DisplayPolicy()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 914
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 915
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 916
    monitor-exit v0

    .line 917
    return-void

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyDisplayReady$13$DisplayPolicy()V
    .locals 2

    .line 3664
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3665
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 3666
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 3667
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 3668
    .local v1, "wpMgr":Lcom/android/server/wallpaper/WallpaperManagerInternal;
    if-eqz v1, :cond_0

    .line 3669
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 3671
    :cond_0
    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$10$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "contentFrame"    # Landroid/graphics/Rect;

    .line 1937
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1938
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    .line 1937
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

    .line 1945
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$updateHideNavInputEventReceiver$12$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1
    .param p1, "x$0"    # Landroid/view/InputChannel;
    .param p2, "x$1"    # Landroid/os/Looper;

    .line 2060
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

    .line 4194
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4195
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_2

    .line 4196
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    .line 4197
    .local v1, "displayId":I
    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    invoke-interface {v0, v1, v2, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    .line 4199
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 4200
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[I)V

    .line 4202
    :cond_0
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 4203
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 4205
    :cond_1
    invoke-interface {v0, v1, p4, p5, p6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    .line 4207
    invoke-interface {v0, v1, p7, p8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZZ)V

    .line 4210
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4211
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const v4, -0x30000001

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    .line 4213
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4215
    .end local v1    # "displayId":I
    :cond_2
    :goto_0
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 55
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attached"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2492
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

    goto/16 :goto_3d

    :cond_1
    :goto_0
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v0, :cond_81

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 2493
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p3

    goto/16 :goto_3d

    .line 2496
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 2498
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2499
    .local v15, "type":I
    invoke-static {v12, v14}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 2500
    .local v10, "fl":I
    iget v9, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2501
    .local v9, "pfl":I
    iget v8, v14, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2502
    .local v8, "sim":I
    const/4 v0, 0x0

    invoke-static {v0, v14}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v16

    .line 2510
    .local v16, "requestedSysUiFl":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 2511
    .local v17, "isQuickReplyWin":Z
    invoke-static {v14}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v0, v16, v0

    .line 2512
    .local v0, "sysUiFl":I
    if-eqz v17, :cond_3

    .line 2513
    or-int/lit8 v0, v0, 0x4

    move v7, v0

    goto :goto_1

    .line 2512
    :cond_3
    move v7, v0

    .line 2517
    .end local v0    # "sysUiFl":I
    .local v7, "sysUiFl":I
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v6

    .line 2518
    .end local p3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v6, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v5

    .line 2520
    .local v5, "windowFrames":Lcom/android/server/wm/WindowFrames;
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2521
    iget-object v4, v5, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 2522
    .local v4, "pf":Landroid/graphics/Rect;
    iget-object v3, v5, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 2523
    .local v3, "df":Landroid/graphics/Rect;
    iget-object v2, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 2524
    .local v2, "cf":Landroid/graphics/Rect;
    iget-object v1, v5, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 2525
    .local v1, "vf":Landroid/graphics/Rect;
    iget-object v0, v5, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 2526
    .local v0, "dcf":Landroid/graphics/Rect;
    move/from16 v24, v7

    .end local v7    # "sysUiFl":I
    .local v24, "sysUiFl":I
    iget-object v7, v5, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 2527
    .local v7, "sf":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2528
    move-object/from16 p3, v0

    .end local v0    # "dcf":Landroid/graphics/Rect;
    .local p3, "dcf":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 2531
    invoke-direct {v11, v14}, Lcom/android/server/wm/DisplayPolicy;->opRemoveNavArea(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v25

    .line 2534
    .local v25, "forceNoNavBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v18

    move-object/from16 v26, v5

    .end local v5    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v26, "windowFrames":Lcom/android/server/wm/WindowFrames;
    if-eqz v18, :cond_4

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    .line 2535
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

    .line 2547
    .local v28, "hasNavBar":Z
    and-int/lit16 v0, v8, 0xf0

    .line 2548
    .local v0, "adjust":I
    const/16 v29, 0x0

    .line 2550
    .local v29, "blockAdjustIME":Z
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v18

    if-eqz v18, :cond_5

    iget-object v5, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2551
    invoke-static {v5}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2552
    const/16 v0, 0x30

    move v5, v0

    goto :goto_3

    .line 2556
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

    .line 2557
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

    .line 2559
    .local v33, "layoutInsetDecor":Z
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2564
    const/16 v8, 0x7db

    const/4 v0, 0x4

    if-ne v15, v8, :cond_b

    .line 2565
    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 2566
    iget v8, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v8, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2567
    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 2568
    .local v8, "orientation":I
    const/16 v18, 0x0

    .line 2569
    .local v18, "navHeightOffset":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_9

    .line 2570
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 2571
    .local v0, "uimode":I
    move/from16 v20, v8

    .end local v8    # "orientation":I
    .local v20, "orientation":I
    iget v8, v6, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2572
    .local v8, "rotation":I
    invoke-direct {v11, v8, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v18

    .line 2574
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2575
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

    .line 2577
    .local v0, "inputMethodPaddingLand":I
    move v8, v0

    move/from16 v18, v8

    .end local v18    # "navHeightOffset":I
    .local v8, "navHeightOffset":I
    goto :goto_6

    .line 2574
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

    .line 2579
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

    .line 2580
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x506009b

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2582
    .local v0, "inputMethodPaddingLand":I
    move/from16 v18, v0

    goto :goto_7

    .line 2579
    .end local v0    # "inputMethodPaddingLand":I
    :cond_a
    :goto_6
    nop

    .line 2586
    :goto_7
    if-lez v18, :cond_b

    .line 2587
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2588
    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 2594
    .end local v18    # "navHeightOffset":I
    .end local v20    # "orientation":I
    :cond_b
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const-string v8, "WindowManager"

    move-object/from16 v37, v7

    .end local v7    # "sf":Landroid/graphics/Rect;
    .local v37, "sf":Landroid/graphics/Rect;
    const/4 v7, 0x2

    if-ne v0, v7, :cond_25

    .line 2595
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    .line 2596
    .local v0, "typesToFit":I
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v38

    .line 2597
    .local v38, "sidesToFit":I
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 2598
    .local v7, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move/from16 v39, v0

    .end local v0    # "typesToFit":I
    .local v39, "typesToFit":I
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2599
    .local v0, "dfu":Landroid/graphics/Rect;
    move/from16 v40, v15

    const/4 v15, 0x0

    .end local v15    # "type":I
    .local v40, "type":I
    invoke-static {v15, v15, v15, v15}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v20

    .line 2600
    .local v20, "insets":Landroid/graphics/Insets;
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

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

    .line 2601
    iget-object v10, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v10

    .line 2602
    invoke-virtual {v10, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v10

    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    move-object/from16 v43, v1

    .end local v1    # "vf":Landroid/graphics/Rect;
    .local v43, "vf":Landroid/graphics/Rect;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 2603
    .local v1, "source":Landroid/view/InsetsSource;
    if-nez v1, :cond_c

    .line 2604
    move-object/from16 v44, v7

    goto :goto_a

    .line 2608
    :cond_c
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2609
    invoke-static {v10}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v17, :cond_d

    .line 2610
    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v44, v7

    const/16 v7, 0xd

    .end local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v44, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-ne v10, v7, :cond_f

    .line 2611
    sget-boolean v7, Lcom/android/server/wm/DisplayPolicy;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_10

    .line 2612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickReply: Avoid IME adjust for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2609
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v44, v7

    .end local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    goto :goto_9

    .line 2608
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v44, v7

    .line 2617
    .end local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_f
    :goto_9
    nop

    .line 2618
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v7

    .line 2617
    invoke-virtual {v1, v0, v7}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    .line 2600
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_10
    :goto_a
    add-int/lit8 v15, v15, -0x1

    move/from16 v10, v42

    move-object/from16 v1, v43

    move-object/from16 v7, v44

    goto :goto_8

    .end local v43    # "vf":Landroid/graphics/Rect;
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v1, "vf":Landroid/graphics/Rect;
    .restart local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_11
    move-object/from16 v43, v1

    move-object/from16 v44, v7

    .line 2620
    .end local v1    # "vf":Landroid/graphics/Rect;
    .end local v7    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .restart local v43    # "vf":Landroid/graphics/Rect;
    .restart local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    and-int/lit8 v1, v38, 0x1

    if-eqz v1, :cond_12

    iget v1, v2, Landroid/graphics/Insets;->left:I

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 2621
    .local v1, "left":I
    :goto_b
    and-int/lit8 v7, v38, 0x2

    if-eqz v7, :cond_13

    iget v7, v2, Landroid/graphics/Insets;->top:I

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    .line 2622
    .local v7, "top":I
    :goto_c
    and-int/lit8 v10, v38, 0x4

    if-eqz v10, :cond_14

    iget v10, v2, Landroid/graphics/Insets;->right:I

    goto :goto_d

    :cond_14
    const/4 v10, 0x0

    .line 2623
    .local v10, "right":I
    :goto_d
    and-int/lit8 v15, v38, 0x8

    if-eqz v15, :cond_15

    iget v15, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_e

    :cond_15
    const/4 v15, 0x0

    .line 2624
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

    invoke-virtual {v3, v1, v7, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2625
    if-nez v13, :cond_19

    .line 2626
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2627
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v9

    if-eqz v2, :cond_17

    .line 2628
    iget-object v2, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    .line 2629
    invoke-virtual {v2, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    const/16 v10, 0xd

    invoke-virtual {v2, v10}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 2630
    .local v2, "source":Landroid/view/InsetsSource;
    if-eqz v2, :cond_16

    .line 2631
    move-object/from16 v47, v0

    const/4 v10, 0x0

    .end local v0    # "dfu":Landroid/graphics/Rect;
    .local v47, "dfu":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v10}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_f

    .line 2630
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .restart local v0    # "dfu":Landroid/graphics/Rect;
    :cond_16
    move-object/from16 v47, v0

    .end local v0    # "dfu":Landroid/graphics/Rect;
    .restart local v47    # "dfu":Landroid/graphics/Rect;
    goto :goto_f

    .line 2627
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .restart local v0    # "dfu":Landroid/graphics/Rect;
    :cond_17
    move-object/from16 v47, v0

    .line 2634
    .end local v0    # "dfu":Landroid/graphics/Rect;
    .restart local v47    # "dfu":Landroid/graphics/Rect;
    :goto_f
    const/16 v0, 0x30

    if-eq v5, v0, :cond_18

    .line 2635
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    goto :goto_10

    :cond_18
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2634
    :goto_10
    move-object/from16 v2, v43

    .end local v43    # "vf":Landroid/graphics/Rect;
    .local v2, "vf":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v10, v42

    goto :goto_12

    .line 2637
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

    .line 2638
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2640
    :goto_12
    const/16 v0, 0x10

    if-eq v5, v0, :cond_1b

    .line 2641
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_13

    :cond_1b
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 2640
    :goto_13
    move/from16 v42, v7

    move-object/from16 v7, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .local v7, "cf":Landroid/graphics/Rect;
    .local v42, "top":I
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2642
    iget-object v0, v6, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    move/from16 v41, v1

    move-object/from16 v1, p3

    .end local p3    # "dcf":Landroid/graphics/Rect;
    .local v1, "dcf":Landroid/graphics/Rect;
    .local v41, "left":I
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2647
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

    .line 2648
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2649
    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v15

    move-object/from16 v19, v13

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-static/range {v18 .. v23}, Lcom/android/server/wm/OpQuickReplyInjector;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v13, 0x0

    goto :goto_14

    .line 2650
    :cond_1c
    if-eqz v17, :cond_1d

    .line 2651
    const/4 v13, 0x0

    iput v13, v7, Landroid/graphics/Rect;->top:I

    goto :goto_14

    .line 2650
    :cond_1d
    const/4 v13, 0x0

    .line 2657
    :goto_14
    const/16 v15, 0x7db

    if-ne v0, v15, :cond_21

    .line 2658
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v15

    if-eqz v15, :cond_20

    .line 2659
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    .line 2660
    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    .line 2661
    .local v15, "orientationMode":I
    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mInputMethodName:Ljava/lang/String;

    move-object/from16 v20, v8

    const-string v8, "com.iflytek.inputmethod.oneplus"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x2

    if-ne v15, v8, :cond_1f

    .line 2663
    iget-object v8, v12, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 2664
    .local v8, "keyboardBounds":Landroid/graphics/Rect;
    iget v13, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v15

    .end local v15    # "orientationMode":I
    .local v18, "orientationMode":I
    iget v15, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    const/16 v15, 0x438

    if-gt v13, v15, :cond_1e

    .line 2665
    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2666
    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2667
    .local v13, "res":Landroid/content/res/Resources;
    const v15, 0x10501b1

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 2669
    .local v15, "navBarHeight":I
    move-object/from16 v19, v8

    .end local v8    # "keyboardBounds":Landroid/graphics/Rect;
    .local v19, "keyboardBounds":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v15

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_15

    .line 2664
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v15    # "navBarHeight":I
    .end local v19    # "keyboardBounds":Landroid/graphics/Rect;
    .restart local v8    # "keyboardBounds":Landroid/graphics/Rect;
    :cond_1e
    move-object/from16 v19, v8

    .end local v8    # "keyboardBounds":Landroid/graphics/Rect;
    .restart local v19    # "keyboardBounds":Landroid/graphics/Rect;
    goto :goto_15

    .line 2661
    .end local v18    # "orientationMode":I
    .end local v19    # "keyboardBounds":Landroid/graphics/Rect;
    .local v15, "orientationMode":I
    :cond_1f
    move/from16 v18, v15

    .end local v15    # "orientationMode":I
    .restart local v18    # "orientationMode":I
    goto :goto_15

    .line 2658
    .end local v18    # "orientationMode":I
    :cond_20
    move-object/from16 v20, v8

    goto :goto_15

    .line 2657
    :cond_21
    move-object/from16 v20, v8

    .line 2677
    :goto_15
    const/16 v8, 0x7f6

    if-ne v0, v8, :cond_22

    .line 2678
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "ScreenDecorOverlayExpand"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    :cond_22
    const/16 v8, 0x7d3

    if-ne v0, v8, :cond_24

    .line 2679
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "com.android.nfc"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2680
    :cond_23
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2681
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2682
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2686
    .end local v38    # "sidesToFit":I
    .end local v39    # "typesToFit":I
    .end local v41    # "left":I
    .end local v42    # "top":I
    .end local v44    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v45    # "insets":Landroid/graphics/Insets;
    .end local v46    # "right":I
    .end local v47    # "dfu":Landroid/graphics/Rect;
    .end local p3    # "bottom":I
    :cond_24
    move-object/from16 v13, p2

    move v15, v0

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object/from16 v24, v37

    move-object v7, v6

    move-object v6, v4

    goto/16 :goto_30

    .end local v0    # "type":I
    .end local v7    # "cf":Landroid/graphics/Rect;
    .local v1, "vf":Landroid/graphics/Rect;
    .local v2, "cf":Landroid/graphics/Rect;
    .local v15, "type":I
    .local p3, "dcf":Landroid/graphics/Rect;
    :cond_25
    move-object v7, v2

    move-object/from16 v20, v8

    move v0, v15

    move-object v2, v1

    move-object/from16 v1, p3

    .end local v15    # "type":I
    .end local p3    # "dcf":Landroid/graphics/Rect;
    .restart local v0    # "type":I
    .local v1, "dcf":Landroid/graphics/Rect;
    .local v2, "vf":Landroid/graphics/Rect;
    .restart local v7    # "cf":Landroid/graphics/Rect;
    const/16 v8, 0x7db

    if-ne v0, v8, :cond_2b

    .line 2687
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2688
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2689
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2690
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2692
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iput v13, v3, Landroid/graphics/Rect;->bottom:I

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 2694
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iput v13, v2, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Landroid/graphics/Rect;->bottom:I

    .line 2695
    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_27

    iget-object v15, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v15, v13, :cond_27

    invoke-direct {v11, v13}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 2698
    iget v13, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_26

    .line 2699
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    iput v13, v2, Landroid/graphics/Rect;->right:I

    iput v13, v7, Landroid/graphics/Rect;->right:I

    iput v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v4, Landroid/graphics/Rect;->right:I

    goto :goto_16

    .line 2701
    :cond_26
    const/4 v8, 0x1

    if-ne v13, v8, :cond_28

    .line 2702
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v2, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iput v8, v3, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_16

    .line 2695
    :cond_27
    const/4 v15, 0x2

    .line 2709
    :cond_28
    :goto_16
    iget v8, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v13, 0x4

    if-ne v8, v13, :cond_2a

    .line 2710
    iget v8, v6, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2711
    .local v8, "rotation":I
    iget-object v13, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v13}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v13

    .line 2712
    .local v13, "uimode":I
    invoke-direct {v11, v8, v13}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v18

    .line 2713
    invoke-direct {v11, v8, v13}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v19

    sub-int v18, v18, v19

    .line 2714
    .local v18, "navHeightOffset":I
    if-lez v18, :cond_29

    .line 2715
    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v15, v18

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    .line 2716
    move/from16 v19, v8

    move-object/from16 v15, v37

    .end local v8    # "rotation":I
    .end local v37    # "sf":Landroid/graphics/Rect;
    .local v15, "sf":Landroid/graphics/Rect;
    .local v19, "rotation":I
    iget v8, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v15, Landroid/graphics/Rect;->bottom:I

    .line 2717
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 2718
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, v18

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_17

    .line 2714
    .end local v15    # "sf":Landroid/graphics/Rect;
    .end local v19    # "rotation":I
    .restart local v8    # "rotation":I
    .restart local v37    # "sf":Landroid/graphics/Rect;
    :cond_29
    move/from16 v19, v8

    move-object/from16 v15, v37

    .end local v8    # "rotation":I
    .end local v37    # "sf":Landroid/graphics/Rect;
    .restart local v15    # "sf":Landroid/graphics/Rect;
    .restart local v19    # "rotation":I
    goto :goto_17

    .line 2709
    .end local v13    # "uimode":I
    .end local v15    # "sf":Landroid/graphics/Rect;
    .end local v18    # "navHeightOffset":I
    .end local v19    # "rotation":I
    .restart local v37    # "sf":Landroid/graphics/Rect;
    :cond_2a
    move-object/from16 v15, v37

    .line 2723
    .end local v37    # "sf":Landroid/graphics/Rect;
    .restart local v15    # "sf":Landroid/graphics/Rect;
    :goto_17
    const/16 v8, 0x50

    iput v8, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    .line 2724
    .end local v15    # "sf":Landroid/graphics/Rect;
    .restart local v37    # "sf":Landroid/graphics/Rect;
    :cond_2b
    move-object/from16 v15, v37

    .end local v37    # "sf":Landroid/graphics/Rect;
    .restart local v15    # "sf":Landroid/graphics/Rect;
    const/16 v8, 0x7ef

    if-ne v0, v8, :cond_2e

    .line 2725
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2726
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2727
    const/16 v13, 0x10

    if-eq v5, v13, :cond_2c

    .line 2728
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_18

    .line 2730
    :cond_2c
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2732
    :goto_18
    const/16 v13, 0x30

    if-eq v5, v13, :cond_2d

    .line 2733
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    .line 2735
    :cond_2d
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    .line 2737
    :cond_2e
    const/16 v13, 0x7dd

    if-ne v0, v13, :cond_2f

    .line 2738
    invoke-direct {v11, v6, v4, v3, v7}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_30

    .line 2739
    :cond_2f
    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v8, :cond_63

    const/16 v8, 0x7f8

    if-ne v0, v8, :cond_30

    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    goto/16 :goto_2f

    .line 2760
    :cond_30
    iget-object v13, v6, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2761
    const/4 v13, 0x1

    if-lt v0, v13, :cond_31

    const/16 v13, 0x63

    if-gt v0, v13, :cond_31

    const/4 v13, 0x1

    goto :goto_19

    :cond_31
    const/4 v13, 0x0

    .line 2763
    .local v13, "isAppWindow":Z
    :goto_19
    iget-object v8, v11, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v12, v8, :cond_32

    .line 2764
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_32

    const/4 v8, 0x1

    goto :goto_1a

    :cond_32
    const/4 v8, 0x0

    :goto_1a
    move/from16 v21, v8

    .line 2765
    .local v21, "topAtRest":Z
    if-eqz v13, :cond_34

    if-nez v21, :cond_34

    .line 2766
    and-int/lit8 v8, v24, 0x4

    if-nez v8, :cond_33

    and-int/lit16 v8, v10, 0x400

    if-nez v8, :cond_33

    const/high16 v8, 0x4000000

    and-int/2addr v8, v10

    if-nez v8, :cond_33

    const/high16 v8, -0x80000000

    and-int v22, v10, v8

    if-nez v22, :cond_33

    const/high16 v8, 0x20000

    and-int/2addr v8, v9

    if-nez v8, :cond_33

    .line 2772
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 2774
    :cond_33
    const/high16 v8, 0x8000000

    and-int/2addr v8, v10

    if-nez v8, :cond_34

    and-int/lit8 v8, v24, 0x2

    if-nez v8, :cond_34

    const/high16 v8, -0x80000000

    and-int v22, v10, v8

    if-nez v22, :cond_34

    const/high16 v22, 0x20000

    and-int v22, v9, v22

    if-nez v22, :cond_34

    .line 2779
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 2780
    iget-object v8, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 2784
    :cond_34
    const-string v8, "layoutWindowLw("

    if-eqz v32, :cond_46

    if-eqz v33, :cond_46

    .line 2785
    sget-boolean v37, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v37, :cond_35

    move/from16 v40, v0

    .end local v0    # "type":I
    .restart local v40    # "type":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v20

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .end local v40    # "type":I
    .restart local v0    # "type":I
    :cond_35
    move/from16 v40, v0

    move-object/from16 v8, v20

    .line 2790
    .end local v0    # "type":I
    .restart local v40    # "type":I
    :goto_1b
    move-object/from16 v0, p2

    if-eqz v0, :cond_36

    .line 2793
    const/16 v18, 0x1

    move-object/from16 v27, v1

    move/from16 v20, v13

    move-object/from16 v37, v15

    move/from16 v15, v40

    const/4 v1, 0x0

    move-object v13, v0

    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v13    # "isAppWindow":Z
    .end local v40    # "type":I
    .local v15, "type":I
    .local v20, "isAppWindow":Z
    .local v27, "dcf":Landroid/graphics/Rect;
    .restart local v37    # "sf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v43, v2

    .end local v2    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    move v2, v10

    move-object/from16 v35, v3

    .end local v3    # "df":Landroid/graphics/Rect;
    .local v35, "df":Landroid/graphics/Rect;
    move v3, v5

    move-object/from16 v38, v4

    .end local v4    # "pf":Landroid/graphics/Rect;
    .local v38, "pf":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    move v12, v5

    move-object/from16 v48, v26

    move-object/from16 v26, v14

    const/4 v14, 0x1

    .end local v5    # "adjust":I
    .end local v14    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v12, "adjust":I
    .local v26, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v48, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move/from16 v5, v18

    move-object/from16 v30, v6

    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v30, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    move-object/from16 v6, v38

    move-object/from16 v41, v7

    move/from16 v14, v24

    move-object/from16 v24, v37

    .end local v7    # "cf":Landroid/graphics/Rect;
    .end local v37    # "sf":Landroid/graphics/Rect;
    .local v14, "sysUiFl":I
    .local v24, "sf":Landroid/graphics/Rect;
    .local v41, "cf":Landroid/graphics/Rect;
    move-object/from16 v7, v35

    move-object/from16 v49, v8

    move-object/from16 v8, v41

    move/from16 v34, v9

    .end local v9    # "pfl":I
    .local v34, "pfl":I
    move-object/from16 v9, v43

    move v13, v10

    .end local v10    # "fl":I
    .local v13, "fl":I
    move-object/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move v8, v13

    move-object/from16 v7, v30

    move-object/from16 v10, v35

    move-object/from16 v9, v41

    move-object/from16 v5, v43

    move-object/from16 v1, v49

    move-object/from16 v13, p2

    goto/16 :goto_30

    .line 2796
    .end local v12    # "adjust":I
    .end local v20    # "isAppWindow":Z
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v34    # "pfl":I
    .end local v35    # "df":Landroid/graphics/Rect;
    .end local v38    # "pf":Landroid/graphics/Rect;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .end local v43    # "vf":Landroid/graphics/Rect;
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v1    # "dcf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .restart local v3    # "df":Landroid/graphics/Rect;
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .restart local v5    # "adjust":I
    .restart local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v7    # "cf":Landroid/graphics/Rect;
    .restart local v9    # "pfl":I
    .restart local v10    # "fl":I
    .local v13, "isAppWindow":Z
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "sf":Landroid/graphics/Rect;
    .local v24, "sysUiFl":I
    .local v26, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v40    # "type":I
    :cond_36
    move-object/from16 v27, v1

    move-object/from16 v43, v2

    move-object/from16 v35, v3

    move-object/from16 v38, v4

    move v12, v5

    move-object/from16 v30, v6

    move-object/from16 v41, v7

    move-object/from16 v49, v8

    move/from16 v34, v9

    move/from16 v20, v13

    move-object/from16 v48, v26

    move v13, v10

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object/from16 v24, v15

    move/from16 v15, v40

    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "df":Landroid/graphics/Rect;
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "adjust":I
    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v7    # "cf":Landroid/graphics/Rect;
    .end local v9    # "pfl":I
    .end local v10    # "fl":I
    .end local v40    # "type":I
    .restart local v12    # "adjust":I
    .local v13, "fl":I
    .local v14, "sysUiFl":I
    .local v15, "type":I
    .restart local v20    # "isAppWindow":Z
    .local v24, "sf":Landroid/graphics/Rect;
    .local v26, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v34    # "pfl":I
    .restart local v35    # "df":Landroid/graphics/Rect;
    .restart local v38    # "pf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    const/16 v0, 0x7f9

    if-eq v15, v0, :cond_3c

    const/16 v0, 0x7e1

    if-ne v15, v0, :cond_37

    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    goto :goto_1e

    .line 2814
    :cond_37
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    if-lt v15, v0, :cond_38

    const/16 v0, 0x7cf

    if-le v15, v0, :cond_3a

    :cond_38
    const/16 v0, 0x7e4

    if-eq v15, v0, :cond_3a

    const/16 v0, 0x7d9

    if-ne v15, v0, :cond_39

    goto :goto_1c

    :cond_39
    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    goto :goto_1d

    .line 2822
    :cond_3a
    :goto_1c
    move-object/from16 v10, v30

    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v35

    .end local v35    # "df":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2823
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v7, v38

    .end local v38    # "pf":Landroid/graphics/Rect;
    .local v7, "pf":Landroid/graphics/Rect;
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v6, v49

    goto/16 :goto_22

    .line 2814
    .end local v7    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v35    # "df":Landroid/graphics/Rect;
    .restart local v38    # "pf":Landroid/graphics/Rect;
    :cond_3b
    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    .line 2825
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v35    # "df":Landroid/graphics/Rect;
    .end local v38    # "pf":Landroid/graphics/Rect;
    .restart local v7    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :goto_1d
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2826
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v6, v49

    goto :goto_22

    .line 2796
    .end local v7    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v35    # "df":Landroid/graphics/Rect;
    .restart local v38    # "pf":Landroid/graphics/Rect;
    :cond_3c
    move-object/from16 v10, v30

    move-object/from16 v9, v35

    move-object/from16 v7, v38

    .line 2803
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v35    # "df":Landroid/graphics/Rect;
    .end local v38    # "pf":Landroid/graphics/Rect;
    .restart local v7    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :goto_1e
    if-eqz v28, :cond_3d

    .line 2804
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_1f

    :cond_3d
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_1f
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 2805
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 2806
    if-eqz v28, :cond_3e

    .line 2807
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_20

    .line 2808
    :cond_3e
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_20
    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 2809
    if-eqz v28, :cond_3f

    .line 2810
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_21

    .line 2811
    :cond_3f
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_21
    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 2813
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Laying out status bar window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v49

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_40
    move-object/from16 v6, v49

    .line 2829
    :goto_22
    and-int/lit16 v0, v13, 0x400

    if-nez v0, :cond_44

    .line 2830
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2831
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v5, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 2835
    .end local v5    # "cf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    :cond_41
    move-object/from16 v5, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .restart local v5    # "cf":Landroid/graphics/Rect;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_43

    const/16 v0, 0x10

    if-eq v12, v0, :cond_42

    goto :goto_23

    .line 2839
    :cond_42
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 2837
    :cond_43
    :goto_23
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 2846
    .end local v5    # "cf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    :cond_44
    move-object/from16 v5, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .restart local v5    # "cf":Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2848
    :goto_24
    invoke-direct {v11, v14, v13, v5, v10}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2849
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_45

    const/16 v0, 0x30

    if-eq v12, v0, :cond_45

    .line 2851
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v4, v43

    .end local v43    # "vf":Landroid/graphics/Rect;
    .local v4, "vf":Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move v8, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_30

    .line 2849
    .end local v4    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_45
    move-object/from16 v4, v43

    .line 2853
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v4    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move v8, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_30

    .line 2784
    .end local v12    # "adjust":I
    .end local v20    # "isAppWindow":Z
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v34    # "pfl":I
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v0    # "type":I
    .restart local v1    # "dcf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .restart local v3    # "df":Landroid/graphics/Rect;
    .local v4, "pf":Landroid/graphics/Rect;
    .local v5, "adjust":I
    .restart local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v7, "cf":Landroid/graphics/Rect;
    .local v9, "pfl":I
    .local v10, "fl":I
    .local v13, "isAppWindow":Z
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "sf":Landroid/graphics/Rect;
    .local v24, "sysUiFl":I
    .local v26, "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_46
    move-object/from16 v27, v1

    move v12, v5

    move-object v5, v7

    move/from16 v34, v9

    move-object/from16 v48, v26

    move-object v9, v3

    move-object v7, v4

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v4, v2

    move-object/from16 v24, v15

    move v15, v0

    move/from16 v54, v10

    move-object v10, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v54

    .line 2856
    .end local v0    # "type":I
    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "df":Landroid/graphics/Rect;
    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v4, "vf":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    .local v7, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v12    # "adjust":I
    .local v13, "fl":I
    .local v14, "sysUiFl":I
    .local v15, "type":I
    .restart local v20    # "isAppWindow":Z
    .local v24, "sf":Landroid/graphics/Rect;
    .local v26, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v34    # "pfl":I
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    if-nez v32, :cond_51

    and-int/lit16 v0, v14, 0x600

    if-eqz v0, :cond_47

    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move/from16 v50, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_28

    .line 2947
    :cond_47
    move v3, v13

    move-object/from16 v13, p2

    .end local v13    # "fl":I
    .local v3, "fl":I
    if-eqz v13, :cond_49

    .line 2948
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): attached to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    :cond_48
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v50, v3

    .end local v3    # "fl":I
    .local v50, "fl":I
    move v3, v12

    move-object/from16 v43, v4

    .end local v4    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    move-object/from16 v41, v5

    .end local v5    # "cf":Landroid/graphics/Rect;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    move v5, v8

    move-object v8, v6

    move-object v6, v7

    move-object/from16 v51, v7

    .end local v7    # "pf":Landroid/graphics/Rect;
    .local v51, "pf":Landroid/graphics/Rect;
    move-object v7, v9

    move-object/from16 v52, v8

    move-object/from16 v8, v41

    move-object/from16 v53, v9

    .end local v9    # "df":Landroid/graphics/Rect;
    .local v53, "df":Landroid/graphics/Rect;
    move-object/from16 v9, v43

    move-object/from16 v30, v10

    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v7, v30

    move-object/from16 v9, v41

    move-object/from16 v5, v43

    move/from16 v8, v50

    move-object/from16 v6, v51

    move-object/from16 v1, v52

    move-object/from16 v10, v53

    goto/16 :goto_30

    .line 2955
    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .end local v43    # "vf":Landroid/graphics/Rect;
    .end local v50    # "fl":I
    .end local v51    # "pf":Landroid/graphics/Rect;
    .end local v53    # "df":Landroid/graphics/Rect;
    .restart local v3    # "fl":I
    .restart local v4    # "vf":Landroid/graphics/Rect;
    .restart local v5    # "cf":Landroid/graphics/Rect;
    .restart local v7    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_49
    move/from16 v50, v3

    move-object/from16 v43, v4

    move-object/from16 v41, v5

    move-object/from16 v52, v6

    move-object/from16 v51, v7

    move-object/from16 v53, v9

    move-object/from16 v30, v10

    .end local v3    # "fl":I
    .end local v4    # "vf":Landroid/graphics/Rect;
    .end local v5    # "cf":Landroid/graphics/Rect;
    .end local v7    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    .restart local v50    # "fl":I
    .restart local v51    # "pf":Landroid/graphics/Rect;
    .restart local v53    # "df":Landroid/graphics/Rect;
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): normal window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v52

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_4a
    move-object/from16 v1, v52

    .line 2959
    :goto_25
    const/16 v0, 0x7f9

    if-ne v15, v0, :cond_4b

    .line 2963
    move-object/from16 v7, v30

    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v7, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v41

    .end local v41    # "cf":Landroid/graphics/Rect;
    .local v9, "cf":Landroid/graphics/Rect;
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2964
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v10, v53

    .end local v53    # "df":Landroid/graphics/Rect;
    .local v10, "df":Landroid/graphics/Rect;
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2965
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v6, v51

    .end local v51    # "pf":Landroid/graphics/Rect;
    .local v6, "pf":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v5, v43

    move/from16 v8, v50

    goto/16 :goto_30

    .line 2966
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v10    # "df":Landroid/graphics/Rect;
    .restart local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v41    # "cf":Landroid/graphics/Rect;
    .restart local v51    # "pf":Landroid/graphics/Rect;
    .restart local v53    # "df":Landroid/graphics/Rect;
    :cond_4b
    move-object/from16 v7, v30

    move-object/from16 v9, v41

    move-object/from16 v6, v51

    move-object/from16 v10, v53

    .end local v30    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v41    # "cf":Landroid/graphics/Rect;
    .end local v51    # "pf":Landroid/graphics/Rect;
    .end local v53    # "df":Landroid/graphics/Rect;
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v9    # "cf":Landroid/graphics/Rect;
    .restart local v10    # "df":Landroid/graphics/Rect;
    const/16 v0, 0x7d5

    if-eq v15, v0, :cond_50

    const/16 v0, 0x7d3

    if-ne v15, v0, :cond_4c

    move-object/from16 v5, v43

    goto :goto_27

    .line 2972
    :cond_4c
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2974
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2975
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    .line 2976
    :cond_4d
    const/16 v0, 0x10

    if-eq v12, v0, :cond_4e

    .line 2977
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2978
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    .line 2980
    :cond_4e
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2981
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2983
    :goto_26
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_4f

    const/16 v0, 0x30

    if-eq v12, v0, :cond_4f

    .line 2985
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v5, v43

    .end local v43    # "vf":Landroid/graphics/Rect;
    .local v5, "vf":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v8, v50

    goto/16 :goto_30

    .line 2983
    .end local v5    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_4f
    move-object/from16 v5, v43

    .line 2987
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v5    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v8, v50

    goto/16 :goto_30

    .line 2966
    .end local v5    # "vf":Landroid/graphics/Rect;
    .restart local v43    # "vf":Landroid/graphics/Rect;
    :cond_50
    move-object/from16 v5, v43

    .line 2968
    .end local v43    # "vf":Landroid/graphics/Rect;
    .restart local v5    # "vf":Landroid/graphics/Rect;
    :goto_27
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2969
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2970
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v8, v50

    goto/16 :goto_30

    .line 2856
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v50    # "fl":I
    .restart local v4    # "vf":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    .local v7, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v13    # "fl":I
    :cond_51
    move-object v1, v6

    move-object v6, v7

    move-object v7, v10

    move/from16 v50, v13

    move-object/from16 v13, p2

    move-object v10, v9

    move-object v9, v5

    move-object v5, v4

    .line 2859
    .end local v4    # "vf":Landroid/graphics/Rect;
    .end local v13    # "fl":I
    .local v5, "vf":Landroid/graphics/Rect;
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .local v7, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "cf":Landroid/graphics/Rect;
    .local v10, "df":Landroid/graphics/Rect;
    .restart local v50    # "fl":I
    :goto_28
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): IN_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_52
    const/16 v0, 0x7f9

    if-eq v15, v0, :cond_5f

    const/16 v0, 0x7e1

    if-ne v15, v0, :cond_53

    move/from16 v8, v50

    goto/16 :goto_2d

    .line 2874
    :cond_53
    const/16 v0, 0x7e3

    if-eq v15, v0, :cond_5e

    const/16 v0, 0x7e8

    if-ne v15, v0, :cond_54

    move/from16 v8, v50

    goto/16 :goto_2c

    .line 2883
    :cond_54
    const/16 v0, 0x7df

    if-eq v15, v0, :cond_56

    const/16 v0, 0x7f4

    if-eq v15, v0, :cond_56

    const/16 v0, 0x901

    if-eq v15, v0, :cond_56

    const/16 v0, 0x900

    if-eq v15, v0, :cond_56

    const/16 v0, 0x8ff

    if-eq v15, v0, :cond_56

    const/16 v0, 0x903

    if-eq v15, v0, :cond_56

    const/16 v0, 0x902

    if-ne v15, v0, :cond_55

    goto :goto_29

    :cond_55
    move/from16 v8, v50

    goto :goto_2a

    :cond_56
    :goto_29
    move/from16 v8, v50

    .end local v50    # "fl":I
    .local v8, "fl":I
    and-int/lit16 v0, v8, 0x400

    if-eqz v0, :cond_57

    .line 2897
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2898
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2899
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    .line 2900
    :cond_57
    :goto_2a
    const/16 v0, 0x7e5

    if-ne v15, v0, :cond_58

    .line 2902
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2903
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2904
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    .line 2905
    :cond_58
    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_5a

    const/16 v0, 0x7f8

    if-eq v15, v0, :cond_59

    const/16 v0, 0x7d5

    if-eq v15, v0, :cond_59

    const/16 v0, 0x7f2

    if-eq v15, v0, :cond_59

    const/16 v0, 0x7f1

    if-eq v15, v0, :cond_59

    const/4 v0, 0x1

    if-lt v15, v0, :cond_5a

    const/16 v0, 0x7cf

    if-gt v15, v0, :cond_5a

    .line 2918
    :cond_59
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2919
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2920
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    .line 2921
    :cond_5a
    and-int/lit16 v0, v14, 0x400

    if-eqz v0, :cond_5d

    .line 2922
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2923
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2927
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_5c

    const/16 v0, 0x10

    if-eq v12, v0, :cond_5b

    goto :goto_2b

    .line 2931
    :cond_5b
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    .line 2929
    :cond_5c
    :goto_2b
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2e

    .line 2934
    :cond_5d
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2935
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2936
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2e

    .line 2874
    .end local v8    # "fl":I
    .restart local v50    # "fl":I
    :cond_5e
    move/from16 v8, v50

    .line 2876
    .end local v50    # "fl":I
    .restart local v8    # "fl":I
    :goto_2c
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2877
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2878
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Laying out navigation bar window: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 2863
    .end local v8    # "fl":I
    .restart local v50    # "fl":I
    :cond_5f
    move/from16 v8, v50

    .line 2864
    .end local v50    # "fl":I
    .restart local v8    # "fl":I
    :goto_2d
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2865
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2866
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2867
    if-eqz v28, :cond_60

    .line 2868
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 2869
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 2870
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 2873
    :cond_60
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Laying out IN_SCREEN status bar window: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    :cond_61
    :goto_2e
    invoke-direct {v11, v14, v8, v9, v7}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2941
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_62

    const/16 v0, 0x30

    if-eq v12, v0, :cond_62

    .line 2943
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_30

    .line 2945
    :cond_62
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 2739
    .end local v8    # "fl":I
    .end local v12    # "adjust":I
    .end local v20    # "isAppWindow":Z
    .end local v21    # "topAtRest":Z
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v34    # "pfl":I
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v0    # "type":I
    .restart local v1    # "dcf":Landroid/graphics/Rect;
    .restart local v2    # "vf":Landroid/graphics/Rect;
    .local v3, "df":Landroid/graphics/Rect;
    .local v4, "pf":Landroid/graphics/Rect;
    .local v5, "adjust":I
    .local v6, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v7, "cf":Landroid/graphics/Rect;
    .local v9, "pfl":I
    .local v10, "fl":I
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "sf":Landroid/graphics/Rect;
    .local v24, "sysUiFl":I
    .local v26, "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_63
    move-object/from16 v13, p2

    move-object/from16 v27, v1

    move v12, v5

    move/from16 v34, v9

    move v8, v10

    move-object/from16 v1, v20

    move-object/from16 v48, v26

    move-object v5, v2

    move-object v10, v3

    move-object v9, v7

    move-object/from16 v26, v14

    move/from16 v14, v24

    move-object v7, v6

    move-object/from16 v24, v15

    move v15, v0

    move-object v6, v4

    .line 2740
    .end local v0    # "type":I
    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v2    # "vf":Landroid/graphics/Rect;
    .end local v3    # "df":Landroid/graphics/Rect;
    .end local v4    # "pf":Landroid/graphics/Rect;
    .local v5, "vf":Landroid/graphics/Rect;
    .local v6, "pf":Landroid/graphics/Rect;
    .local v7, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v8    # "fl":I
    .local v9, "cf":Landroid/graphics/Rect;
    .local v10, "df":Landroid/graphics/Rect;
    .restart local v12    # "adjust":I
    .local v14, "sysUiFl":I
    .local v15, "type":I
    .local v24, "sf":Landroid/graphics/Rect;
    .local v26, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v34    # "pfl":I
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_2f
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2741
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2742
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2743
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2745
    const/16 v0, 0x10

    if-ne v12, v0, :cond_64

    .line 2748
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_66

    .line 2749
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_30

    .line 2752
    :cond_64
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_65

    .line 2753
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 2755
    :cond_65
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_66

    .line 2756
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 3000
    :cond_66
    :goto_30
    move/from16 v18, v12

    move-object/from16 v12, p1

    .end local v12    # "adjust":I
    .local v18, "adjust":I
    invoke-static {v12, v7}, Lcom/android/server/wm/OpScreenCompatInjector;->resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I

    move-result v4

    .line 3002
    .local v4, "cutoutMode":I
    if-eqz v13, :cond_67

    if-nez v32, :cond_67

    const/4 v0, 0x1

    goto :goto_31

    :cond_67
    const/4 v0, 0x0

    :goto_31
    move/from16 v19, v0

    .line 3003
    .local v19, "attachedInParent":Z
    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_6a

    and-int/lit8 v0, v16, 0x4

    if-nez v0, :cond_6a

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_68

    .line 3006
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_32

    .line 3003
    :cond_68
    const/4 v3, 0x0

    .line 3006
    :cond_69
    move v0, v3

    goto :goto_33

    .line 3003
    :cond_6a
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3006
    :goto_32
    const/4 v0, 0x1

    :goto_33
    move/from16 v20, v0

    .line 3008
    .local v20, "requestedFullscreen":Z
    and-int/lit8 v0, v16, 0x2

    if-nez v0, :cond_6c

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-ne v0, v2, :cond_6b

    .line 3011
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_34

    :cond_6b
    const/4 v0, 0x0

    goto :goto_35

    :cond_6c
    :goto_34
    const/4 v0, 0x1

    :goto_35
    move/from16 v21, v0

    .line 3016
    .local v21, "requestedHideNavigation":Z
    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_6d

    if-eqz v32, :cond_6d

    const/4 v0, 0x1

    if-eq v15, v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_36

    :cond_6d
    const/4 v0, 0x0

    :goto_36
    move/from16 v22, v0

    .line 3020
    .local v22, "floatingInScreenWindow":Z
    const/4 v0, 0x3

    if-eq v4, v0, :cond_7a

    .line 3021
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 3022
    .local v0, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    iget-object v3, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3023
    const/4 v2, 0x1

    if-ne v4, v2, :cond_6f

    .line 3024
    iget v2, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v3, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    if-ge v2, v3, :cond_6e

    .line 3025
    const/high16 v2, -0x80000000

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3026
    const v3, 0x7fffffff

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_37

    .line 3028
    :cond_6e
    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3029
    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_37

    .line 3023
    :cond_6f
    const/high16 v2, -0x80000000

    .line 3033
    :goto_37
    if-eqz v32, :cond_71

    if-eqz v33, :cond_71

    if-nez v20, :cond_71

    if-eqz v4, :cond_70

    const/4 v3, 0x1

    if-ne v4, v3, :cond_71

    .line 3040
    :cond_70
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3042
    :cond_71
    if-eqz v32, :cond_77

    if-eqz v33, :cond_77

    if-nez v21, :cond_77

    if-eqz v4, :cond_73

    const/4 v3, 0x1

    if-ne v4, v3, :cond_72

    goto :goto_38

    :cond_72
    const/4 v3, 0x4

    goto :goto_39

    :cond_73
    const/4 v3, 0x1

    .line 3046
    :goto_38
    iget v2, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-eq v2, v3, :cond_76

    const/4 v3, 0x2

    if-eq v2, v3, :cond_75

    const/4 v3, 0x4

    if-eq v2, v3, :cond_74

    goto :goto_39

    .line 3048
    :cond_74
    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3049
    goto :goto_39

    .line 3051
    :cond_75
    const v2, 0x7fffffff

    const/4 v3, 0x4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3052
    goto :goto_39

    .line 3054
    :cond_76
    const/4 v3, 0x4

    const/high16 v2, -0x80000000

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_39

    .line 3042
    :cond_77
    const/4 v3, 0x4

    .line 3058
    :goto_39
    const/16 v2, 0x7db

    if-ne v15, v2, :cond_78

    iget v2, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_78

    .line 3060
    const v2, 0x7fffffff

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3067
    :cond_78
    if-nez v19, :cond_79

    if-nez v22, :cond_79

    .line 3068
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3069
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3070
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    move-object/from16 v3, v48

    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v3, "windowFrames":Lcom/android/server/wm/WindowFrames;
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_3a

    .line 3067
    .end local v3    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_79
    move-object/from16 v3, v48

    .line 3074
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v3    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_3a
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_3b

    .line 3020
    .end local v0    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .end local v3    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_7a
    move-object/from16 v3, v48

    .line 3085
    .end local v48    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v3    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_3b
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/OpScreenCompatInjector;->isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3086
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3092
    :cond_7b
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_7c

    const/16 v0, 0x7da

    if-eq v15, v0, :cond_7c

    .line 3093
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3094
    const/16 v0, -0x2710

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 3095
    const/16 v0, 0x2710

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 3096
    const/16 v0, 0x7dd

    if-eq v15, v0, :cond_7c

    .line 3097
    const/16 v0, -0x2710

    iput v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 3098
    const/16 v0, 0x2710

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 3102
    :cond_7c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute frame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": sim=#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attach="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p3, v4

    const/4 v2, 0x1

    .end local v4    # "cutoutMode":I
    .local p3, "cutoutMode":I
    new-array v4, v2, [Ljava/lang/Object;

    .line 3105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v23, 0x0

    aput-object v2, v4, v23

    const-string v2, " flags=0x%08x"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " df="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dcf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .end local p3    # "cutoutMode":I
    .restart local v4    # "cutoutMode":I
    :cond_7d
    move/from16 p3, v4

    .line 3111
    .end local v4    # "cutoutMode":I
    .restart local p3    # "cutoutMode":I
    :goto_3c
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 3112
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 3117
    :cond_7e
    const/16 v23, 0x0

    move-object v0, v6

    move-object v1, v10

    const/16 v4, 0x7db

    move-object v2, v9

    move-object/from16 v30, v3

    .end local v3    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v30, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move-object v3, v5

    move/from16 v35, p3

    move/from16 v42, v8

    move v8, v4

    .end local v8    # "fl":I
    .end local p3    # "cutoutMode":I
    .local v35, "cutoutMode":I
    .local v42, "fl":I
    move-object/from16 v4, v24

    move-object/from16 v36, v5

    .end local v5    # "vf":Landroid/graphics/Rect;
    .local v36, "vf":Landroid/graphics/Rect;
    move-object/from16 v5, v23

    move-object/from16 v23, v6

    .end local v6    # "pf":Landroid/graphics/Rect;
    .local v23, "pf":Landroid/graphics/Rect;
    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/OpScreenCompatInjector;->resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    .line 3119
    invoke-virtual {v12, v7}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 3122
    if-ne v15, v8, :cond_7f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3123
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 3124
    invoke-direct {v11, v12, v7}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 3126
    :cond_7f
    const/16 v0, 0x7ef

    if-ne v15, v0, :cond_80

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3127
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_80

    .line 3128
    invoke-direct {v11, v12, v7}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 3130
    :cond_80
    return-void

    .line 2492
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v10    # "df":Landroid/graphics/Rect;
    .end local v14    # "sysUiFl":I
    .end local v15    # "type":I
    .end local v16    # "requestedSysUiFl":I
    .end local v17    # "isQuickReplyWin":Z
    .end local v18    # "adjust":I
    .end local v19    # "attachedInParent":Z
    .end local v20    # "requestedFullscreen":Z
    .end local v21    # "requestedHideNavigation":Z
    .end local v22    # "floatingInScreenWindow":Z
    .end local v23    # "pf":Landroid/graphics/Rect;
    .end local v24    # "sf":Landroid/graphics/Rect;
    .end local v25    # "forceNoNavBar":Z
    .end local v26    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v28    # "hasNavBar":Z
    .end local v29    # "blockAdjustIME":Z
    .end local v30    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v31    # "sim":I
    .end local v32    # "layoutInScreen":Z
    .end local v33    # "layoutInsetDecor":Z
    .end local v34    # "pfl":I
    .end local v35    # "cutoutMode":I
    .end local v36    # "vf":Landroid/graphics/Rect;
    .end local v42    # "fl":I
    .local p3, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_81
    move-object/from16 v0, p3

    .line 2494
    :goto_3d
    return-void
.end method

.method public navigationBarCanMove()Z
    .locals 1

    .line 1035
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .locals 2
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .line 3870
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    .line 3871
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 3872
    return v1

    .line 3873
    :cond_0
    if-ne p3, v1, :cond_1

    .line 3874
    const/4 v0, 0x2

    return v0

    .line 3877
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .locals 2

    .line 3663
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3672
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 9

    .line 3494
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 3496
    .local v0, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3497
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 3498
    .local v2, "portraitRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 3499
    .local v3, "upsideDownRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 3500
    .local v4, "landscapeRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    .line 3501
    .local v5, "seascapeRotation":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    .line 3503
    .local v6, "uiMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3504
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x105024b

    .line 3506
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3507
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x105024a

    .line 3509
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    goto :goto_0

    .line 3511
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3518
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501af

    .line 3520
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3521
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501b1

    .line 3523
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3526
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ac

    .line 3528
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3529
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ad

    .line 3531
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3534
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x10501b4

    .line 3538
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3557
    const v7, 0x10e008f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 3558
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 3559
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 3560
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 3561
    invoke-virtual {v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    .line 3562
    const v7, 0x11100a7

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 3563
    const v7, 0x11100a4

    .line 3564
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 3567
    const v7, 0x10501ae

    .line 3568
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3569
    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 3571
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 3575
    sget-boolean v7, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    if-eqz v7, :cond_1

    .line 3576
    invoke-static {}, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->onConfigurationChanged()V

    .line 3582
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->onConfigChanged()V

    .line 3584
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->onConfigurationChanged()V

    .line 3586
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1
    .param p1, "lockTaskState"    # I

    .line 4692
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 4693
    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 1

    .line 3485
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3486
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 3487
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 3488
    return-void
.end method

.method onPowerKeyDown(Z)V
    .locals 6
    .param p1, "isScreenOn"    # Z

    .line 4670
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 4671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4672
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4670
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 4673
    .local v0, "panic":Z
    if-eqz v0, :cond_0

    .line 4674
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4676
    :cond_0
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4679
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 4680
    return-void
.end method

.method release()V
    .locals 3

    .line 4875
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4876
    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1537
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_4

    .line 1548
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1549
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4

    .line 1550
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_2

    .line 1543
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1544
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1545
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1546
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    .line 1538
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1539
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1540
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1541
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1553
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_5

    .line 1554
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1556
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1557
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .locals 1

    .line 4053
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4054
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 4055
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1087
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1088
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1089
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1090
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1091
    monitor-exit v0

    .line 1092
    return-void

    .line 1091
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

    .line 1075
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1077
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1078
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1079
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1080
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1081
    monitor-exit v0

    .line 1082
    return-void

    .line 1081
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

    .line 1596
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

    .line 1598
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

    .line 1599
    if-eq v2, v10, :cond_3

    if-ne v2, v9, :cond_1

    goto :goto_0

    .line 1602
    :cond_1
    if-eq v2, v11, :cond_2

    if-ne v2, v7, :cond_22

    .line 1604
    :cond_2
    return v5

    .line 1601
    :cond_3
    :goto_0
    return v6

    .line 1606
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const v12, 0x10a0029

    const v13, 0x10a002b

    const v14, 0x10a0026

    const v15, 0x10a002a

    const v16, 0x10a0027

    const v17, 0x10a002c

    if-ne v1, v3, :cond_12

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_5

    .line 1608
    return v8

    .line 1611
    :cond_5
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v3, v9, :cond_a

    .line 1612
    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_6

    goto :goto_1

    .line 1619
    :cond_6
    if-eq v2, v11, :cond_7

    if-ne v2, v7, :cond_22

    .line 1621
    :cond_7
    return v14

    .line 1614
    :cond_8
    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1615
    const v3, 0x10a0028

    return v3

    .line 1617
    :cond_9
    return v16

    .line 1623
    :cond_a
    if-ne v3, v10, :cond_e

    .line 1624
    if-eq v2, v10, :cond_d

    if-ne v2, v9, :cond_b

    goto :goto_2

    .line 1627
    :cond_b
    if-eq v2, v11, :cond_c

    if-ne v2, v7, :cond_22

    .line 1629
    :cond_c
    return v13

    .line 1626
    :cond_d
    :goto_2
    return v17

    .line 1631
    :cond_e
    if-ne v3, v11, :cond_22

    .line 1632
    if-eq v2, v10, :cond_11

    if-ne v2, v9, :cond_f

    goto :goto_3

    .line 1635
    :cond_f
    if-eq v2, v11, :cond_10

    if-ne v2, v7, :cond_22

    .line 1637
    :cond_10
    return v12

    .line 1634
    :cond_11
    :goto_3
    return v15

    .line 1640
    :cond_12
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_13

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_22

    .line 1641
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_14

    .line 1642
    return v8

    .line 1645
    :cond_14
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_15

    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    goto :goto_4

    :cond_15
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1647
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

    .line 1648
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

    .line 1650
    .local v7, "isEnterOrShow":Z
    :goto_8
    if-eq v3, v11, :cond_20

    if-eq v3, v10, :cond_1e

    if-eq v3, v9, :cond_1c

    const/16 v9, 0x8

    if-eq v3, v9, :cond_1a

    goto :goto_9

    .line 1673
    :cond_1a
    if-eqz v18, :cond_1b

    .line 1674
    return v6

    .line 1675
    :cond_1b
    if-eqz v7, :cond_22

    .line 1676
    return v5

    .line 1666
    :cond_1c
    if-eqz v18, :cond_1d

    .line 1667
    return v16

    .line 1668
    :cond_1d
    if-eqz v7, :cond_22

    .line 1669
    return v14

    .line 1659
    :cond_1e
    if-eqz v18, :cond_1f

    .line 1660
    return v17

    .line 1661
    :cond_1f
    if-eqz v7, :cond_22

    .line 1662
    return v13

    .line 1652
    :cond_20
    if-eqz v18, :cond_21

    .line 1653
    return v15

    .line 1654
    :cond_21
    if-eqz v7, :cond_22

    .line 1655
    return v12

    .line 1682
    .end local v3    # "pos":I
    .end local v7    # "isEnterOrShow":Z
    .end local v18    # "isExitOrHide":Z
    :cond_22
    :goto_9
    const/4 v3, 0x5

    if-ne v2, v3, :cond_25

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1684
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1687
    const/4 v3, -0x1

    return v3

    .line 1689
    :cond_23
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_24

    const-string v3, "**** STARTING EXIT"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_24
    const v3, 0x10a0013

    return v3

    .line 1694
    :cond_25
    return v8
.end method

.method public setAwake(Z)V
    .locals 0
    .param p1, "awake"    # Z

    .line 1047
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 1048
    return-void
.end method

.method public setDockMode(I)V
    .locals 0
    .param p1, "dockMode"    # I

    .line 977
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 978
    return-void
.end method

.method setForceShowSystemBars(Z)V
    .locals 0
    .param p1, "forceShowSystemBars"    # Z

    .line 988
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 989
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 0
    .param p1, "forwardedInsets"    # Landroid/graphics/Insets;

    .line 3860
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 3861
    return-void
.end method

.method public setHasNavigationBar(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHasNavigationBar to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1001
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .locals 1
    .param p1, "plugged"    # Z

    .line 942
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 943
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .locals 3
    .param p1, "plugged"    # Z
    .param p2, "force"    # Z

    .line 946
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_1

    .line 947
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 948
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 949
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 951
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 954
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setLidState(I)V
    .locals 0
    .param p1, "lidState"    # I

    .line 1039
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 1040
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 0
    .param p1, "persistentVrModeEnabled"    # Z

    .line 969
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 970
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .locals 2
    .param p1, "pointerLocationEnabled"    # Z

    .line 4804
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4805
    return-void

    .line 4808
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 4809
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 4808
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4810
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

    .line 1930
    .local p3, "barContentFrames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1931
    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 1932
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 1933
    new-instance v0, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v0}, Lcom/android/server/wm/WindowFrames;-><init>()V

    .line 1934
    .local v0, "simulatedWindowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 1935
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1942
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 1943
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1948
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1949
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 1950
    return-void
.end method

.method public stopLongshotConnection()V
    .locals 2

    .line 4855
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 4856
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->stopLongshotConnection(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/server/wm/WindowState;)V

    .line 4858
    :cond_0
    return-void
.end method

.method public switchUser()V
    .locals 0

    .line 3478
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3479
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 935
    :cond_0
    return-void
.end method

.method public takeScreenshot(II)V
    .locals 11
    .param p1, "screenshotType"    # I
    .param p2, "source"    # I

    .line 4704
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_2

    .line 4707
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4708
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4709
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v5

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayRotation:I

    .line 4710
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

    .line 4711
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

    .line 4707
    move v7, v0

    move v10, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/OpDisplayPolicyInjector;->takeScreenshot(Lcom/android/server/wm/WindowState;Landroid/content/Context;ZLcom/android/internal/util/ScreenshotHelper;ZIZZLandroid/os/Handler;I)V

    .line 4715
    :cond_2
    return-void
.end method

.method topAppHidesStatusBar()Z
    .locals 8

    .line 3457
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3460
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3461
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 3462
    .local v3, "fl":I
    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 3463
    .local v2, "sysui":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 3464
    invoke-virtual {v4, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 3465
    .local v4, "request":Landroid/view/InsetsSource;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 3466
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

    .line 3467
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

    .line 3469
    :cond_1
    and-int/lit16 v5, v3, 0x400

    if-nez v5, :cond_3

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    .line 3471
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 3469
    :goto_1
    return v1

    .line 3458
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

    .line 3589
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3590
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_0

    const v1, 0x11100a5

    .line 3592
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 3593
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    .line 3594
    return-void
.end method

.method updateHideNavInputEventReceiver()V
    .locals 12

    .line 2032
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 2033
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 2035
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 2037
    .local v3, "navControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    instance-of v4, v3, Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 2038
    .local v4, "navControllingWin":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v4, :cond_2

    .line 2039
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 2040
    .local v5, "requestedState":Landroid/view/InsetsState;
    :goto_2
    if-eqz v5, :cond_3

    .line 2041
    invoke-virtual {v5, v1}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    goto :goto_3

    .line 2042
    :cond_3
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v6

    :goto_3
    nop

    .line 2043
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

    .line 2048
    .local v1, "showBarsByTouch":Z
    :goto_4
    const-string v8, "WindowManager"

    if-nez v6, :cond_6

    if-nez v1, :cond_5

    goto :goto_5

    .line 2056
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2057
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 2058
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 2057
    const-string v11, "nav_input_consumer"

    invoke-virtual {v2, v9, v11, v10}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2061
    const-string v2, "nav_input_consumer created."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_6

    .line 2049
    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v7, :cond_7

    .line 2050
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 2051
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2052
    invoke-virtual {v7, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2051
    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2053
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2054
    const-string v2, "nav_input_consumer dismissed."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_7
    :goto_6
    return-void
.end method

.method updateSystemUiVisibilityLw()I
    .locals 32

    .line 4060
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4061
    :cond_0
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    nop

    .line 4062
    .local v0, "winCandidate":Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 4063
    return v6

    .line 4068
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_6

    .line 4073
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    .line 4074
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    move v1, v6

    .line 4075
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

    .line 4076
    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4077
    :cond_4
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_2
    move-object v0, v2

    .line 4078
    if-nez v0, :cond_5

    .line 4079
    return v6

    .line 4078
    :cond_5
    move-object/from16 v16, v0

    goto :goto_3

    .line 4068
    .end local v1    # "lastFocusCanReceiveKeys":Z
    :cond_6
    move-object/from16 v16, v0

    .line 4082
    .end local v0    # "winCandidate":Lcom/android/server/wm/WindowState;
    .local v16, "winCandidate":Lcom/android/server/wm/WindowState;
    :goto_3
    move-object/from16 v14, v16

    .line 4084
    .local v14, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 4086
    const/4 v0, 0x0

    invoke-static {v14, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iget v2, v15, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    iget v2, v15, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v1, v2

    .line 4089
    .local v1, "tmpVisibility":I
    iget-boolean v2, v15, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v2, :cond_7

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_7

    .line 4090
    const/4 v2, 0x7

    .line 4091
    invoke-static {v14, v2}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    move v11, v1

    goto :goto_4

    .line 4094
    :cond_7
    move v11, v1

    .end local v1    # "tmpVisibility":I
    .local v11, "tmpVisibility":I
    :goto_4
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v6, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v10

    .line 4105
    .local v10, "fullscreenAppearance":I
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v1, :cond_8

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-nez v1, :cond_8

    .line 4109
    invoke-direct {v15, v6, v0, v0}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    move v9, v0

    .local v0, "dockedAppearance":I
    goto :goto_5

    .line 4112
    .end local v0    # "dockedAppearance":I
    :cond_8
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v6, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    move v9, v0

    .line 4117
    .local v9, "dockedAppearance":I
    :goto_5
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 4118
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v17

    .line 4119
    .local v17, "inSplitScreen":Z
    const/4 v0, 0x3

    if-eqz v17, :cond_9

    .line 4120
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    goto :goto_6

    .line 4123
    :cond_9
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 4125
    :goto_6
    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v17, :cond_a

    const/4 v2, 0x4

    goto :goto_7

    .line 4126
    :cond_a
    move v2, v7

    :goto_7
    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 4125
    invoke-virtual {v1, v2, v6, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 4128
    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4129
    invoke-direct {v15, v14, v1, v11}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v8

    .line 4130
    .local v8, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 4131
    .local v12, "visibility":I
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4132
    .local v5, "navColorWin":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_b

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v1, :cond_b

    move v13, v7

    goto :goto_8

    :cond_b
    move v13, v6

    .line 4134
    .local v13, "isNavbarColorManagedByIme":Z
    :goto_8
    invoke-static {v12}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v1

    and-int/lit8 v18, v1, 0x3

    .line 4136
    .local v18, "opaqueAppearance":I
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    .line 4139
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4137
    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "navColorWin":Lcom/android/server/wm/WindowState;
    .local v19, "navColorWin":Lcom/android/server/wm/WindowState;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    or-int v0, v0, v18

    goto :goto_9

    .line 4140
    .end local v19    # "navColorWin":Lcom/android/server/wm/WindowState;
    .restart local v5    # "navColorWin":Lcom/android/server/wm/WindowState;
    :cond_c
    move-object/from16 v19, v5

    .end local v5    # "navColorWin":Lcom/android/server/wm/WindowState;
    .restart local v19    # "navColorWin":Lcom/android/server/wm/WindowState;
    invoke-static {v12}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v0

    :goto_9
    nop

    .line 4141
    .local v0, "appearance":I
    iget v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int/2addr v1, v12

    .line 4142
    .local v1, "diff":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    .line 4143
    .local v2, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_f

    iget-object v3, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 4145
    invoke-static {v14, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_f

    .line 4146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v6}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 4147
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v7}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_a

    :cond_e
    move v3, v6

    goto :goto_b

    :cond_f
    :goto_a
    move v3, v7

    .line 4151
    .local v3, "isFullscreen":Z
    :goto_b
    invoke-static {v3}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->setFullscreenScene(Z)V

    .line 4154
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    .line 4155
    .local v4, "behavior":I
    and-int/lit16 v5, v12, 0x1800

    if-nez v5, :cond_11

    if-eq v4, v7, :cond_11

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v20, v6

    goto :goto_d

    :cond_11
    const/4 v5, 0x2

    :goto_c
    move/from16 v20, v7

    :goto_d
    move/from16 v21, v20

    .line 4159
    .local v21, "isImmersive":Z
    if-nez v1, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v7, v0, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    if-ne v7, v10, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    if-ne v7, v9, :cond_12

    iget v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v7, v4, :cond_12

    iget-boolean v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v7, v3, :cond_12

    iget-boolean v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    move/from16 v5, v21

    .end local v21    # "isImmersive":Z
    .local v5, "isImmersive":Z
    if-ne v7, v5, :cond_13

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 4166
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 4167
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 4168
    const/4 v6, 0x0

    return v6

    .line 4159
    .end local v5    # "isImmersive":Z
    .restart local v21    # "isImmersive":Z
    :cond_12
    move/from16 v5, v21

    .line 4173
    .end local v21    # "isImmersive":Z
    .restart local v5    # "isImmersive":Z
    :cond_13
    iget v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v12, v6}, Lcom/android/server/wm/DisplayPolicy;->getTransientState(II)Landroid/util/Pair;

    move-result-object v23

    .line 4175
    .local v23, "transientState":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    iput v12, v15, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4176
    iput v0, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 4177
    iput v10, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    .line 4178
    iput v9, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    .line 4179
    iput v4, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 4180
    iput-boolean v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 4181
    iput-boolean v5, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    .line 4182
    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4183
    iget-object v6, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4184
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v6

    .line 4185
    .local v7, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v24, v2

    .end local v2    # "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    .local v24, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v6

    .line 4186
    .local v2, "dockedStackBounds":Landroid/graphics/Rect;
    if-eqz v17, :cond_14

    .line 4187
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

    goto :goto_e

    .line 4190
    .end local v22    # "behavior":I
    .end local v25    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v2    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v4    # "behavior":I
    :cond_14
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

    :goto_e
    move v4, v12

    .end local v12    # "visibility":I
    .local v4, "visibility":I
    move-object v12, v2

    .line 4192
    .local v12, "appearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4193
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

    .line 4216
    return v20
.end method

.method validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 1265
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "DisplayPolicy"

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1271
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

    .line 1316
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1319
    goto :goto_0

    .line 1282
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 1286
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1287
    return v4

    .line 1302
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1303
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 1296
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1297
    :cond_4
    return v4

    .line 1311
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1314
    goto :goto_0

    .line 1321
    :cond_6
    const/16 v0, -0xa

    return v0

    .line 1273
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 1277
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1278
    :cond_9
    return v4

    .line 1324
    :cond_a
    :goto_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 1325
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1328
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    .line 1330
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_12

    aget v5, v0, v2

    .line 1331
    .local v5, "insetType":I
    if-eqz v5, :cond_e

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    goto :goto_2

    .line 1339
    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11

    .line 1340
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1341
    :cond_d
    return v4

    .line 1333
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_11

    .line 1334
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1335
    :cond_10
    return v4

    .line 1330
    .end local v5    # "insetType":I
    :cond_11
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1347
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
