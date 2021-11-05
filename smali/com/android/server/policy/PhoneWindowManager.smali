.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
    }
.end annotation


# static fields
.field private static AUTHENTICATE_FACEUNLOCK:I = 0x0

.field private static AUTHENTICATE_FINGERPRINT:I = 0x0

.field private static AUTHENTICATE_IGNORE:I = 0x0

.field private static final AUTH_BEGIN:I = 0x1

.field private static final AUTH_SUCCEEDED:I = 0x2

.field private static final AUTH_SUCCEEDED_SHOW_TOP:I = 0x3

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static DEBUG:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field static DEBUG_SPLASH_SCREEN:Z = false

.field static DEBUG_WAKEUP:Z = false

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field static HEY_TAP_PACKAGE_NAME:Ljava/lang/String; = null

.field private static final KEYGUARD_FINGERPRINT_AUTHENTICATE_TIMEOUT_DURATION:I = 0x3e8

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_ASSISTANT:I = 0x5

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x11

.field private static final MSG_ACCESSIBILITY_TV:I = 0x13

.field private static final MSG_BACK_LONG_PRESS:I = 0x10

.field private static final MSG_BUGREPORT_TV:I = 0x12

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x14

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_HANDLE_ALL_APPS:I = 0x16

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_KEYGUARD_FP_AUTHENTICATED_TIMEOUT:I = 0x66

.field private static final MSG_KEYGUARD_FP_STATE_CHANGE:I = 0x65

.field private static final MSG_LAUNCH_ASSIST:I = 0x17

.field private static final MSG_LAUNCH_ASSIST_LONG_PRESS:I = 0x18

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x19

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x1a

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0xf

.field private static final MSG_SYSTEM_KEY_PRESS:I = 0x15

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final PENDING_KEY_NULL:I = -0x1

.field private static final POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS:I = 0x320

.field static POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String; = null

.field static POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String; = null

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static SHOW_SPLASH_SCREENS:Z = false

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static localLOGV:Z

.field private static final mIsCustomFP:Z

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mA11yShortcutChordVolumeUpKeyConsumed:Z

.field private mA11yShortcutChordVolumeUpKeyTime:J

.field mA11yShortcutChordVolumeUpKeyTriggered:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private mAccessibilityTvKey1Pressed:Z

.field private mAccessibilityTvKey2Pressed:Z

.field private mAccessibilityTvScheduled:Z

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field private mAodShowing:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mBackKeyHandled:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBugreportTvKey1Pressed:Z

.field private mBugreportTvKey2Pressed:Z

.field private mBugreportTvScheduled:Z

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

.field mCarDockIntent:Landroid/content/Intent;

.field mConsumeSearchKeyUp:Z

.field mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field mDeskDockIntent:Landroid/content/Intent;

.field private volatile mDismissImeOnBackKeyPressed:Z

.field private mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field private final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private mExtEventObserver:Landroid/os/UEventObserver;

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHDMISwitchObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field mHapticTextHandleEnabled:Z

.field private mHasFeatureAuto:Z

.field private mHasFeatureHdmiCec:Z

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHomeIntent:Landroid/content/Intent;

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private mKeyguardBound:Z

.field private mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

.field mLanguageSwitchKeyPressed:Z

.field private mLidControlsDisplayFold:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field volatile mPendingWakeKey:I

.field private mPerDisplayFocusEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mPhoneWinHandler:Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

.field private mPhoneWinHandlerThread:Lcom/android/server/ServiceThread;

.field volatile mPictureInPictureVisible:Z

.field private mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

.field private mPowerButtonSuppressionDelayMillis:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPreShowSurface:Z

.field private mPreShowed:Z

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field volatile mRequestedOrGoingToSleep:Z

.field private mRingerToggleChord:I

.field mSafeMode:Z

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field mScreenshotChordVolumeDownKeyTriggered:Z

.field protected final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressOnWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemNavigationKeysEnabled:Z

.field mSystemReady:Z

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field private mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private volatile mTopFocusedDisplayId:I

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUseTvRouting:Z

.field mVeryLongPressOnPowerBehavior:I

.field mVeryLongPressTimeout:I

.field mVibrator:Landroid/os/Vibrator;

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field mWakeOnAssistKeyPress:Z

.field mWakeOnBackKeyPress:Z

.field mWakeOnDpadKeyPress:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mZenModeCallback:Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 280
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    .line 294
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 295
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 296
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 297
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    .line 298
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 299
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    .line 300
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 365
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 366
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 367
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 390
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 391
    const/16 v3, 0x40

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 393
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0x41

    const-string v4, "android.intent.category.APP_EMAIL"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 395
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xcf

    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 397
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd0

    const-string v4, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 399
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd1

    const-string v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 401
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd2

    const-string v4, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 729
    const-string/jumbo v2, "power_long_press_with_assistant_hint"

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    .line 731
    const-string/jumbo v2, "power_long_press_with_google_assistant_hint"

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    .line 733
    const-string v2, "com.heytap.speechassist"

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->HEY_TAP_PACKAGE_NAME:Ljava/lang/String;

    .line 2559
    new-array v2, v1, [I

    const/16 v3, 0x3c

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    .line 2567
    sput v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_IGNORE:I

    .line 2568
    sput v1, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FINGERPRINT:I

    .line 2569
    const/4 v0, 0x2

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FACEUNLOCK:I

    .line 3059
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 469
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 473
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 478
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 490
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 522
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 528
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 533
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 556
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 585
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 654
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 688
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 691
    new-instance v3, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v3, v4, v0}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 694
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 698
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 699
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 701
    const/16 v2, 0x320

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 877
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 884
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMISwitchObserver:Landroid/os/UEventObserver;

    .line 892
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    .line 969
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 977
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    .line 1689
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1729
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    .line 2014
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 2560
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2561
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    .line 4956
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4975
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 4990
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5523
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5635
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 6460
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mZenModeCallback:Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandler:Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleAuthStateChange(ZII)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;JZILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;

    .line 275
    invoke-direct/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I

    .line 275
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestBugreportForTv()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 1559
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .locals 4
    .param p1, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 2951
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2952
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2953
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2954
    if-nez v1, :cond_0

    .line 2955
    return-void

    .line 2957
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2958
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 2959
    return-void

    .line 2963
    :cond_1
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2964
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2965
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 2966
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 6

    .line 5712
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 5713
    .local v0, "lidState":I
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_1

    .line 5714
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/policy/DisplayFoldController;->requestDeviceFolded(Z)V

    goto :goto_1

    .line 5715
    :cond_1
    if-nez v0, :cond_4

    .line 5716
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v1

    .line 5717
    .local v1, "lidBehavior":I
    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 5719
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 5720
    goto :goto_1

    .line 5722
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 5733
    .end local v1    # "lidBehavior":I
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5734
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5735
    monitor-exit v1

    .line 5736
    return-void

    .line 5735
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static awakenDreams()V
    .locals 2

    .line 3023
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 3024
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 3026
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3029
    goto :goto_0

    .line 3027
    :catch_0
    move-exception v1

    .line 3031
    :cond_0
    :goto_0
    return-void
.end method

.method private backLongPress()V
    .locals 2

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1548
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 1552
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    .line 1555
    :goto_0
    return-void
.end method

.method private bindKeyguard()V
    .locals 2

    .line 5455
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5456
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    .line 5457
    monitor-exit v0

    return-void

    .line 5459
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 5460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5461
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 5462
    return-void

    .line 5460
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .locals 2

    .line 1682
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1683
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_0

    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1325
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    :cond_0
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1687
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .line 1678
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1679
    return-void
.end method

.method private cancelPossibleVeryLongPressReboot()V
    .locals 2

    .line 5685
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5686
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 1

    .line 3911
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_0

    .line 3912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3913
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3914
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3915
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 3918
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3958
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3959
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    .line 3961
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4853
    const-string v0, "WindowManager"

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    .line 4854
    .local v1, "hdmiControlManager":Landroid/hardware/hdmi/HdmiControlManager;
    if-eqz v1, :cond_1

    .line 4855
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4856
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4857
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v2

    .line 4858
    .local v2, "audioSystemClient":Landroid/hardware/hdmi/HdmiAudioSystemClient;
    if-eqz v2, :cond_1

    .line 4859
    nop

    .line 4860
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4859
    :goto_0
    invoke-virtual {v2, v0, v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    .line 4861
    return-void

    .line 4865
    .end local v2    # "audioSystemClient":Landroid/hardware/hdmi/HdmiAudioSystemClient;
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4866
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4865
    invoke-interface {v2, p1, v3, v4, v0}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4870
    goto :goto_1

    .line 4867
    :catch_0
    move-exception v2

    .line 4868
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error dispatching volume key in handleVolumeKey for event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4871
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6282
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6288
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6286
    :cond_0
    const-string v0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object v0

    .line 6284
    :cond_1
    const-string v0, "DOUBLE_TAP_HOME_NOTHING"

    return-object v0
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "behavior"    # I

    .line 6224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6225
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 6226
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6228
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 6229
    const-string/jumbo v1, "sleep|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 6233
    .local v1, "N":I
    if-nez v1, :cond_2

    .line 6234
    const-string v2, "<nothing>"

    return-object v2

    .line 6237
    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishKeyguardDrawn()V
    .locals 5

    .line 5144
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5145
    return-void

    .line 5148
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5154
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandler:Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;->removeMessages(I)V

    .line 5157
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5161
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V

    .line 5163
    return-void

    .line 5157
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private finishPowerKeyPress()V
    .locals 1

    .line 1297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1298
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1302
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 6

    .line 5258
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5259
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5260
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5261
    const-string v0, "WindowManager"

    const-string v1, "Authenticating to pending screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    return-void

    .line 5268
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5270
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 5271
    .local v0, "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5272
    return-void

    .line 5274
    :cond_1
    const-wide/16 v1, 0x20

    const-string/jumbo v3, "screenTurningOn"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5277
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 5278
    .local v1, "awake":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5281
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 5282
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 5283
    const/4 v3, 0x1

    .line 5284
    .local v3, "enableScreen":Z
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v5, :cond_3

    .line 5285
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5286
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_0

    .line 5289
    .end local v3    # "enableScreen":Z
    :cond_2
    const/4 v3, 0x0

    .line 5291
    .restart local v3    # "enableScreen":Z
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5293
    if-eqz v0, :cond_4

    .line 5294
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5297
    :cond_4
    if-eqz v3, :cond_5

    .line 5299
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5301
    goto :goto_1

    .line 5300
    :catch_0
    move-exception v2

    .line 5303
    :cond_5
    :goto_1
    return-void

    .line 5291
    .end local v3    # "enableScreen":Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private finishWindowsDrawn()V
    .locals 1

    .line 5247
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5248
    return-void

    .line 5251
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 5252
    return-void
.end method

.method private getAccessibilityShortcutTimeout()J
    .locals 5

    .line 1656
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1658
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1657
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 1659
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_0

    .line 1660
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    .line 1657
    :goto_0
    return-wide v1
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .line 3047
    nop

    .line 3048
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3047
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3049
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 3050
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_0
    return-object v0
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .line 2970
    if-nez p2, :cond_0

    .line 2972
    return-object p1

    .line 2975
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2976
    .local v0, "targetDisplay":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 2979
    const/4 v1, 0x0

    return-object v1

    .line 2982
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .line 3034
    nop

    .line 3035
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3034
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 4

    .line 1805
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2

    .line 1806
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1807
    return-object v1

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1811
    .local v0, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v2, 0x0

    .line 1812
    .local v2, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v0, :cond_1

    .line 1813
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    .line 1815
    :cond_1
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1817
    .end local v0    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    .end local v2    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .locals 2

    .line 4875
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_0

    .line 4876
    const/4 v0, 0x0

    return-object v0

    .line 4878
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method private getKeyguardDrawnTimeout()J
    .locals 3

    .line 5182
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 5183
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    .line 5185
    .local v0, "bootCompleted":Z
    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    :goto_0
    return-wide v1
.end method

.method private getLidBehavior()I
    .locals 3

    .line 1463
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lid_behavior"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 5451
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v0

    return-object v0
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    .line 1468
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    .line 1469
    const/4 v0, 0x3

    return v0

    .line 1471
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    .line 1472
    const/4 v0, 0x2

    return v0

    .line 1474
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    .line 1579
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    const/4 v0, 0x3

    return v0

    .line 1582
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .locals 2

    .line 1674
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .line 1664
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    const/high16 v0, 0x40200000    # 2.5f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1667
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 1666
    return-wide v0

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private goToSleep(JII)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 1411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 1412
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1413
    return-void
.end method

.method private goToSleepFromPowerButton(JI)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "flags"    # I

    .line 1392
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    .line 1393
    .local v0, "lastWakeUp":Landroid/os/PowerManager$WakeData;
    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v1, :cond_0

    .line 1394
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x320

    const-string/jumbo v4, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1397
    .local v2, "gestureDelayMillis":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1398
    .local v3, "now":J
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v5, :cond_0

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long v5, v3, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v1, 0x0

    return v1

    .line 1406
    .end local v2    # "gestureDelayMillis":I
    .end local v3    # "now":J
    :cond_0
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1407
    const/4 v1, 0x1

    return v1
.end method

.method private handleAuthStateChange(ZII)V
    .locals 6
    .param p1, "authenticating"    # Z
    .param p2, "authType"    # I
    .param p3, "result"    # I

    .line 2573
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2574
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/16 v1, 0x66

    if-eqz v0, :cond_d

    .line 2575
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2576
    if-ne p3, v2, :cond_e

    .line 2577
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2578
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2579
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2581
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 2582
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FP_ACCELERATE: showLw top, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2585
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    .line 2587
    :cond_2
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2591
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    .line 2593
    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FACEUNLOCK:I

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2594
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2595
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2596
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2597
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    .line 2598
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FP_ACCELERATE: showLw top 3, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2602
    :cond_5
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 2604
    :cond_6
    const/4 v0, 0x3

    if-ne p3, v0, :cond_9

    .line 2605
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FINGERPRINT:I

    if-ne p2, v0, :cond_c

    .line 2606
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2607
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2608
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2609
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_7

    .line 2610
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FP_ACCELERATE: showLw top 2, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2614
    :cond_8
    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 2616
    :cond_9
    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_IGNORE:I

    if-eq p2, v0, :cond_c

    .line 2617
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2619
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2621
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2622
    :try_start_3
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_a

    .line 2623
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FP_ACCELERATE: hidelw, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    if-eqz v2, :cond_b

    .line 2627
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 2629
    :cond_b
    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 2632
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2633
    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    .line 2634
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2635
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2636
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    goto :goto_1

    .line 2634
    :catchall_4
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1

    .line 2639
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2640
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2641
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 2644
    :cond_e
    :goto_1
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 2

    .line 5306
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5307
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_0

    .line 5308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5309
    monitor-exit v0

    return-void

    .line 5311
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5313
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 5314
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5318
    :cond_2
    return-void

    .line 5311
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleRingerChordGesture()V
    .locals 3

    .line 985
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_0

    .line 986
    return-void

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 989
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hush_gesture_used"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 991
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 992
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .locals 4
    .param p1, "transit"    # I
    .param p2, "duration"    # J

    .line 3776
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3777
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transition/occluded changed occluded="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 3780
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3781
    const/4 v0, 0x5

    return v0

    .line 3784
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3785
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_2

    const-string v0, "Starting keyguard exit animation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 3788
    :cond_3
    return v2
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 1

    .line 1594
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 1

    .line 1586
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasVeryLongPressOnPowerBehavior()Z
    .locals 1

    .line 1590
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .line 3964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3965
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3966
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3967
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 3969
    :cond_0
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6250
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 6251
    const-string v0, "hangup"

    return-object v0

    .line 6253
    :cond_0
    const-string v0, "<nothing>"

    return-object v0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6242
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    .line 6243
    const-string v0, "hangup"

    return-object v0

    .line 6245
    :cond_0
    const-string/jumbo v0, "sleep"

    return-object v0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 3571
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3572
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_0

    .line 3573
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 3574
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    .line 3577
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz v0, :cond_2

    .line 3578
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez v0, :cond_3

    .line 3579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3580
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3581
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3582
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3583
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3584
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz v0, :cond_3

    .line 3585
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3589
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return v0
.end method

.method private interceptAccessibilityShortcutChord()V
    .locals 6

    .line 1621
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    .line 1621
    invoke-static {v0}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptAccessibilityShortcutChord(Z)V

    .line 1624
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_0

    .line 1627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1628
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1631
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1632
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1633
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1634
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v4

    .line 1633
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1637
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptBackKeyDown()V
    .locals 4

    .line 1024
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v1, "key_back_down"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1028
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1031
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1032
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1031
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1034
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1038
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v1, "key_back_up"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1040
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1043
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 1045
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1048
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_1

    .line 1049
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1052
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1055
    const/4 v2, 0x0

    return v2

    .line 1056
    :cond_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1058
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    return v2

    .line 1066
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1067
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1070
    :cond_2
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 3545
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 3546
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_0

    .line 3547
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3548
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    .line 3551
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz v0, :cond_2

    .line 3552
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez v0, :cond_3

    .line 3553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3554
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3555
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3556
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3557
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3558
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz v0, :cond_3

    .line 3559
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3563
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return v0
.end method

.method private interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z
    .locals 5
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3682
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3683
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3684
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 3686
    .local v1, "delayMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 3687
    const/4 v3, 0x1

    return v3

    .line 3690
    .end local v1    # "delayMillis":J
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 1075
    move-object v0, p0

    move/from16 v7, p2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1080
    :cond_0
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    :cond_1
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1088
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    .line 1092
    const/4 v8, 0x1

    if-eqz v7, :cond_2

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v1, :cond_2

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    .line 1094
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 1096
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 1097
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v9

    .line 1102
    .local v9, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x0

    .line 1103
    .local v1, "hungUp":Z
    if-eqz v9, :cond_4

    .line 1104
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1107
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_0

    .line 1108
    :cond_3
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 1110
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v7, :cond_4

    .line 1113
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    move v10, v1

    goto :goto_1

    .line 1117
    :cond_4
    :goto_0
    move v10, v1

    .end local v1    # "hungUp":Z
    .local v10, "hungUp":Z
    :goto_1
    const-class v1, Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/GestureLauncherService;

    .line 1119
    .local v11, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v1, 0x0

    .line 1120
    .local v1, "gesturedServiceIntercepted":Z
    if-eqz v11, :cond_6

    .line 1121
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    move-object/from16 v12, p1

    invoke-virtual {v11, v12, v7, v2}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v1

    .line 1123
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v2, v2, Landroid/util/MutableBoolean;->value:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v2, :cond_5

    .line 1124
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 1129
    :cond_5
    move v13, v1

    goto :goto_2

    .line 1120
    :cond_6
    move-object/from16 v12, p1

    move v13, v1

    .line 1129
    .end local v1    # "gesturedServiceIntercepted":Z
    .local v13, "gesturedServiceIntercepted":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1131
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->schedulePossibleVeryLongPressReboot()V

    .line 1135
    if-nez v10, :cond_8

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v1, :cond_8

    if-eqz v13, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v8

    :goto_4
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1140
    const/4 v1, 0x0

    .line 1141
    .local v1, "opPowerKeyLaunchIntercepted":Z
    if-eqz v7, :cond_9

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    :cond_9
    if-nez v7, :cond_b

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v2, :cond_a

    .line 1142
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1143
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v1

    move v14, v1

    goto :goto_5

    .line 1152
    :cond_b
    move v14, v1

    .end local v1    # "opPowerKeyLaunchIntercepted":Z
    .local v14, "opPowerKeyLaunchIntercepted":Z
    :goto_5
    if-nez v7, :cond_c

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->isDisplayDoze()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v14, :cond_c

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1155
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1158
    :cond_c
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 1160
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v5

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 1159
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZZZZI)Z

    move-result v1

    .line 1164
    .local v1, "shutdownChordManagerIntercepted":Z
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_d

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hungUp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mScreenshotChordVolumeDownKeyTriggered "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mA11yShortcutChordVolumeUpKeyTriggered "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",gesturedServiceIntercepted "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",shutdownChordManagerIntercepted "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",opPowerKeyLaunchIntercepted "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_d
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v2, :cond_17

    if-nez v1, :cond_17

    if-nez v14, :cond_17

    .line 1181
    const/16 v2, 0x19

    const/16 v4, 0xe

    if-eqz v7, :cond_10

    .line 1184
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_e

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto/16 :goto_8

    .line 1188
    :cond_e
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1189
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1190
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1191
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v5

    .line 1190
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1193
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1194
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1195
    .local v2, "longMsg":Landroid/os/Message;
    invoke-virtual {v2, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1196
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1198
    .end local v2    # "longMsg":Landroid/os/Message;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_f
    goto :goto_8

    .line 1207
    :cond_10
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->isDisplayDoze()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1208
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_12

    .line 1209
    const-string v5, "AOD delay wakeup"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1213
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1217
    :cond_12
    :goto_6
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1218
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_13

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_7

    .line 1221
    :cond_13
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1222
    .restart local v3    # "msg":Landroid/os/Message;
    invoke-virtual {v3, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1223
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1224
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v5

    .line 1223
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1226
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1227
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1228
    .restart local v2    # "longMsg":Landroid/os/Message;
    invoke-virtual {v2, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1229
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1233
    .end local v2    # "longMsg":Landroid/os/Message;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_14
    :goto_7
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_8

    .line 1235
    :cond_15
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v2

    .line 1237
    .local v2, "maxCount":I
    if-gt v2, v8, :cond_16

    .line 1238
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_8

    .line 1240
    :cond_16
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1245
    .end local v2    # "maxCount":I
    :cond_17
    :goto_8
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .line 1248
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 1251
    .local v2, "handled":Z
    :goto_1
    invoke-static {p1}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptPowerKeyUp(Landroid/view/KeyEvent;)V

    .line 1254
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1255
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1260
    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->interceptPowerKeyUp()V

    .line 1261
    invoke-static {}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->interceptPowerKeyUp()Z

    move-result v0

    .line 1262
    .local v0, "volumeKeyTriggered":Z
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 1268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    .line 1270
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v5, v4}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1274
    :cond_2
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1276
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    .line 1277
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    .line 1278
    .local v4, "eventTime":J
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v6, v3, :cond_3

    .line 1281
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    .line 1282
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1281
    invoke-virtual {v6, v7, p2, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1283
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v6, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1284
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1285
    return-void

    .line 1289
    .end local v6    # "msg":Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v4, v5, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1293
    .end local v3    # "maxCount":I
    .end local v4    # "eventTime":J
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1294
    return-void
.end method

.method private interceptRingerToggleChord()V
    .locals 6

    .line 1640
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    .line 1642
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1643
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1646
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1649
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1650
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v4

    .line 1649
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1653
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .line 1598
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_0

    .line 1601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1602
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1605
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1607
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 1608
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotSource(I)V

    .line 1609
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1614
    .end local v0    # "now":J
    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptScreenshotChord()V

    .line 1616
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4683
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4684
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4685
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4686
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_1

    .line 4687
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4691
    :cond_1
    return-void
.end method

.method private isHidden(I)Z
    .locals 4
    .param p1, "accessibilityMode"    # I

    .line 2511
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 2512
    .local v0, "lidState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 2518
    return v1

    .line 2516
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 2514
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private isRoundWindow()Z
    .locals 1

    .line 2018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isTheaterModeEnabled()Z
    .locals 3

    .line 5914
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private isTvUserSetupComplete()Z
    .locals 4

    .line 1769
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tv_user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 4722
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    .line 4728
    const/4 v0, 0x1

    return v0

    .line 4726
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 4740
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xde

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 4774
    return v2

    .line 4765
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    return v0

    .line 4768
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    return v0

    .line 4744
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 4758
    :cond_3
    :pswitch_2
    return v1

    .line 4771
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private launchAllAppsAction()V
    .locals 5

    .line 1843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_0

    .line 1845
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v1, "intentLauncher":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1847
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1850
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 1851
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    .end local v1    # "intentLauncher":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1855
    return-void
.end method

.method private launchAssistLongPressAction()V
    .locals 4

    .line 3796
    const/4 v0, 0x0

    const-string v1, "Assist - Long Press"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 3798
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3801
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3802
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3806
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    .line 3807
    .local v1, "searchManager":Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    .line 3808
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 3810
    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3813
    .end local v1    # "searchManager":Landroid/app/SearchManager;
    goto :goto_0

    .line 3811
    :catch_0
    move-exception v1

    .line 3812
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist long press action."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3814
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private launchVoiceAssist(Z)V
    .locals 4
    .param p1, "allowDuringSetup"    # Z

    .line 3853
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    .line 3854
    const/4 v0, 0x0

    goto :goto_0

    .line 3855
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_0
    nop

    .line 3856
    .local v0, "keyguardActive":Z
    if-nez v0, :cond_1

    .line 3857
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3858
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3862
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private static lidBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6377
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 6385
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6379
    :cond_0
    const-string v0, "LID_BEHAVIOR_LOCK"

    return-object v0

    .line 6381
    :cond_1
    const-string v0, "LID_BEHAVIOR_SLEEP"

    return-object v0

    .line 6383
    :cond_2
    const-string v0, "LID_BEHAVIOR_NONE"

    return-object v0
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6258
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6264
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6262
    :cond_0
    const-string v0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 6260
    :cond_1
    const-string v0, "LONG_PRESS_BACK_NOTHING"

    return-object v0
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6269
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 6277
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6275
    :cond_0
    const-string v0, "LONG_PRESS_HOME_ASSIST"

    return-object v0

    .line 6273
    :cond_1
    const-string v0, "LONG_PRESS_HOME_ALL_APPS"

    return-object v0

    .line 6271
    :cond_2
    const-string v0, "LONG_PRESS_HOME_NOTHING"

    return-object v0
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6312
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 6326
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6324
    :cond_0
    const-string v0, "LONG_PRESS_POWER_ASSISTANT"

    return-object v0

    .line 6322
    :cond_1
    const-string v0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 6320
    :cond_2
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object v0

    .line 6318
    :cond_3
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object v0

    .line 6316
    :cond_4
    const-string v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 6314
    :cond_5
    const-string v0, "LONG_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6342
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 6350
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6348
    :cond_0
    const-string v0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object v0

    .line 6346
    :cond_1
    const-string v0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object v0

    .line 6344
    :cond_2
    const-string v0, "MULTI_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private powerMultiPressAction(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    .line 1426
    const/4 v0, 0x1

    const-string v1, "WindowManager"

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 1453
    :cond_0
    const-string v0, "Starting brightness boost."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    if-nez p3, :cond_1

    .line 1455
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    .line 1430
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1431
    const-string v0, "Ignoring toggling theater mode - device not setup."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    goto :goto_0

    .line 1435
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "theater_mode_on"

    if-eqz v2, :cond_4

    .line 1436
    const-string v0, "Toggling theater mode off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1439
    if-nez p3, :cond_5

    .line 1440
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    .line 1443
    :cond_4
    const-string v2, "Toggling theater mode on."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1447
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    .line 1448
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1460
    :cond_5
    :goto_0
    return-void
.end method

.method private powerPress(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .line 1330
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    const-string v0, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-void

    .line 1335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerPress: eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " beganFromNonInteractive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShortPressOnPowerBehavior="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 1340
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1341
    :cond_1
    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    .line 1342
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1343
    :cond_2
    if-eqz p3, :cond_a

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v2, :cond_a

    .line 1344
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    if-eq v2, v0, :cond_8

    if-eq v2, v1, :cond_7

    const/4 v0, 0x4

    if-eq v2, v0, :cond_6

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3

    goto :goto_0

    .line 1363
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v0, :cond_5

    .line 1364
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_4

    .line 1365
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1366
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1368
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_a

    .line 1369
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    goto :goto_0

    .line 1373
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    .line 1360
    :cond_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    .line 1361
    goto :goto_0

    .line 1354
    :cond_7
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1356
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    goto :goto_0

    .line 1351
    :cond_8
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1352
    goto :goto_0

    .line 1348
    :cond_9
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1379
    :cond_a
    :goto_0
    return-void
.end method

.method private preloadRecentApps()V
    .locals 1

    .line 3903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3904
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3905
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3906
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 3908
    :cond_0
    return-void
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .line 2507
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2508
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 4

    .line 2299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2301
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2303
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 2305
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2308
    :cond_1
    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2310
    const/4 v3, 0x1

    if-ltz v1, :cond_2

    if-le v1, v3, :cond_3

    .line 2312
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2315
    :cond_3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2316
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2317
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2319
    :cond_4
    return-void
.end method

.method private reportScreenStateToVrManager(Z)V
    .locals 1
    .param p1, "isScreenOn"    # Z

    .line 5240
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    .line 5241
    return-void

    .line 5243
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    .line 5244
    return-void
.end method

.method private requestBugreportForTv()V
    .locals 3

    .line 3593
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3594
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3597
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3598
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3602
    :cond_1
    goto :goto_0

    .line 3600
    :catch_0
    move-exception v0

    .line 3601
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3604
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method private schedulePossibleVeryLongPressReboot()V
    .locals 4

    .line 5680
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5681
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5682
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .line 4697
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 4698
    .local v0, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 4700
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4703
    goto :goto_0

    .line 4701
    :catch_0
    move-exception v1

    .line 4705
    :cond_0
    :goto_0
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .line 4711
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4712
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4713
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4714
    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .locals 7
    .param p1, "isOccluded"    # Z
    .param p2, "force"    # Z

    .line 4059
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardOccluded occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4061
    .local v0, "wasOccluded":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 4062
    .local v1, "showing":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    .line 4063
    .local v4, "changed":Z
    :goto_1
    if-nez p1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 4064
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4065
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4066
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    .line 4067
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4068
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4071
    :cond_3
    return v2

    .line 4072
    :cond_4
    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 4073
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4074
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4075
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5

    .line 4076
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4078
    :cond_5
    return v2

    .line 4079
    :cond_6
    if-eqz v4, :cond_7

    .line 4080
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4081
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4082
    return v3

    .line 4084
    :cond_7
    return v3
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6293
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 6307
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6305
    :cond_0
    const-string v0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object v0

    .line 6303
    :cond_1
    const-string v0, "SHORT_PRESS_POWER_GO_HOME"

    return-object v0

    .line 6301
    :cond_2
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 6299
    :cond_3
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object v0

    .line 6297
    :cond_4
    const-string v0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object v0

    .line 6295
    :cond_5
    const-string v0, "SHORT_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6355
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6361
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6359
    :cond_0
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 6357
    :cond_1
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object v0
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6366
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6372
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6370
    :cond_0
    const-string v0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object v0

    .line 6368
    :cond_1
    const-string v0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object v0
.end method

.method private shortPressPowerGoHome()V
    .locals 2

    .line 1416
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1418
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    .line 1423
    :cond_0
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2709
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2711
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2713
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2714
    .local v0, "topFocusedActivityWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isFingerprintEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2715
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2718
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2720
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2721
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    return v1

    .line 2724
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2725
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isKeyguardDone()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    nop

    .line 2724
    :goto_0
    return v1

    .line 2729
    .end local v0    # "topFocusedActivityWindow":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :cond_3
    goto :goto_1

    .line 2732
    :cond_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0

    .line 2738
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2740
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f2

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x3

    .line 2741
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    .line 2742
    .local v3, "hideDockDivider":Z
    :goto_2
    if-eqz v3, :cond_7

    .line 2743
    return v2

    .line 2751
    :cond_7
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2752
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    move v4, v2

    goto :goto_3

    :cond_9
    move v4, v1

    .line 2753
    .local v4, "hideIme":Z
    :goto_3
    if-eqz v4, :cond_a

    .line 2754
    return v2

    .line 2757
    :cond_a
    if-eqz p2, :cond_c

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2758
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    move v5, v2

    goto :goto_4

    :cond_c
    move v5, v1

    .line 2761
    .local v5, "showImeOverKeyguard":Z
    :goto_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    move v6, v2

    goto :goto_5

    :cond_d
    move v6, v1

    .line 2763
    .local v6, "allowWhenLocked":Z
    :goto_5
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    .line 2765
    .local v7, "isKeyguardShowing":Z
    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2767
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    move v8, v1

    goto :goto_7

    :cond_f
    :goto_6
    move v8, v2

    :goto_7
    or-int/2addr v6, v8

    .line 2772
    :cond_10
    if-eqz v7, :cond_11

    if-nez v6, :cond_11

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method private shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .locals 1

    .line 4882
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return v0
.end method

.method private shouldDispatchInputWhenNonInteractive(II)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "keyCode"    # I

    .line 4806
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 4808
    .local v2, "isDefaultDisplay":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 4809
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_2

    .line 4810
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    :goto_2
    nop

    .line 4811
    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_4

    .line 4812
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v4

    if-ne v4, v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v1

    .line 4814
    .local v4, "displayOff":Z
    :goto_4
    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v5, :cond_5

    .line 4815
    return v0

    .line 4819
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    .line 4820
    return v1

    .line 4824
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x4

    if-eq p2, v5, :cond_7

    const/16 v5, 0x108

    if-ne p2, v5, :cond_8

    .line 4826
    :cond_7
    return v0

    .line 4830
    :cond_8
    if-eqz v2, :cond_9

    .line 4833
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v5

    .line 4836
    .local v5, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v5, :cond_9

    :try_start_0
    invoke-interface {v5}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_9

    .line 4837
    return v1

    .line 4839
    :catch_0
    move-exception v1

    .line 4840
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException when checking if dreaming"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 4845
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :cond_9
    return v0
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    .line 2394
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2395
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2396
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2397
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2394
    :goto_0
    return v1
.end method

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1858
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPictureInPictureMenu event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1860
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1861
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1862
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1863
    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .locals 1

    .line 1866
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1867
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1868
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    .line 1870
    :cond_0
    return-void
.end method

.method private showRecentApps(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .line 3942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3943
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3944
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3945
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 3947
    :cond_0
    return-void
.end method

.method private sleepPress()V
    .locals 2

    .line 1562
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1563
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1566
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 2
    .param p1, "eventTime"    # J

    .line 1569
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1576
    :goto_0
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handle"    # Landroid/os/UserHandle;

    .line 3876
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3877
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handle"    # Landroid/os/UserHandle;
    .param p4, "allowDuringSetup"    # Z

    .line 3881
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3884
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not starting activity because user setup is in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3882
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3886
    :goto_1
    return-void
.end method

.method private stopLongshot()V
    .locals 0

    .line 6437
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 3950
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3951
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3952
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    .line 3954
    :cond_0
    return-void
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .line 5661
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 5663
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 5664
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5665
    .local v1, "enable":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_4

    .line 5666
    if-eqz v1, :cond_2

    .line 5667
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5669
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5671
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    const-string v3, "clearing lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5672
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5674
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5676
    .end local v1    # "enable":Z
    :cond_4
    monitor-exit v0

    .line 5677
    return-void

    .line 5676
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 3
    .param p1, "acquire"    # Z

    .line 5690
    if-eqz p1, :cond_0

    .line 5691
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_1

    .line 5692
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    const-string v2, "ScreenOff"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_0

    .line 5696
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_1

    .line 5697
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 5698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5701
    :cond_1
    :goto_0
    return-void
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .line 2386
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_0

    .line 2389
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    .line 2391
    :goto_0
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6331
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6337
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6335
    :cond_0
    const-string v0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 6333
    :cond_1
    const-string v0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private wakeUp(JZILjava/lang/String;)Z
    .locals 4
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # I
    .param p5, "details"    # Ljava/lang/String;

    .line 5123
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 5124
    .local v0, "theaterModeEnabled":Z
    const/4 v1, 0x0

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 5125
    return v1

    .line 5128
    :cond_0
    if-eqz v0, :cond_1

    .line 5129
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theater_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5133
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4, p5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 5136
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v1

    .line 5137
    .local v1, "hdmiControl":Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    if-eqz v1, :cond_2

    .line 5138
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 5140
    :cond_2
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 20
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p11, "displayId"    # I

    .line 2780
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move/from16 v8, p11

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 2781
    return-object v9

    .line 2783
    :cond_0
    if-nez v3, :cond_1

    .line 2784
    return-object v9

    .line 2787
    :cond_1
    const/4 v10, 0x0

    .line 2788
    .local v10, "wm":Landroid/view/WindowManager;
    const/4 v11, 0x0

    .line 2791
    .local v11, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2798
    .local v0, "context":Landroid/content/Context;
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-nez v12, :cond_2

    :try_start_1
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_3

    goto :goto_0

    .line 2941
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_11

    .line 2935
    :catch_0
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_c

    .line 2931
    :catch_1
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_f

    .line 2798
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    :goto_0
    :try_start_2
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addStartingWindow "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": nonLocalizedLabel="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " theme="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2798
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_3
    invoke-direct {v1, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v12
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2805
    .local v12, "displayContext":Landroid/content/Context;
    if-nez v12, :cond_5

    .line 2807
    nop

    .line 2941
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_4

    .line 2942
    const-string v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    invoke-interface {v10, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2807
    :cond_4
    return-object v9

    .line 2809
    :cond_5
    move-object v13, v12

    .line 2811
    .end local v0    # "context":Landroid/content/Context;
    .local v13, "context":Landroid/content/Context;
    :try_start_3
    invoke-virtual {v13}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    if-ne v4, v0, :cond_6

    if-eqz v6, :cond_7

    .line 2813
    :cond_6
    const/4 v0, 0x4

    :try_start_4
    invoke-virtual {v13, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    .line 2814
    invoke-virtual {v13, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2817
    goto :goto_1

    .line 2815
    :catch_2
    move-exception v0

    .line 2820
    :cond_7
    :goto_1
    const/4 v14, 0x1

    if-eqz v7, :cond_b

    :try_start_5
    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7, v15}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 2821
    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_8

    :try_start_6
    const-string v15, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSplashScreen: creating context based on overrideConfig"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for splash screen"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2823
    :cond_8
    :try_start_7
    invoke-virtual {v13, v7}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 2824
    .local v0, "overrideContext":Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    .line 2825
    sget-object v9, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2827
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v15, v17

    .line 2832
    .local v15, "resId":I
    if-eqz v15, :cond_a

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v14, v9, v4, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2837
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v4, :cond_9

    const-string v4, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v18, v10

    .end local v10    # "wm":Landroid/view/WindowManager;
    .local v18, "wm":Landroid/view/WindowManager;
    :try_start_8
    const-string v10, "addSplashScreen: apply overrideConfig"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to starting window resId="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :cond_9
    move-object/from16 v18, v10

    .line 2839
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :goto_2
    move-object v4, v0

    move-object v13, v4

    .end local v13    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    goto :goto_3

    .line 2832
    .end local v4    # "context":Landroid/content/Context;
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_a
    move-object/from16 v18, v10

    .line 2841
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    .line 2941
    .end local v0    # "overrideContext":Landroid/content/Context;
    .end local v9    # "typedArray":Landroid/content/res/TypedArray;
    .end local v12    # "displayContext":Landroid/content/Context;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "resId":I
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_a

    .line 2935
    :catch_3
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_b

    .line 2931
    :catch_4
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_e

    .line 2820
    .restart local v12    # "displayContext":Landroid/content/Context;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_b
    move-object/from16 v18, v10

    .line 2844
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :goto_4
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v13}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 2845
    .local v4, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 2847
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v9, v0

    .line 2849
    .local v9, "label":Ljava/lang/CharSequence;
    if-eqz v9, :cond_c

    .line 2850
    const/4 v0, 0x1

    invoke-virtual {v4, v9, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    .line 2852
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 2855
    :goto_5
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2858
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_8
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2863
    if-nez v8, :cond_d

    :try_start_9
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_d

    .line 2864
    const/high16 v0, 0x80000

    or-int v0, p9, v0

    move v14, v0

    .end local p9    # "windowFlags":I
    .local v0, "windowFlags":I
    goto :goto_6

    .line 2866
    .end local v0    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catchall_2
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v1, v10

    move/from16 v10, p8

    goto/16 :goto_9

    :cond_d
    move/from16 v14, p9

    .end local p9    # "windowFlags":I
    .local v14, "windowFlags":I
    :goto_6
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 2872
    or-int/lit8 v0, v14, 0x10

    const/16 v10, 0x8

    or-int/2addr v0, v10

    const/high16 v15, 0x20000

    or-int/2addr v0, v15

    or-int/lit8 v19, v14, 0x10

    or-int/lit8 v19, v19, 0x8

    or-int v15, v19, v15

    :try_start_b
    invoke-virtual {v4, v0, v15}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2882
    move/from16 v15, p7

    :try_start_c
    invoke-virtual {v4, v15}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2883
    move/from16 v10, p8

    :try_start_d
    invoke-virtual {v4, v10}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 2885
    const/4 v0, -0x1

    invoke-virtual {v4, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2888
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2889
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2890
    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2891
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2893
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2895
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2897
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2898
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2901
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splash Screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2905
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V

    .line 2908
    invoke-direct {v1, v4, v13}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    .line 2910
    const-string/jumbo v5, "window"

    invoke-virtual {v13, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;
    :try_end_d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 2911
    .end local v18    # "wm":Landroid/view/WindowManager;
    .local v5, "wm":Landroid/view/WindowManager;
    :try_start_e
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    .line 2915
    invoke-static {v11, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 2918
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v6, :cond_10

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding splash screen window for "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v1, v11

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2918
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_10
    invoke-static {v11, v3}, Lcom/android/server/am/OpForceDarkControlInjector;->handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 2926
    invoke-interface {v5, v11, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2930
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v1, v11, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    move-object/from16 v16, v1

    goto :goto_8

    :cond_11
    const/16 v16, 0x0

    .line 2941
    :goto_8
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_12

    .line 2942
    const-string v1, "WindowManager"

    const-string/jumbo v6, "view not successfully added to wm, removing view"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2930
    :cond_12
    return-object v16

    .line 2935
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v12    # "displayContext":Landroid/content/Context;
    .end local v13    # "context":Landroid/content/Context;
    :catch_5
    move-exception v0

    goto/16 :goto_c

    .line 2931
    :catch_6
    move-exception v0

    goto/16 :goto_f

    .line 2941
    .end local v5    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :catchall_3
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2935
    :catch_7
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_c

    .line 2931
    :catch_8
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_f

    .line 2941
    :catchall_4
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2935
    :catch_9
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_c

    .line 2931
    :catch_a
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_f

    .line 2866
    .restart local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v9    # "label":Ljava/lang/CharSequence;
    .restart local v12    # "displayContext":Landroid/content/Context;
    .restart local v13    # "context":Landroid/content/Context;
    :catchall_5
    move-exception v0

    move/from16 v15, p7

    move-object v1, v10

    move/from16 v10, p8

    :goto_9
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .end local v11    # "view":Landroid/view/View;
    .end local v14    # "windowFlags":I
    .end local v18    # "wm":Landroid/view/WindowManager;
    .end local p0    # "this":Lcom/android/server/policy/PhoneWindowManager;
    .end local p1    # "appToken":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "theme":I
    .end local p4    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p5    # "nonLocalizedLabel":Ljava/lang/CharSequence;
    .end local p6    # "labelRes":I
    .end local p7    # "icon":I
    .end local p8    # "logo":I
    .end local p10    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p11    # "displayId":I
    :try_start_10
    throw v0
    :try_end_10
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 2941
    .end local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v12    # "displayContext":Landroid/content/Context;
    .end local v13    # "context":Landroid/content/Context;
    .restart local v11    # "view":Landroid/view/View;
    .restart local v14    # "windowFlags":I
    .restart local v18    # "wm":Landroid/view/WindowManager;
    .restart local p0    # "this":Lcom/android/server/policy/PhoneWindowManager;
    .restart local p1    # "appToken":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "theme":I
    .restart local p4    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p5    # "nonLocalizedLabel":Ljava/lang/CharSequence;
    .restart local p6    # "labelRes":I
    .restart local p7    # "icon":I
    .restart local p8    # "logo":I
    .restart local p10    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p11    # "displayId":I
    :catchall_6
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2935
    :catch_b
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_c

    .line 2931
    :catch_c
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_f

    .line 2866
    .restart local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v9    # "label":Ljava/lang/CharSequence;
    .restart local v12    # "displayContext":Landroid/content/Context;
    .restart local v13    # "context":Landroid/content/Context;
    :catchall_7
    move-exception v0

    goto :goto_9

    .line 2941
    .end local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v12    # "displayContext":Landroid/content/Context;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catchall_8
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2935
    :catch_d
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto :goto_c

    .line 2931
    :catch_e
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto :goto_f

    .line 2941
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :catchall_9
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_a
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    goto :goto_11

    .line 2935
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :catch_f
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_b
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .line 2939
    .end local v10    # "wm":Landroid/view/WindowManager;
    .end local p9    # "windowFlags":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    .restart local v14    # "windowFlags":I
    :goto_c
    :try_start_11
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed creating starting window"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 2941
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2942
    :goto_d
    const-string v0, "WindowManager"

    const-string/jumbo v1, "view not successfully added to wm, removing view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_10

    .line 2931
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v14    # "windowFlags":I
    .restart local v10    # "wm":Landroid/view/WindowManager;
    .restart local p9    # "windowFlags":I
    :catch_10
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_e
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .line 2933
    .end local v10    # "wm":Landroid/view/WindowManager;
    .end local p9    # "windowFlags":I
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    .restart local v14    # "windowFlags":I
    :goto_f
    :try_start_12
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " already running, starting window not displayed. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2933
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 2941
    nop

    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2942
    goto :goto_d

    .line 2947
    :cond_13
    :goto_10
    const/4 v1, 0x0

    return-object v1

    .line 2941
    :catchall_a
    move-exception v0

    :goto_11
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_14

    .line 2942
    const-string v1, "WindowManager"

    const-string/jumbo v4, "view not successfully added to wm, removing view"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2945
    :cond_14
    throw v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .line 2526
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2528
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2529
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2531
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2533
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2534
    :cond_1
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2535
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    .line 2536
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2540
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    if-ne p3, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2542
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2543
    :cond_3
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2545
    :cond_4
    return-void
.end method

.method public applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4037
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4038
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4039
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 4041
    :cond_0
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4044
    :cond_1
    :goto_0
    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2667
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 2668
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2669
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2670
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2671
    return v1

    .line 2684
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-nez v0, :cond_1

    .line 2687
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2688
    return v1

    .line 2692
    :cond_1
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7e3

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7f8

    if-eq v0, v2, :cond_3

    .line 2700
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 2697
    :cond_3
    return v1
.end method

.method public canDismissBootAnimation()Z
    .locals 1

    .line 5520
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    return v0
.end method

.method cancelPendingPowerKeyAction()V
    .locals 2

    .line 1312
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1314
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1319
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPossibleVeryLongPressReboot()V

    .line 1320
    return-void
.end method

.method public checkAddPermission(IZLjava/lang/String;[I)I
    .locals 16
    .param p1, "type"    # I
    .param p2, "isRoundedCornerOverlay"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "outAppOp"    # [I

    .line 2404
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v4, -0x8

    if-eqz p2, :cond_0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2406
    return v4

    .line 2409
    :cond_0
    const/4 v0, -0x1

    const/4 v5, 0x0

    aput v0, p4, v5

    .line 2411
    const/16 v0, 0xbb7

    const/16 v6, 0x7d0

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    if-lt v2, v8, :cond_1

    const/16 v9, 0x63

    if-le v2, v9, :cond_3

    :cond_1
    if-lt v2, v7, :cond_2

    const/16 v9, 0x7cf

    if-le v2, v9, :cond_3

    :cond_2
    if-lt v2, v6, :cond_12

    if-le v2, v0, :cond_3

    move-object/from16 v15, p3

    goto/16 :goto_7

    .line 2417
    :cond_3
    if-lt v2, v6, :cond_11

    if-le v2, v0, :cond_4

    move-object/from16 v15, p3

    goto/16 :goto_6

    .line 2422
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2423
    const/16 v0, 0x7d5

    if-eq v2, v0, :cond_7

    const/16 v0, 0x7db

    if-eq v2, v0, :cond_6

    const/16 v0, 0x7dd

    if-eq v2, v0, :cond_6

    const/16 v0, 0x7e8

    if-eq v2, v0, :cond_6

    const/16 v0, 0x7f3

    if-eq v2, v0, :cond_6

    const/16 v0, 0x7f5

    if-eq v2, v0, :cond_6

    packed-switch v2, :pswitch_data_0

    .line 2443
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2444
    move v4, v5

    goto :goto_0

    :cond_5
    nop

    .line 2443
    :goto_0
    return v4

    .line 2440
    :cond_6
    :pswitch_0
    return v5

    .line 2429
    :cond_7
    const/16 v0, 0x2d

    aput v0, p4, v5

    .line 2430
    return v5

    .line 2448
    :cond_8
    const/16 v0, 0x18

    aput v0, p4, v5

    .line 2450
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2452
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 2453
    return v5

    .line 2458
    :cond_9
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2461
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2458
    move-object/from16 v15, p3

    :try_start_1
    invoke-virtual {v0, v15, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2464
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 2462
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v15, p3

    .line 2463
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const/4 v7, 0x0

    move-object v0, v7

    .line 2466
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v0, :cond_f

    const/16 v7, 0x7f6

    if-eq v2, v7, :cond_a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1a

    if-lt v7, v9, :cond_a

    goto :goto_4

    .line 2480
    :cond_a
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v10, p4, v5

    const/4 v13, 0x0

    const-string v14, "check-add"

    move v11, v6

    move-object/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2482
    .local v3, "mode":I
    if-eqz v3, :cond_e

    if-eq v3, v8, :cond_e

    const/4 v7, 0x2

    if-eq v3, v7, :cond_c

    .line 2497
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b

    .line 2498
    move v4, v5

    goto :goto_3

    :cond_b
    nop

    .line 2497
    :goto_3
    return v4

    .line 2490
    :cond_c
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_d

    .line 2491
    return v5

    .line 2493
    :cond_d
    return v4

    .line 2487
    :cond_e
    return v5

    .line 2473
    .end local v3    # "mode":I
    :cond_f
    :goto_4
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    .line 2474
    move v4, v5

    goto :goto_5

    :cond_10
    nop

    .line 2473
    :goto_5
    return v4

    .line 2417
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "callingUid":I
    :cond_11
    move-object/from16 v15, p3

    .line 2419
    :goto_6
    return v5

    .line 2411
    :cond_12
    move-object/from16 v15, p3

    .line 2414
    :goto_7
    const/16 v0, -0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z
    .param p3, "subtleAnimation"    # Z

    .line 2988
    if-eqz p2, :cond_0

    .line 2989
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a006c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 2993
    :cond_0
    if-eqz p3, :cond_1

    .line 2994
    const v0, 0x10a006d

    .local v0, "resource":I
    goto :goto_0

    .line 2995
    .end local v0    # "resource":I
    :cond_1
    if-eqz p1, :cond_2

    .line 2996
    const v0, 0x10a006e

    .restart local v0    # "resource":I
    goto :goto_0

    .line 2998
    .end local v0    # "resource":I
    :cond_2
    const v0, 0x10a006b

    .line 3001
    .restart local v0    # "resource":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 3004
    .local v1, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    .line 3005
    .local v2, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 3006
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3005
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3009
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    .line 5777
    const/4 v0, 0x0

    .line 5782
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 5783
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v1, :cond_5

    .line 5784
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_0

    .line 5786
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 5790
    :cond_1
    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 5791
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v1

    .line 5792
    .local v1, "dockMode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_3

    .line 5796
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 5798
    .end local v1    # "dockMode":I
    :cond_3
    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 5800
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 5804
    :cond_5
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5805
    return-object v1

    .line 5808
    :cond_6
    const/4 v2, 0x0

    .line 5809
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const v4, 0x10080

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 5813
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_7

    .line 5814
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5816
    :cond_7
    if-eqz v2, :cond_8

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 5818
    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5819
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 5820
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5821
    return-object v0

    .line 5824
    :cond_8
    return-object v1
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z

    .line 3015
    if-eqz p1, :cond_0

    .line 3016
    const/4 v0, 0x0

    return-object v0

    .line 3018
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0071

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 5404
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5405
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "PWM.dismissKeyguardLw"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5409
    :cond_1
    if-eqz p1, :cond_2

    .line 5411
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5414
    goto :goto_0

    .line 5412
    :catch_0
    move-exception v0

    .line 5413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4918
    nop

    .line 4919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 4918
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4920
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    .line 4921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4925
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4926
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4886
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 4887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4890
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    .line 4891
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 4892
    const-string v0, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4897
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4900
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4902
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 4903
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 4904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4906
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4908
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4909
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4910
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 4911
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4913
    :goto_0
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4929
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4930
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 4932
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 27
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3611
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_1

    .line 3612
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3613
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v3

    .line 3614
    .local v3, "info":Lcom/android/internal/policy/KeyInterceptionInfo;
    if-nez v3, :cond_0

    const-string v5, "<unknown>"

    goto :goto_0

    :cond_0
    iget-object v5, v3, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 3615
    .local v5, "title":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled key: inputToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3617
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", scanCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3620
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", metaState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", repeatCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", policyFlags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3615
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    .end local v3    # "info":Lcom/android/internal/policy/KeyInterceptionInfo;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 3627
    .local v3, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_8

    .line 3628
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 3629
    .local v5, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 3630
    .local v6, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 3631
    .local v7, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    .line 3632
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 3636
    .local v8, "initialDown":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 3637
    invoke-virtual {v5, v6, v7}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v10

    .local v10, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_2

    .line 3639
    .end local v10    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_3
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 3642
    .restart local v10    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_2
    if-eqz v10, :cond_7

    .line 3643
    sget-boolean v11, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v11, :cond_4

    .line 3644
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback: keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " metaState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3645
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3644
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    or-int/lit16 v11, v11, 0x400

    .line 3649
    .local v11, "flags":I
    nop

    .line 3650
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    .line 3651
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v16

    iget v9, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3652
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    move-object/from16 v26, v3

    .end local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    .local v26, "fallbackEvent":Landroid/view/KeyEvent;
    iget v3, v10, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3653
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v21

    .line 3654
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v24

    const/16 v25, 0x0

    .line 3649
    move/from16 v17, v9

    move/from16 v19, v3

    move/from16 v22, v11

    invoke-static/range {v12 .. v25}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 3656
    .end local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 3657
    invoke-virtual {v3}, Landroid/view/KeyEvent;->recycle()V

    .line 3658
    const/4 v3, 0x0

    .line 3661
    :cond_5
    if-eqz v8, :cond_6

    .line 3662
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 3663
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_9

    .line 3664
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 3665
    invoke-virtual {v10}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_4

    .line 3642
    .end local v11    # "flags":I
    :cond_7
    move-object/from16 v26, v3

    .end local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    goto :goto_3

    .line 3627
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "keyCode":I
    .end local v7    # "metaState":I
    .end local v8    # "initialDown":Z
    .end local v10    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_8
    move-object/from16 v26, v3

    .line 3670
    .end local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    :goto_3
    move-object/from16 v3, v26

    .end local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_9
    :goto_4
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_b

    .line 3671
    if-nez v3, :cond_a

    .line 3672
    const-string v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3674
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    :cond_b
    :goto_5
    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 6117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6118
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6119
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6121
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6122
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6123
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6125
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6126
    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6127
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v0}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6128
    const-string/jumbo v0, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6130
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6131
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6132
    const-string v0, " getLidBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6133
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6134
    const-string/jumbo v0, "mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6135
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6137
    const-string/jumbo v0, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6138
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6140
    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6141
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6143
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6144
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6145
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6146
    const-string/jumbo v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6147
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6149
    const-string/jumbo v0, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6150
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6152
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6153
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6155
    const-string/jumbo v0, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6156
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6158
    const-string/jumbo v0, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6159
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6161
    const-string/jumbo v0, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6162
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6164
    const-string/jumbo v0, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6165
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6167
    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6168
    const-string v0, " mHapticTextHandleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6170
    const-string/jumbo v0, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6171
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6172
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6174
    const-string/jumbo v0, "mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6175
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6176
    const-string v0, " mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6177
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6180
    const-string/jumbo v0, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6182
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 6183
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6181
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6185
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6186
    const-string v0, " mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6187
    const-string v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6189
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6190
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6191
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6192
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1

    .line 6193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6194
    const-string/jumbo v0, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6195
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6196
    const-string/jumbo v0, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6198
    const-string/jumbo v0, "mAccessibilityTvScheduled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6203
    :cond_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "mPreShowSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6204
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "isKeyguardDisabledAndNotShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardDisabledAndNotShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6207
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_4

    .line 6210
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6212
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_5

    .line 6213
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6215
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_6

    .line 6216
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6219
    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6220
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6221
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 6098
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 6099
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6100
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6101
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6102
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6103
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6104
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6105
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v2

    .line 6104
    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6106
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const-wide v3, 0x1080000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6107
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-wide v3, 0x1080000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6108
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const-wide v3, 0x1080000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6109
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    .line 6110
    const-wide v3, 0x10b00000014L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6112
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6113
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 5333
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5334
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 5336
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .line 5706
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 5707
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 5708
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5709
    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 5341
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5342
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5344
    :cond_0
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 5028
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5029
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    .line 5030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5031
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5030
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    const-string/jumbo v3, "screen_timeout"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5035
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 5036
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 5037
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5041
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5042
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5043
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5044
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5045
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5047
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5048
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 5051
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_2

    .line 5052
    invoke-virtual {v1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 5054
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 5058
    invoke-static {v0}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 5060
    return-void

    .line 5044
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finishedWakingUp(I)V
    .locals 2
    .param p1, "why"    # I

    .line 5096
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 5097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished waking up... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5098
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5097
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5102
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 5104
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_2

    .line 5105
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    .line 5107
    :cond_2
    return-void
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_0

    .line 1017
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1020
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .locals 1

    .line 3721
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3722
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3724
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .line 2549
    const/16 v0, 0x7f8

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method getNotificationService()Landroid/app/NotificationManager;
    .locals 2

    .line 3043
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method protected getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .line 3896
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3897
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3899
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 1007
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1008
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    .line 997
    const-string/jumbo v1, "statusbar"

    .line 998
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 997
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    .line 1001
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .line 3039
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUiMode()I
    .locals 1

    .line 5751
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    return v0
.end method

.method protected getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 5
    .param p1, "effectId"    # I

    .line 5988
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/16 v2, 0x2711

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    .line 6024
    return-object v3

    .line 6014
    :pswitch_0
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5992
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    if-nez v0, :cond_0

    .line 5993
    return-object v3

    .line 6003
    :pswitch_2
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5990
    :pswitch_3
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6017
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 6018
    .local v2, "pattern":[J
    goto :goto_0

    .line 5997
    .end local v2    # "pattern":[J
    :cond_0
    :pswitch_5
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6020
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 6021
    .restart local v2    # "pattern":[J
    nop

    .line 6026
    :goto_0
    array-length v4, v2

    if-nez v4, :cond_2

    .line 6028
    return-object v3

    .line 6029
    :cond_2
    array-length v3, v2

    const/4 v4, -0x1

    if-ne v3, v1, :cond_3

    .line 6031
    aget-wide v0, v2, v0

    invoke-static {v0, v1, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6034
    :cond_3
    invoke-static {v2, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6009
    .end local v2    # "pattern":[J
    :cond_4
    :pswitch_6
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6012
    :cond_5
    :pswitch_7
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method goHome()Z
    .locals 18

    .line 5865
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 5866
    const-string v0, "Not going home because user setup is in progress."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    return v3

    .line 5876
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    const-string/jumbo v0, "persist.sys.uts-test-mode"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 5878
    const-string v0, "UTS-TEST-MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5880
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5881
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5883
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 5884
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5885
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5886
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5887
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    .line 5885
    move-object v9, v0

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 5891
    .local v2, "result":I
    if-ne v2, v4, :cond_2

    .line 5892
    return v3

    .line 5896
    .end local v0    # "dock":Landroid/content/Intent;
    .end local v2    # "result":I
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5897
    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5898
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5899
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    .line 5897
    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5903
    .local v0, "result":I
    if-ne v0, v4, :cond_3

    .line 5904
    return v3

    .line 5908
    .end local v0    # "result":I
    :cond_3
    goto :goto_1

    .line 5906
    :catch_0
    move-exception v0

    .line 5910
    :goto_1
    return v4
.end method

.method protected handleShortPressOnHome(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1782
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    .line 1783
    .local v0, "hdmiControl":Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1791
    return-void

    .line 1795
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    .line 1796
    return-void
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 6053
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .line 5589
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5590
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .line 5398
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5399
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2032
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iput-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2033
    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2034
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2035
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2036
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2037
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2038
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 2039
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2040
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2041
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2042
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2043
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2044
    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2045
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2046
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 2047
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2048
    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 2050
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2052
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2053
    .local v11, "res":Landroid/content/res/Resources;
    nop

    .line 2054
    const v1, 0x111010a

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    .line 2055
    nop

    .line 2056
    const v1, 0x1110108

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    .line 2057
    nop

    .line 2058
    const v1, 0x1110109

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 2061
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 2064
    .local v12, "burnInProtectionEnabled":Z
    nop

    .line 2065
    const-string/jumbo v1, "persist.debug.force_burn_in"

    const/4 v13, 0x0

    invoke-static {v1, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 2066
    .local v14, "burnInProtectionDevMode":Z
    if-nez v12, :cond_0

    if-eqz v14, :cond_3

    .line 2072
    :cond_0
    if-eqz v14, :cond_2

    .line 2073
    const/4 v1, -0x8

    .line 2074
    .local v1, "minHorizontal":I
    const/16 v2, 0x8

    .line 2075
    .local v2, "maxHorizontal":I
    const/4 v3, -0x8

    .line 2076
    .local v3, "minVertical":I
    const/4 v4, -0x4

    .line 2077
    .local v4, "maxVertical":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .local v5, "maxRadius":I
    goto :goto_1

    .line 2079
    .end local v1    # "minHorizontal":I
    .end local v2    # "maxHorizontal":I
    .end local v3    # "minVertical":I
    .end local v4    # "maxVertical":I
    .end local v5    # "maxRadius":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2080
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2082
    .local v2, "minHorizontal":I
    const v3, 0x10e0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2084
    .local v3, "maxHorizontal":I
    const v4, 0x10e002b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2086
    .local v4, "minVertical":I
    const v5, 0x10e0029

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2088
    .local v5, "maxVertical":I
    const v6, 0x10e0028

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .line 2091
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "minHorizontal":I
    .end local v3    # "maxHorizontal":I
    .end local v4    # "minVertical":I
    .end local v5    # "maxVertical":I
    .local v15, "minHorizontal":I
    .local v16, "maxHorizontal":I
    .local v17, "minVertical":I
    .local v18, "maxVertical":I
    .local v19, "maxRadius":I
    :goto_1
    new-instance v7, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v1, v7

    move-object/from16 v2, p1

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object v13, v7

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2095
    .end local v15    # "minHorizontal":I
    .end local v16    # "maxHorizontal":I
    .end local v17    # "minVertical":I
    .end local v18    # "maxVertical":I
    .end local v19    # "maxRadius":I
    :cond_3
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2098
    new-instance v1, Lcom/android/server/ServiceThread;

    const/4 v3, -0x4

    const-string v4, "PhoneWinHandlerThread"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandlerThread:Lcom/android/server/ServiceThread;

    .line 2099
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 2100
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandler:Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

    .line 2102
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2103
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2104
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2105
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {v1, v8}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 2106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2108
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2109
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2112
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1110071

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2115
    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2119
    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2120
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2122
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2123
    const-string v2, "android.intent.category.VR_HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2124
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2127
    const-string/jumbo v1, "power"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2128
    const/4 v2, 0x1

    const-string v3, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2130
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2132
    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2133
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e006e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2135
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2137
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110099

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    .line 2140
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 2142
    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2143
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 2145
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 2147
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 2149
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 2151
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 2153
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2156
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111008e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2159
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11100de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2162
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0073

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2165
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 2167
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0075

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2169
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2171
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e005a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2173
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00cd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 2175
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2177
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00d2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 2179
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2182
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110076

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    .line 2185
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2187
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2190
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 2193
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2195
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    if-eqz v1, :cond_7

    .line 2196
    const/4 v1, 0x0

    invoke-static {v8, v1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    goto :goto_5

    .line 2197
    :cond_7
    const/4 v1, 0x0

    const-string/jumbo v2, "persist.debug.force_foldable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2198
    invoke-static {v8, v1}, Lcom/android/server/policy/DisplayFoldController;->createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 2202
    :cond_8
    :goto_5
    const-string v1, "accessibility"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2206
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2207
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2208
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2209
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2210
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2211
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2212
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 2213
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_9

    .line 2215
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 2220
    :cond_9
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v4

    .line 2221
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2222
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2223
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2226
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2227
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2229
    const-string/jumbo v4, "vibrator"

    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2230
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070055

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2232
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001f

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2234
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070069

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2237
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2240
    new-instance v4, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2246
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2247
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2248
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2251
    :cond_a
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2263
    new-instance v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v5, v0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2289
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mZenModeCallback:Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    invoke-static {v3}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V

    .line 2291
    return-void
.end method

.method initializeHdmiState()V
    .locals 2

    .line 4133
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 4135
    .local v0, "oldMask":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4137
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 4138
    nop

    .line 4139
    return-void

    .line 4137
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 4138
    throw v1
.end method

.method initializeHdmiStateInternal()V
    .locals 11

    .line 4142
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const/4 v1, 0x0

    .line 4143
    .local v1, "plugged":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v3, "mdss_mdp/drm/card"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4145
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMISwitchObserver:Landroid/os/UEventObserver;

    const-string v3, "change@/devices/virtual/graphics/fb2"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4146
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "WindowManager"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 4147
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v2, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4149
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 4150
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4152
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 4153
    const/16 v6, 0xf

    new-array v6, v6, [C

    .line 4154
    .local v6, "buf":[C
    invoke-virtual {v5, v6}, Ljava/io/FileReader;->read([C)I

    move-result v7

    .line 4155
    .local v7, "n":I
    if-le v7, v4, :cond_1

    .line 4156
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v7, -0x1

    const/4 v10, 0x0

    invoke-direct {v8, v6, v10, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v10, v4

    :cond_0
    move v1, v10

    .line 4163
    .end local v6    # "buf":[C
    .end local v7    # "n":I
    :cond_1
    nop

    .line 4165
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4167
    :goto_0
    goto :goto_1

    .line 4166
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4163
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4160
    :catch_1
    move-exception v6

    .line 4161
    .local v6, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4163
    nop

    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    if-eqz v5, :cond_2

    .line 4165
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 4158
    :catch_2
    move-exception v6

    .line 4159
    .local v6, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4163
    nop

    .end local v6    # "ex":Ljava/io/IOException;
    if-eqz v5, :cond_2

    .line 4165
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 4170
    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    goto :goto_4

    .line 4163
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :goto_2
    if-eqz v5, :cond_3

    .line 4165
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4167
    goto :goto_3

    .line 4166
    :catch_3
    move-exception v3

    .line 4169
    :cond_3
    :goto_3
    throw v0

    .line 4170
    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_4
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4171
    const-string v0, "hdmi"

    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver;->namedExtconDirExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4172
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 4173
    .local v0, "observer":Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->access$3200(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;)Z

    move-result v1

    .line 4174
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 4175
    .end local v0    # "observer":Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    :cond_5
    goto :goto_4

    :cond_6
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v0, :cond_5

    .line 4176
    const-string v0, "Not observing HDMI plug state because HDMI was not found."

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    :goto_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 4182
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 33
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3069
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    .line 3070
    .local v3, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 3071
    .local v4, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 3072
    .local v5, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 3073
    .local v6, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 3074
    .local v7, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 3075
    .local v10, "down":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 3076
    .local v11, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    .line 3078
    .local v12, "displayId":I
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v13, "WindowManager"

    if-eqz v0, :cond_1

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "interceptKeyTi keyCode="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " down="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " repeatCount="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " keyguardOn="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " canceled="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v14, 0x96

    const/16 v8, 0x19

    const-wide/16 v17, -0x1

    if-eqz v0, :cond_5

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_5

    .line 3098
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_2

    .line 3099
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 3100
    .local v19, "now":J
    move/from16 v21, v10

    .end local v10    # "down":Z
    .local v21, "down":Z
    iget-wide v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v9, v14

    .line 3102
    .local v9, "timeoutTime":J
    cmp-long v0, v19, v9

    if-gez v0, :cond_3

    .line 3103
    sub-long v13, v9, v19

    return-wide v13

    .line 3098
    .end local v9    # "timeoutTime":J
    .end local v19    # "now":J
    .end local v21    # "down":Z
    .restart local v10    # "down":Z
    :cond_2
    move/from16 v21, v10

    .line 3106
    .end local v10    # "down":Z
    .restart local v21    # "down":Z
    :cond_3
    if-ne v4, v8, :cond_6

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v0, :cond_6

    .line 3108
    if-nez v21, :cond_4

    .line 3109
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3111
    :cond_4
    return-wide v17

    .line 3097
    .end local v21    # "down":Z
    .restart local v10    # "down":Z
    :cond_5
    move/from16 v21, v10

    .line 3120
    .end local v10    # "down":Z
    .restart local v21    # "down":Z
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Ljava/lang/Long;

    move-result-object v9

    .line 3121
    .local v9, "shutdownChordresult":Ljava/lang/Long;
    if-eqz v9, :cond_7

    .line 3122
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    return-wide v13

    .line 3128
    :cond_7
    sget-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_8

    .line 3129
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 3130
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    .line 3129
    invoke-static {v2, v0}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;

    move-result-object v0

    .line 3131
    .local v0, "result":Ljava/lang/Long;
    if-eqz v0, :cond_8

    .line 3132
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    return-wide v13

    .line 3139
    .end local v0    # "result":Ljava/lang/Long;
    :cond_8
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_f

    .line 3141
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v0, v10

    if-eqz v0, :cond_a

    .line 3142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 3143
    .local v22, "now":J
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_9

    .line 3144
    move-object v10, v9

    .end local v9    # "shutdownChordresult":Ljava/lang/Long;
    .local v10, "shutdownChordresult":Ljava/lang/Long;
    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_1

    .end local v10    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v9    # "shutdownChordresult":Ljava/lang/Long;
    :cond_9
    move-object v10, v9

    .end local v9    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v10    # "shutdownChordresult":Ljava/lang/Long;
    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_1
    add-long/2addr v8, v14

    .line 3146
    .local v8, "timeoutTime":J
    cmp-long v20, v22, v8

    if-gez v20, :cond_b

    .line 3147
    sub-long v13, v8, v22

    return-wide v13

    .line 3141
    .end local v8    # "timeoutTime":J
    .end local v10    # "shutdownChordresult":Ljava/lang/Long;
    .end local v22    # "now":J
    .restart local v9    # "shutdownChordresult":Ljava/lang/Long;
    :cond_a
    move-object v10, v9

    .line 3150
    .end local v9    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v10    # "shutdownChordresult":Ljava/lang/Long;
    :cond_b
    const/16 v0, 0x19

    if-ne v4, v0, :cond_d

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v8, :cond_d

    .line 3151
    if-nez v21, :cond_c

    .line 3152
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3154
    :cond_c
    return-wide v17

    .line 3156
    :cond_d
    const/16 v8, 0x18

    if-ne v4, v8, :cond_10

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v8, :cond_10

    .line 3157
    if-nez v21, :cond_e

    .line 3158
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3160
    :cond_e
    return-wide v17

    .line 3139
    .end local v10    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v9    # "shutdownChordresult":Ljava/lang/Long;
    :cond_f
    move-object v10, v9

    .line 3166
    .end local v9    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v10    # "shutdownChordresult":Ljava/lang/Long;
    :cond_10
    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v8, :cond_14

    and-int/lit16 v8, v7, 0x400

    if-nez v8, :cond_14

    .line 3167
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v8, :cond_11

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v8, :cond_11

    .line 3168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3169
    .local v8, "now":J
    move-object/from16 v22, v10

    move/from16 v20, v11

    .end local v10    # "shutdownChordresult":Ljava/lang/Long;
    .end local v11    # "canceled":Z
    .local v20, "canceled":Z
    .local v22, "shutdownChordresult":Ljava/lang/Long;
    iget-wide v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v10, v14

    .line 3171
    .local v10, "timeoutTime":J
    cmp-long v14, v8, v10

    if-gez v14, :cond_12

    .line 3172
    sub-long v13, v10, v8

    return-wide v13

    .line 3167
    .end local v8    # "now":J
    .end local v20    # "canceled":Z
    .end local v22    # "shutdownChordresult":Ljava/lang/Long;
    .local v10, "shutdownChordresult":Ljava/lang/Long;
    .restart local v11    # "canceled":Z
    :cond_11
    move-object/from16 v22, v10

    move/from16 v20, v11

    .line 3175
    .end local v10    # "shutdownChordresult":Ljava/lang/Long;
    .end local v11    # "canceled":Z
    .restart local v20    # "canceled":Z
    .restart local v22    # "shutdownChordresult":Ljava/lang/Long;
    :cond_12
    const/16 v8, 0x18

    if-ne v4, v8, :cond_15

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v8, :cond_15

    .line 3176
    if-nez v21, :cond_13

    .line 3177
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3179
    :cond_13
    return-wide v17

    .line 3166
    .end local v20    # "canceled":Z
    .end local v22    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v10    # "shutdownChordresult":Ljava/lang/Long;
    .restart local v11    # "canceled":Z
    :cond_14
    move-object/from16 v22, v10

    move/from16 v20, v11

    .line 3185
    .end local v10    # "shutdownChordresult":Ljava/lang/Long;
    .end local v11    # "canceled":Z
    .restart local v20    # "canceled":Z
    .restart local v22    # "shutdownChordresult":Ljava/lang/Long;
    :cond_15
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v8, :cond_16

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v8

    if-nez v8, :cond_16

    .line 3186
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3189
    :cond_16
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v8, :cond_17

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {v4}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v8

    if-nez v8, :cond_17

    .line 3190
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 3197
    :cond_17
    const/4 v8, 0x3

    if-ne v4, v8, :cond_19

    .line 3198
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 3199
    .local v0, "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    if-nez v0, :cond_18

    .line 3200
    new-instance v8, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {v8, v1, v12}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    move-object v0, v8

    .line 3201
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v8, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3203
    :cond_18
    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)I

    move-result v9

    int-to-long v9, v9

    return-wide v9

    .line 3204
    .end local v0    # "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    :cond_19
    move-object/from16 v8, p1

    const/16 v9, 0x52

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    if-ne v4, v9, :cond_1b

    .line 3206
    const/4 v0, 0x1

    .line 3208
    .local v0, "chordBug":I
    if-eqz v21, :cond_1a

    if-nez v5, :cond_1a

    .line 3209
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v9, :cond_1a

    and-int/lit8 v9, v6, 0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1a

    .line 3210
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.BUG_REPORT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v9

    .line 3211
    .local v25, "intent":Landroid/content/Intent;
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v26, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v32}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3213
    return-wide v17

    .line 3216
    .end local v0    # "chordBug":I
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_1a
    move/from16 v11, v21

    goto/16 :goto_7

    :cond_1b
    const/16 v9, 0x54

    if-ne v4, v9, :cond_1e

    .line 3217
    if-eqz v21, :cond_1c

    .line 3218
    if-nez v5, :cond_1d

    .line 3219
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3220
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_2

    .line 3223
    :cond_1c
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3224
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_1d

    .line 3225
    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3226
    return-wide v17

    .line 3229
    :cond_1d
    :goto_2
    return-wide v14

    .line 3230
    :cond_1e
    const/16 v9, 0xbb

    if-ne v4, v9, :cond_21

    .line 3231
    if-nez v3, :cond_20

    .line 3232
    if-eqz v21, :cond_1f

    if-nez v5, :cond_1f

    .line 3233
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_3

    .line 3234
    :cond_1f
    if-nez v21, :cond_20

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 3238
    :cond_20
    :goto_3
    return-wide v17

    .line 3239
    :cond_21
    const/16 v9, 0x2a

    if-ne v4, v9, :cond_24

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 3240
    if-eqz v21, :cond_23

    .line 3241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    .line 3242
    .local v9, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v9, :cond_22

    .line 3244
    :try_start_0
    invoke-interface {v9}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
    goto :goto_4

    .line 3245
    :catch_0
    move-exception v0

    .line 3249
    .end local v9    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_22
    :goto_4
    move/from16 v11, v21

    goto/16 :goto_7

    .line 3240
    :cond_23
    move/from16 v11, v21

    goto/16 :goto_7

    .line 3250
    :cond_24
    const/16 v9, 0x2f

    if-ne v4, v9, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 3251
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 3252
    if-eqz v21, :cond_26

    if-nez v5, :cond_26

    .line 3253
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_25

    move/from16 v16, v10

    goto :goto_5

    .line 3254
    :cond_25
    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    .line 3255
    .local v0, "type":I
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v9, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3256
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v9, v10}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotSource(I)V

    .line 3257
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3258
    return-wide v17

    .line 3252
    .end local v0    # "type":I
    :cond_26
    move/from16 v11, v21

    goto/16 :goto_7

    .line 3260
    :cond_27
    const/16 v9, 0x4c

    if-ne v4, v9, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 3261
    if-eqz v21, :cond_28

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_28

    .line 3262
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    move/from16 v11, v21

    goto/16 :goto_7

    .line 3261
    :cond_28
    move/from16 v11, v21

    goto/16 :goto_7

    .line 3264
    :cond_29
    const/16 v9, 0xdb

    if-ne v4, v9, :cond_2a

    .line 3265
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return-wide v17

    .line 3267
    :cond_2a
    const/16 v9, 0xe7

    if-ne v4, v9, :cond_2b

    .line 3268
    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    return-wide v17

    .line 3270
    :cond_2b
    const/16 v9, 0x78

    if-ne v4, v9, :cond_2d

    .line 3271
    if-eqz v21, :cond_2c

    if-nez v5, :cond_2c

    .line 3272
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3273
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v10}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotSource(I)V

    .line 3274
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3276
    :cond_2c
    return-wide v17

    .line 3277
    :cond_2d
    const/16 v9, 0xdd

    if-eq v4, v9, :cond_56

    const/16 v11, 0xdc

    if-ne v4, v11, :cond_2e

    move/from16 v11, v21

    move/from16 v21, v7

    goto/16 :goto_14

    .line 3316
    :cond_2e
    const/16 v9, 0x18

    if-eq v4, v9, :cond_34

    const/16 v0, 0x19

    if-eq v4, v0, :cond_34

    const/16 v0, 0xa4

    if-ne v4, v0, :cond_2f

    move/from16 v11, v21

    goto :goto_6

    .line 3335
    :cond_2f
    const/16 v9, 0x3d

    if-ne v4, v9, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3337
    return-wide v14

    .line 3338
    :cond_30
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_31

    move/from16 v11, v21

    .end local v21    # "down":Z
    .local v11, "down":Z
    invoke-direct {v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3339
    return-wide v17

    .line 3338
    .end local v11    # "down":Z
    .restart local v21    # "down":Z
    :cond_31
    move/from16 v11, v21

    .line 3340
    .end local v21    # "down":Z
    .restart local v11    # "down":Z
    :cond_32
    const/16 v0, 0x11c

    if-ne v4, v0, :cond_36

    .line 3341
    if-nez v11, :cond_33

    .line 3342
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x16

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3343
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3344
    .local v0, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3345
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3347
    .end local v0    # "msg":Landroid/os/Message;
    :cond_33
    return-wide v17

    .line 3316
    .end local v11    # "down":Z
    .restart local v21    # "down":Z
    :cond_34
    move/from16 v11, v21

    .line 3319
    .end local v21    # "down":Z
    .restart local v11    # "down":Z
    :goto_6
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_55

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_35

    move/from16 v21, v7

    goto/16 :goto_13

    .line 3329
    :cond_35
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3330
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3331
    .local v0, "d":Landroid/view/InputDevice;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v9

    if-nez v9, :cond_36

    .line 3332
    return-wide v17

    .line 3351
    .end local v0    # "d":Landroid/view/InputDevice;
    :cond_36
    :goto_7
    const/4 v0, 0x0

    .line 3352
    .local v0, "actionTriggered":Z
    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 3353
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v9, :cond_37

    .line 3355
    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    .line 3356
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_8

    .line 3357
    :cond_37
    const/4 v9, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-ne v14, v9, :cond_39

    .line 3358
    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v14, v9, 0x32

    .line 3359
    .local v14, "altOnMask":I
    const/high16 v15, 0x70000

    and-int/2addr v15, v9

    .line 3362
    .local v15, "metaOnMask":I
    if-eqz v15, :cond_38

    if-eqz v14, :cond_38

    .line 3364
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    or-int v21, v14, v15

    xor-int v9, v9, v21

    if-ne v10, v9, :cond_38

    .line 3366
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 3367
    const/4 v0, 0x1

    .line 3372
    :cond_38
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    move v9, v0

    goto :goto_9

    .line 3376
    .end local v14    # "altOnMask":I
    .end local v15    # "metaOnMask":I
    :cond_39
    :goto_8
    move v9, v0

    .end local v0    # "actionTriggered":Z
    .local v9, "actionTriggered":Z
    :goto_9
    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    .line 3378
    if-eqz v9, :cond_3a

    .line 3379
    return-wide v17

    .line 3382
    :cond_3a
    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3383
    if-eqz v11, :cond_3b

    .line 3384
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_a

    .line 3385
    :cond_3b
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_3c

    .line 3386
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const-string v10, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual {v1, v10, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 3388
    :cond_3c
    :goto_a
    return-wide v17

    .line 3396
    :cond_3d
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/high16 v10, 0x10000000

    if-eqz v0, :cond_41

    .line 3397
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v14

    .line 3398
    .local v14, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v14, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3399
    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3400
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3401
    if-eqz v11, :cond_3f

    if-nez v5, :cond_3f

    if-nez v3, :cond_3f

    .line 3402
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v0, v14, v4, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v15

    .line 3403
    .local v15, "shortcutIntent":Landroid/content/Intent;
    if-eqz v15, :cond_3e

    .line 3404
    invoke-virtual {v15, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3406
    :try_start_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v15, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3407
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3412
    move/from16 v21, v7

    goto :goto_b

    .line 3408
    :catch_1
    move-exception v0

    .line 3409
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v7

    .end local v7    # "flags":I
    .local v21, "flags":I
    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3411
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3409
    invoke-static {v13, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3412
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_b

    .line 3414
    .end local v21    # "flags":I
    .restart local v7    # "flags":I
    :cond_3e
    move/from16 v21, v7

    .end local v7    # "flags":I
    .restart local v21    # "flags":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3414
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3401
    .end local v15    # "shortcutIntent":Landroid/content/Intent;
    .end local v21    # "flags":I
    .restart local v7    # "flags":I
    :cond_3f
    move/from16 v21, v7

    .line 3418
    .end local v7    # "flags":I
    .restart local v21    # "flags":I
    :goto_b
    return-wide v17

    .line 3398
    .end local v21    # "flags":I
    .restart local v7    # "flags":I
    :cond_40
    move/from16 v21, v7

    .end local v7    # "flags":I
    .restart local v21    # "flags":I
    goto :goto_c

    .line 3396
    .end local v14    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "flags":I
    .restart local v7    # "flags":I
    :cond_41
    move/from16 v21, v7

    .line 3423
    .end local v7    # "flags":I
    .restart local v21    # "flags":I
    :goto_c
    const/high16 v0, 0x10000

    if-eqz v11, :cond_42

    if-nez v5, :cond_42

    if-nez v3, :cond_42

    and-int v7, v6, v0

    if-eqz v7, :cond_42

    .line 3425
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v7

    .line 3426
    .local v7, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v7, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 3427
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v15, -0x70001

    and-int/2addr v15, v6

    invoke-virtual {v14, v7, v4, v15}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v14

    .line 3430
    .local v14, "shortcutIntent":Landroid/content/Intent;
    if-eqz v14, :cond_42

    .line 3431
    invoke-virtual {v14, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3433
    :try_start_2
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3434
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3439
    goto :goto_d

    .line 3435
    :catch_2
    move-exception v0

    .line 3436
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3436
    invoke-static {v13, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3440
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_d
    return-wide v17

    .line 3446
    .end local v7    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v14    # "shortcutIntent":Landroid/content/Intent;
    :cond_42
    if-eqz v11, :cond_43

    if-nez v5, :cond_43

    if-nez v3, :cond_43

    .line 3447
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3448
    .local v7, "category":Ljava/lang/String;
    if-eqz v7, :cond_43

    .line 3449
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 3450
    .local v14, "intent":Landroid/content/Intent;
    invoke-virtual {v14, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3452
    :try_start_3
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3453
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3458
    goto :goto_e

    .line 3454
    :catch_3
    move-exception v0

    .line 3455
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", category="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3459
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_e
    return-wide v17

    .line 3464
    .end local v7    # "category":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_43
    if-eqz v11, :cond_45

    if-nez v5, :cond_45

    const/16 v7, 0x3d

    if-ne v4, v7, :cond_45

    .line 3465
    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v7, :cond_46

    if-nez v3, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 3466
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v7

    and-int/lit16 v7, v7, -0xc2

    .line 3467
    .local v7, "shiftlessModifiers":I
    const/4 v10, 0x2

    invoke-static {v7, v10}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 3468
    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3469
    const/4 v10, 0x1

    invoke-direct {v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3470
    return-wide v17

    .line 3472
    .end local v7    # "shiftlessModifiers":I
    :cond_44
    goto :goto_f

    .line 3473
    :cond_45
    if-nez v11, :cond_46

    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v7, :cond_46

    and-int/2addr v7, v6

    if-nez v7, :cond_46

    .line 3475
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3476
    const/4 v10, 0x1

    invoke-direct {v1, v10, v7}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3480
    :cond_46
    :goto_f
    const/16 v7, 0x3e

    if-ne v4, v7, :cond_47

    const v10, 0x77000

    and-int/2addr v10, v6

    if-eqz v10, :cond_47

    const/4 v10, 0x1

    goto :goto_10

    :cond_47
    const/4 v10, 0x0

    .line 3482
    .local v10, "isCtrlOrMetaSpace":Z
    :goto_10
    const/16 v13, 0xcc

    if-eqz v11, :cond_4a

    if-nez v5, :cond_4a

    if-eq v4, v13, :cond_48

    if-eqz v10, :cond_4a

    .line 3484
    :cond_48
    and-int/lit16 v0, v6, 0xc1

    if-eqz v0, :cond_49

    const/16 v16, -0x1

    goto :goto_11

    :cond_49
    const/16 v16, 0x1

    :goto_11
    move/from16 v0, v16

    .line 3485
    .local v0, "direction":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    invoke-interface {v7, v13, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3486
    return-wide v17

    .line 3488
    .end local v0    # "direction":I
    :cond_4a
    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v14, :cond_4c

    if-nez v11, :cond_4c

    if-eq v4, v13, :cond_4b

    if-ne v4, v7, :cond_4c

    .line 3491
    :cond_4b
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3492
    return-wide v17

    .line 3495
    :cond_4c
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v7

    if-eqz v7, :cond_4d

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3496
    invoke-virtual {v7, v13, v4, v2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3497
    return-wide v17

    .line 3500
    :cond_4d
    if-eqz v11, :cond_53

    .line 3501
    int-to-long v13, v4

    .line 3502
    .local v13, "shortcutCode":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 3503
    const-wide v15, 0x100000000000L

    or-long/2addr v13, v15

    .line 3506
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 3507
    const-wide v15, 0x200000000L

    or-long/2addr v13, v15

    .line 3510
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 3511
    const-wide v15, 0x100000000L

    or-long/2addr v13, v15

    .line 3514
    :cond_50
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3515
    const-wide/high16 v15, 0x1000000000000L

    or-long/2addr v13, v15

    .line 3518
    :cond_51
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/IShortcutService;

    .line 3519
    .local v7, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v7, :cond_53

    .line 3521
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3522
    invoke-interface {v7, v13, v14}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3526
    :cond_52
    goto :goto_12

    .line 3524
    :catch_4
    move-exception v0

    .line 3525
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3527
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-wide v17

    .line 3532
    .end local v7    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    .end local v13    # "shortcutCode":J
    :cond_53
    and-int/2addr v0, v6

    if-eqz v0, :cond_54

    .line 3533
    return-wide v17

    .line 3537
    :cond_54
    const-wide/16 v13, 0x0

    return-wide v13

    .line 3319
    .end local v9    # "actionTriggered":Z
    .end local v10    # "isCtrlOrMetaSpace":Z
    .end local v21    # "flags":I
    .local v7, "flags":I
    :cond_55
    move/from16 v21, v7

    .line 3322
    .end local v7    # "flags":I
    .restart local v21    # "flags":I
    :goto_13
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    .line 3323
    return-wide v17

    .line 3277
    .end local v11    # "down":Z
    .restart local v7    # "flags":I
    .local v21, "down":Z
    :cond_56
    move/from16 v11, v21

    move/from16 v21, v7

    .line 3279
    .end local v7    # "flags":I
    .restart local v11    # "down":Z
    .local v21, "flags":I
    :goto_14
    if-eqz v11, :cond_59

    .line 3280
    if-ne v4, v9, :cond_57

    const/4 v10, 0x1

    goto :goto_15

    :cond_57
    const/4 v10, -0x1

    :goto_15
    move v0, v10

    .line 3283
    .local v0, "direction":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3284
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3283
    const-string/jumbo v9, "screen_brightness_mode"

    const/4 v10, -0x3

    const/4 v13, 0x0

    invoke-static {v7, v9, v13, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 3288
    .local v7, "auto":I
    if-eqz v7, :cond_58

    .line 3289
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v9, v13, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3294
    :cond_58
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9, v13}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v9

    .line 3296
    .local v9, "minFloat":F
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v13

    .line 3298
    .local v13, "maxFloat":F
    sub-float v14, v13, v9

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    int-to-float v15, v0

    mul-float/2addr v14, v15

    .line 3299
    .local v14, "stepFloat":F
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3300
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 3301
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 3299
    const-string/jumbo v10, "screen_brightness_float"

    move/from16 v19, v0

    const/4 v0, -0x3

    .end local v0    # "direction":I
    .local v19, "direction":I
    invoke-static {v15, v10, v2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 3304
    .local v2, "brightnessFloat":F
    add-float/2addr v2, v14

    .line 3306
    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 3307
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 3309
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v10, v2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 3312
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3315
    .end local v2    # "brightnessFloat":F
    .end local v7    # "auto":I
    .end local v9    # "minFloat":F
    .end local v13    # "maxFloat":F
    .end local v14    # "stepFloat":F
    .end local v19    # "direction":I
    :cond_59
    return-wide v17
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 24
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 4188
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4190
    return v1

    .line 4193
    :cond_0
    const/high16 v0, 0x20000000

    and-int v0, p2, v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v9, v0

    .line 4194
    .local v9, "interactive":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    move v10, v0

    .line 4195
    .local v10, "down":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 4196
    .local v11, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 4197
    .local v12, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    .line 4198
    .local v13, "displayId":I
    const/high16 v0, 0x1000000

    and-int v0, p2, v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    .line 4204
    .local v14, "isInjected":Z
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 4205
    :cond_4
    if-eqz v9, :cond_5

    .line 4206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_3

    .line 4207
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_3
    move v15, v0

    .line 4209
    .local v15, "keyguardActive":Z
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v6, "WindowManager"

    if-eqz v0, :cond_6

    .line 4210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptKeyTq keycode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " interactive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " keyguardActive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " policyFlags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4210
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    :cond_6
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    .line 4218
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v2

    .line 4219
    .local v0, "isWakeKey":Z
    :goto_5
    const/4 v5, -0x1

    if-nez v9, :cond_e

    if-eqz v14, :cond_9

    if-nez v0, :cond_9

    goto :goto_6

    .line 4234
    :cond_9
    if-nez v9, :cond_a

    invoke-direct {v7, v13, v12}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4239
    const/4 v3, 0x1

    .line 4241
    .local v3, "result":I
    iput v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v16, v0

    move v0, v3

    goto :goto_7

    .line 4245
    .end local v3    # "result":I
    :cond_a
    const/4 v3, 0x0

    .line 4246
    .restart local v3    # "result":I
    if-eqz v0, :cond_c

    if-eqz v10, :cond_b

    invoke-direct {v7, v12}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 4247
    :cond_b
    const/4 v0, 0x0

    .line 4250
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v10, :cond_d

    .line 4251
    iput v12, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 4257
    :cond_d
    move/from16 v16, v0

    move v0, v3

    goto :goto_7

    .line 4222
    .end local v3    # "result":I
    :cond_e
    :goto_6
    const/4 v3, 0x1

    .line 4223
    .restart local v3    # "result":I
    const/4 v0, 0x0

    .line 4225
    if-eqz v9, :cond_10

    .line 4228
    iget v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v12, v4, :cond_f

    if-nez v10, :cond_f

    .line 4229
    const/4 v3, 0x0

    .line 4232
    :cond_f
    iput v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v16, v0

    move v0, v3

    goto :goto_7

    .line 4225
    :cond_10
    move/from16 v16, v0

    move v0, v3

    .line 4257
    .end local v3    # "result":I
    .local v0, "result":I
    .local v16, "isWakeKey":Z
    :goto_7
    invoke-static {v12}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4258
    invoke-virtual {v3, v12, v8}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4259
    if-eqz v16, :cond_11

    .line 4260
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    const-string v6, "android.policy:KEY"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4263
    :cond_11
    return v0

    .line 4268
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_8

    :cond_13
    move v3, v1

    :goto_8
    move/from16 v17, v3

    .line 4269
    .local v17, "isNavBarVirtKey":Z
    if-eqz v10, :cond_15

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_15

    if-eqz v17, :cond_14

    iget-boolean v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v3, :cond_15

    .line 4272
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_15

    move v3, v2

    goto :goto_9

    :cond_15
    move v3, v1

    .line 4275
    .local v3, "useHapticFeedback":Z
    :goto_9
    const/4 v4, 0x4

    if-eq v12, v4, :cond_40

    const/4 v5, 0x5

    if-eq v12, v5, :cond_3e

    const/4 v5, 0x6

    if-eq v12, v5, :cond_38

    const/16 v5, 0x4f

    if-eq v12, v5, :cond_36

    const/16 v5, 0x82

    if-eq v12, v5, :cond_36

    const/16 v5, 0xa4

    const/16 v4, 0x18

    if-eq v12, v5, :cond_26

    const/16 v5, 0xab

    if-eq v12, v5, :cond_24

    const/16 v5, 0xdb

    if-eq v12, v5, :cond_20

    const/16 v5, 0xe7

    if-eq v12, v5, :cond_1e

    const/16 v5, 0x114

    if-eq v12, v5, :cond_1c

    const/16 v5, 0x7e

    if-eq v12, v5, :cond_18

    const/16 v5, 0x7f

    if-eq v12, v5, :cond_18

    packed-switch v12, :pswitch_data_0

    packed-switch v12, :pswitch_data_1

    packed-switch v12, :pswitch_data_2

    packed-switch v12, :pswitch_data_3

    move/from16 v20, v3

    goto/16 :goto_17

    .line 4494
    :pswitch_0
    and-int/lit8 v0, v0, -0x2

    .line 4495
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    .line 4496
    move/from16 v20, v3

    goto/16 :goto_17

    .line 4523
    :pswitch_1
    and-int/lit8 v0, v0, -0x2

    .line 4524
    const/16 v16, 0x1

    .line 4525
    move/from16 v20, v3

    goto/16 :goto_17

    .line 4500
    :pswitch_2
    and-int/lit8 v0, v0, -0x2

    .line 4501
    const/16 v16, 0x0

    .line 4502
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4503
    const/4 v3, 0x0

    .line 4505
    :cond_16
    if-eqz v10, :cond_17

    .line 4506
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_a

    .line 4508
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v7, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 4510
    goto :goto_a

    .line 4275
    :cond_18
    :pswitch_3
    move/from16 v20, v3

    goto/16 :goto_14

    .line 4451
    :pswitch_4
    nop

    .line 4452
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    .line 4453
    iget-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 4451
    invoke-static {v4, v5, v1}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    .line 4455
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4456
    and-int/lit8 v0, v0, -0x2

    .line 4457
    const/16 v16, 0x0

    .line 4461
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->oemIsActionPassToUser()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4462
    or-int/lit8 v0, v0, 0x1

    .line 4473
    :cond_19
    move v1, v9

    .line 4474
    .local v1, "newInteractive":Z
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4475
    const-string v4, "change interactive to false"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    const/4 v1, 0x0

    .line 4478
    :cond_1a
    if-eqz v10, :cond_1b

    .line 4479
    invoke-direct {v7, v8, v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto :goto_a

    .line 4481
    :cond_1b
    invoke-direct {v7, v8, v1, v11}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    .line 4484
    goto :goto_a

    .line 4275
    .end local v1    # "newInteractive":Z
    :pswitch_5
    move/from16 v20, v3

    goto/16 :goto_d

    .line 4514
    :cond_1c
    and-int/lit8 v0, v0, -0x2

    .line 4515
    const/16 v16, 0x0

    .line 4516
    if-nez v10, :cond_1d

    .line 4517
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 4622
    :cond_1d
    :goto_a
    move/from16 v20, v3

    goto/16 :goto_17

    .line 4594
    :cond_1e
    if-nez v10, :cond_1f

    .line 4595
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4596
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4597
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4598
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4600
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1f
    and-int/lit8 v0, v0, -0x2

    .line 4601
    move/from16 v20, v3

    goto/16 :goto_17

    .line 4578
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_21

    move v1, v2

    goto :goto_b

    :cond_21
    const/4 v1, 0x0

    .line 4579
    .local v1, "longPressed":Z
    :goto_b
    if-eqz v10, :cond_22

    if-eqz v1, :cond_22

    .line 4580
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4581
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4582
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4584
    .end local v4    # "msg":Landroid/os/Message;
    :cond_22
    if-nez v10, :cond_23

    if-nez v1, :cond_23

    .line 4585
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    move/from16 v19, v1

    .end local v1    # "longPressed":Z
    .local v19, "longPressed":Z
    const/4 v1, 0x0

    move/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "useHapticFeedback":Z
    .local v20, "useHapticFeedback":Z
    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4587
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4588
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    .line 4584
    .end local v19    # "longPressed":Z
    .end local v20    # "useHapticFeedback":Z
    .local v1, "longPressed":Z
    .restart local v3    # "useHapticFeedback":Z
    :cond_23
    move/from16 v19, v1

    move/from16 v20, v3

    .line 4590
    .end local v1    # "longPressed":Z
    .end local v3    # "useHapticFeedback":Z
    .restart local v19    # "longPressed":Z
    .restart local v20    # "useHapticFeedback":Z
    :goto_c
    and-int/lit8 v0, v0, -0x2

    .line 4591
    goto/16 :goto_17

    .line 4604
    .end local v19    # "longPressed":Z
    .end local v20    # "useHapticFeedback":Z
    .restart local v3    # "useHapticFeedback":Z
    :cond_24
    move/from16 v20, v3

    .end local v3    # "useHapticFeedback":Z
    .restart local v20    # "useHapticFeedback":Z
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    .line 4605
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v1, :cond_43

    .line 4609
    if-nez v10, :cond_25

    .line 4610
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    .line 4612
    :cond_25
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_17

    .line 4275
    .end local v20    # "useHapticFeedback":Z
    .restart local v3    # "useHapticFeedback":Z
    :cond_26
    move/from16 v20, v3

    .line 4295
    .end local v3    # "useHapticFeedback":Z
    .restart local v20    # "useHapticFeedback":Z
    :goto_d
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 4300
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->oemIsActionPassToUser()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4301
    or-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_e

    .line 4300
    :cond_27
    move v1, v0

    .line 4307
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_e
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 4308
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 4311
    const/16 v0, 0x19

    if-ne v12, v0, :cond_29

    .line 4312
    if-eqz v10, :cond_28

    .line 4314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4316
    if-eqz v9, :cond_2b

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_2b

    .line 4317
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2b

    .line 4318
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4319
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 4320
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 4321
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4322
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4323
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_f

    .line 4326
    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4327
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4328
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_f

    .line 4330
    :cond_29
    if-ne v12, v4, :cond_2b

    .line 4331
    if-eqz v10, :cond_2a

    .line 4332
    if-eqz v9, :cond_2b

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_2b

    .line 4333
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2b

    .line 4334
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 4335
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    .line 4336
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 4337
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4338
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4339
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4341
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    .line 4342
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_f

    .line 4345
    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 4346
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4347
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4348
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4351
    :cond_2b
    :goto_f
    if-eqz v10, :cond_32

    .line 4352
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4354
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v3

    .line 4355
    .local v3, "nm":Landroid/app/NotificationManager;
    if-eqz v3, :cond_2c

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_2c

    .line 4356
    invoke-virtual {v3}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 4359
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 4360
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v4, :cond_2d

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_2d

    .line 4363
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4370
    const-string/jumbo v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 4379
    and-int/lit8 v0, v1, -0x2

    .line 4380
    .end local v1    # "result":I
    .restart local v0    # "result":I
    goto/16 :goto_17

    .line 4383
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_2d
    const/4 v5, 0x0

    .line 4385
    .local v5, "audioMode":I
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    .line 4388
    goto :goto_10

    .line 4386
    :catch_0
    move-exception v0

    .line 4387
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4389
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2e
    const/4 v2, 0x3

    if-ne v5, v2, :cond_30

    :cond_2f
    const/4 v0, 0x1

    goto :goto_11

    :cond_30
    const/4 v0, 0x0

    .line 4391
    .local v0, "isInCall":Z
    :goto_11
    if-eqz v0, :cond_31

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_31

    .line 4394
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    .local v19, "nm":Landroid/app/NotificationManager;
    .local v22, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2, v8, v3, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4396
    goto :goto_12

    .line 4391
    .end local v19    # "nm":Landroid/app/NotificationManager;
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v3    # "nm":Landroid/app/NotificationManager;
    .restart local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_31
    move-object/from16 v19, v3

    move-object/from16 v22, v4

    .line 4399
    .end local v0    # "isInCall":Z
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v5    # "audioMode":I
    :cond_32
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_35

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_33

    goto :goto_13

    .line 4403
    :cond_33
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_34

    .line 4407
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4622
    :cond_34
    :goto_12
    move v0, v1

    goto/16 :goto_17

    .line 4402
    :cond_35
    :goto_13
    or-int/lit8 v0, v1, 0x1

    .end local v1    # "result":I
    .local v0, "result":I
    goto/16 :goto_17

    .line 4275
    .end local v20    # "useHapticFeedback":Z
    .local v3, "useHapticFeedback":Z
    :cond_36
    move/from16 v20, v3

    .line 4540
    .end local v3    # "useHapticFeedback":Z
    .restart local v20    # "useHapticFeedback":Z
    :goto_14
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4543
    and-int/lit8 v0, v0, -0x2

    .line 4545
    :cond_37
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_43

    .line 4551
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4552
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4554
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4555
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4556
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_17

    .line 4414
    .end local v20    # "useHapticFeedback":Z
    .restart local v3    # "useHapticFeedback":Z
    :cond_38
    move/from16 v20, v3

    .end local v3    # "useHapticFeedback":Z
    .restart local v20    # "useHapticFeedback":Z
    and-int/lit8 v0, v0, -0x2

    .line 4415
    if-eqz v10, :cond_3b

    .line 4416
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 4417
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 4418
    .local v2, "hungUp":Z
    if-eqz v1, :cond_39

    .line 4419
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    .line 4421
    :cond_39
    if-eqz v9, :cond_3a

    if-nez v2, :cond_3a

    .line 4422
    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4423
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4424
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    move/from16 v19, v0

    move-object/from16 v21, v1

    .end local v0    # "result":I
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    .local v19, "result":I
    .local v21, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    .line 4423
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 4421
    .end local v19    # "result":I
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v0    # "result":I
    .restart local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3a
    move/from16 v19, v0

    move-object/from16 v21, v1

    .line 4426
    .end local v0    # "result":I
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v19    # "result":I
    .restart local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4428
    .end local v2    # "hungUp":Z
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :goto_15
    goto :goto_16

    .line 4429
    .end local v19    # "result":I
    .restart local v0    # "result":I
    :cond_3b
    move/from16 v19, v0

    .end local v0    # "result":I
    .restart local v19    # "result":I
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_3d

    .line 4430
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4431
    if-nez v11, :cond_3d

    .line 4432
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3c

    .line 4434
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4435
    goto :goto_16

    .line 4438
    :cond_3c
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    .line 4440
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 4442
    const/16 v16, 0x0

    move/from16 v0, v19

    goto :goto_17

    .line 4622
    :cond_3d
    :goto_16
    move/from16 v0, v19

    goto :goto_17

    .line 4561
    .end local v19    # "result":I
    .end local v20    # "useHapticFeedback":Z
    .restart local v0    # "result":I
    .restart local v3    # "useHapticFeedback":Z
    :cond_3e
    move/from16 v20, v3

    .end local v3    # "useHapticFeedback":Z
    .restart local v20    # "useHapticFeedback":Z
    if-eqz v10, :cond_43

    .line 4562
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 4563
    .restart local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_3f

    .line 4564
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 4565
    const-string/jumbo v2, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 4571
    and-int/lit8 v0, v0, -0x2

    .line 4574
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3f
    goto :goto_17

    .line 4277
    .end local v20    # "useHapticFeedback":Z
    .restart local v3    # "useHapticFeedback":Z
    :cond_40
    move/from16 v20, v3

    .end local v3    # "useHapticFeedback":Z
    .restart local v20    # "useHapticFeedback":Z
    if-eqz v10, :cond_41

    .line 4278
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto :goto_17

    .line 4280
    :cond_41
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4283
    .local v1, "handled":Z
    if-eqz v1, :cond_42

    .line 4284
    and-int/lit8 v0, v0, -0x2

    .line 4287
    .end local v1    # "handled":Z
    :cond_42
    nop

    .line 4622
    :cond_43
    :goto_17
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_45

    .line 4623
    const/4 v1, 0x4

    if-eq v12, v1, :cond_44

    const/16 v1, 0x14

    if-eq v12, v1, :cond_44

    goto :goto_18

    .line 4626
    :cond_44
    invoke-direct {v7, v12, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v1

    .line 4627
    .restart local v1    # "handled":Z
    if-eqz v1, :cond_45

    .line 4628
    and-int/lit8 v0, v0, -0x2

    .line 4636
    .end local v1    # "handled":Z
    :cond_45
    :goto_18
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4637
    const/16 v1, 0x36

    if-eq v12, v1, :cond_46

    goto :goto_19

    .line 4639
    :cond_46
    if-eqz v10, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4640
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4641
    and-int/lit8 v0, v0, -0x2

    .line 4648
    :cond_47
    :goto_19
    if-eqz v20, :cond_48

    .line 4649
    const-string v1, "Virtual Key - Press"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v7, v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 4653
    :cond_48
    if-eqz v16, :cond_49

    .line 4654
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    const-string v18, "android.policy:KEY"

    move-object/from16 v1, p0

    const/4 v8, -0x1

    move-object/from16 v23, v6

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_1a

    .line 4653
    :cond_49
    move-object/from16 v23, v6

    const/4 v8, -0x1

    .line 4658
    :goto_1a
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4a

    .line 4661
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    if-nez v1, :cond_4a

    if-eq v13, v8, :cond_4a

    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v13, v1, :cond_4a

    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving non-focused display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to top because a key is targeting it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTop(I)V

    .line 4675
    :cond_4a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xde
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x118
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "whenNanos"    # J
    .param p4, "policyFlags"    # I

    .line 4782
    and-int/lit8 v0, p4, 0x1

    const-wide/32 v1, 0xf4240

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4783
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4785
    return v3

    .line 4789
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4790
    const/4 v0, 0x1

    return v0

    .line 4796
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2

    .line 4797
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4801
    :cond_2
    return v3
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .line 1754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1755
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1754
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isFODAndKeyguard()Z
    .locals 2

    .line 2649
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedAppOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2653
    return v1

    .line 2657
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardDisabledAndNotShowing()Z
    .locals 2

    .line 5373
    const/4 v0, 0x1

    .line 5374
    .local v0, "locked":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2

    .line 5375
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isKeyguardDisabledAndNotShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 5377
    :cond_2
    return v0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .line 5420
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5421
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    .line 5422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2554
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .line 5367
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .locals 1

    .line 5391
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5392
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 5384
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5385
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 5348
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5349
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .line 5354
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5355
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .locals 1

    .line 5360
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5361
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 5322
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .line 6083
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 6085
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6087
    :cond_1
    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 4

    .line 1760
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 1762
    .local v0, "isSetupComplete":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_1

    .line 1763
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1765
    :cond_1
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .line 6040
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .line 6044
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6045
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6047
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .line 3056
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

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

.method launchAssistAction(Ljava/lang/String;I)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 3825
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3826
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3828
    return-void

    .line 3830
    :cond_0
    const/4 v0, 0x0

    .line 3831
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v1, -0x80000000

    if-gt p2, v1, :cond_1

    if-eqz p1, :cond_3

    .line 3832
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 3833
    if-le p2, v1, :cond_2

    .line 3834
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3836
    :cond_2
    if-eqz p1, :cond_3

    .line 3837
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3842
    :cond_3
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->HEY_TAP_PACKAGE_NAME:Ljava/lang/String;

    .line 3843
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3844
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/16 v3, 0x17

    invoke-static {v1, v2, v3}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    .line 3847
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 3848
    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 3849
    return-void
.end method

.method launchHomeFromHotKey(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 3972
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 3973
    return-void
.end method

.method launchHomeFromHotKey(IZZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "awakenFromDreams"    # Z
    .param p3, "respectKeyguard"    # Z

    .line 3981
    if-eqz p3, :cond_1

    .line 3982
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3984
    return-void

    .line 3987
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3990
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3998
    return-void

    .line 4003
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 4005
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4006
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 4009
    if-eqz p2, :cond_2

    .line 4010
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 4012
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_1

    .line 4015
    :cond_3
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    .line 4017
    :goto_1
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .locals 4

    .line 4935
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4938
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4939
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "voiceIntent":Landroid/content/Intent;
    goto :goto_1

    .line 4941
    .end local v0    # "voiceIntent":Landroid/content/Intent;
    :cond_0
    nop

    .line 4942
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4941
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 4943
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_1

    .line 4945
    :try_start_0
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4947
    goto :goto_0

    .line 4946
    :catch_0
    move-exception v1

    .line 4949
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4950
    .local v1, "voiceIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    const-string v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    .line 4952
    .end local v1    # "voiceIntent":Landroid/content/Intent;
    .local v0, "voiceIntent":Landroid/content/Intent;
    :goto_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4953
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4954
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 5639
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5640
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5641
    if-eqz p1, :cond_0

    .line 5644
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 5646
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5647
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 11
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .line 4111
    move v0, p3

    .line 4112
    .local v0, "lensCoverState":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v1, v0, :cond_0

    .line 4113
    return-void

    .line 4115
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 4118
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 4119
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_0
    nop

    .line 4120
    .local v1, "keyguardActive":Z
    if-eqz v1, :cond_2

    .line 4121
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 4123
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4125
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_1
    const-wide/32 v3, 0xf4240

    div-long v6, p1, v3

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const/4 v9, 0x5

    const-string v10, "android.policy:CAMERA_COVER"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4127
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4129
    .end local v1    # "keyguardActive":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 4130
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 8
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 4092
    move v0, p3

    .line 4093
    .local v0, "newLidState":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4094
    return-void

    .line 4097
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 4098
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 4099
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 4101
    if-eqz p3, :cond_1

    .line 4102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/16 v6, 0x9

    const-string v7, "android.policy:LID"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_0

    .line 4104
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 4105
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4107
    :cond_2
    :goto_0
    return-void
.end method

.method public okToAnimate()Z
    .locals 1

    .line 5327
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3729
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_1

    .line 3730
    nop

    .line 3731
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3730
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    .line 3736
    :cond_1
    if-eqz p1, :cond_2

    .line 3738
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    .line 3740
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_2

    .line 3742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 3748
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->opOnDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3750
    return-void
.end method

.method public onKeyguardDone()V
    .locals 0

    .line 6093
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 3767
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3768
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 3769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_0

    .line 3771
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 3773
    :goto_0
    return-void
.end method

.method public onLongshotStart()V
    .locals 0

    .line 6441
    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    .line 5466
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5467
    return-void
.end method

.method protected opOnDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "windowState"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6453
    return-void
.end method

.method public performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "effectId"    # I
    .param p4, "always"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5926
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5927
    return v1

    .line 5929
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5931
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 5932
    return v1

    .line 5935
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 5936
    .local v9, "effect":Landroid/os/VibrationEffect;
    if-nez v9, :cond_4

    .line 5943
    if-nez p3, :cond_3

    .line 5944
    return v2

    .line 5946
    :cond_3
    return v1

    .line 5960
    :cond_4
    const/4 v1, -0x1

    .line 5961
    .local v1, "sceneId":I
    if-nez p3, :cond_6

    .line 5962
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 5963
    const/16 v1, 0x14

    goto :goto_1

    .line 5965
    :cond_5
    const/4 v1, 0x4

    goto :goto_1

    .line 5968
    :cond_6
    invoke-static {p3, p5}, Lcom/oneplus/util/VibratorSceneUtils;->getVibratorSceneEffectId(ILjava/lang/String;)I

    move-result v1

    .line 5971
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5972
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move v4, p1

    move-object v5, p2

    move-object v6, v9

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 5976
    :cond_7
    return v2
.end method

.method performHapticFeedback(IZLjava/lang/String;)Z
    .locals 6
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5919
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method powerLongPress()V
    .locals 5

    .line 1485
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1486
    .local v0, "behavior":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 1513
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1514
    const-string v1, "Power - Long Press - Go To Assistant"

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1516
    const/high16 v1, -0x80000000

    .line 1517
    .local v1, "powerKeyDeviceId":I
    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_1

    .line 1504
    .end local v1    # "powerKeyDeviceId":I
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1505
    const-string v1, "Power - Long Press - Go To Voice Assist"

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1510
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    .line 1511
    goto :goto_1

    .line 1497
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1498
    const-string v4, "Power - Long Press - Shut Off"

    invoke-virtual {p0, v2, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1500
    const-string v4, "globalactions"

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1501
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1502
    goto :goto_1

    .line 1490
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1491
    const-string v1, "Power - Long Press - Global Actions"

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1494
    nop

    .line 1520
    :goto_1
    return-void
.end method

.method powerVeryLongPress()V
    .locals 2

    .line 1530
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVeryLongPressOnPowerBehavior "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1537
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1538
    const/4 v0, 0x0

    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1543
    :goto_0
    return-void
.end method

.method readLidState()V
    .locals 2

    .line 2503
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 2504
    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 3700
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3701
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3703
    :cond_0
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 4
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3756
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    .line 3757
    .local v1, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3758
    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Key already exists."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/PhoneWindowManager;
    .end local p1    # "shortcutCode":J
    .end local p3    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    throw v2

    .line 3761
    .restart local p0    # "this":Lcom/android/server/policy/PhoneWindowManager;
    .restart local p1    # "shortcutCode":J
    .restart local p3    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3762
    .end local v1    # "service":Lcom/android/internal/policy/IShortcutService;
    monitor-exit v0

    .line 3763
    return-void

    .line 3762
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 5168
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5170
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5171
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 5172
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5174
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 5176
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5177
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5179
    return-void

    .line 5176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurnedOn()V
    .locals 2

    .line 5221
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5222
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 5223
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 5225
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5227
    return-void

    .line 5225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2
    .param p1, "screenOffListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 5231
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 5232
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 5234
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 5236
    :cond_0
    monitor-exit v0

    .line 5237
    return-void

    .line 5236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 5191
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    :cond_0
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "screenTurningOn"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5194
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5197
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5205
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandler:Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;->removeMessages(I)V

    .line 5206
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPhoneWinHandler:Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;

    .line 5207
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v3

    .line 5206
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$PhoneWinHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5209
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_0

    .line 5211
    :cond_1
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string/jumbo v2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5215
    :goto_0
    monitor-exit v0

    .line 5216
    return-void

    .line 5215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .line 5434
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5435
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 5438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5439
    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "allow"    # Z

    .line 5652
    if-eqz p2, :cond_0

    .line 5653
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5655
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5657
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5658
    return-void
.end method

.method public setAodShowing(Z)Z
    .locals 1
    .param p1, "aodShowing"    # Z

    .line 6391
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_0

    .line 6392
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    .line 6393
    const/4 v0, 0x1

    return v0

    .line 6395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentUserLw(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 6063
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6064
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6065
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6067
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_1

    .line 6068
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 6070
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 6071
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_2

    .line 6072
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 6074
    :cond_2
    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .locals 1
    .param p1, "displayContentInfo"    # Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;

    .line 2023
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 2024
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2025
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2026
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .line 6058
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 6059
    return-void
.end method

.method public setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4049
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4050
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 4051
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 4031
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 4032
    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 3714
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3715
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 3717
    :cond_0
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 4026
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 4027
    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 4021
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 4022
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .line 5443
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 5444
    if-eqz p1, :cond_0

    .line 5445
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const-string v2, "Safe Mode Enabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 5448
    :cond_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1
    .param p1, "switching"    # Z

    .line 6078
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    .line 6079
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 3695
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 3696
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .line 5528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5584
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1735
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1736
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    .line 1739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_0

    .line 1740
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1742
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1743
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1746
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->stopLongshot()V

    .line 1750
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1751
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .line 3937
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3938
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3939
    return-void
.end method

.method startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .line 3872
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3873
    return-void
.end method

.method startDockOrHome(IZZ)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "fromHomeKey"    # Z
    .param p3, "awakenFromDreams"    # Z

    .line 5829
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5830
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 5831
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5833
    if-eqz p3, :cond_0

    .line 5834
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 5837
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5838
    const-string v0, "WindowManager"

    const-string v1, "Not going home because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    return-void

    .line 5843
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5844
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 5846
    if-eqz p2, :cond_2

    .line 5847
    :try_start_1
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5849
    :cond_2
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5850
    return-void

    .line 5851
    :catch_1
    move-exception v1

    .line 5856
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v6, 0x1

    const-string/jumbo v4, "startDockOrHome"

    move v5, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    .line 5858
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 2
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .line 5427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5428
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 5431
    :cond_1
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .line 5008
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 5009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started going to sleep... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5010
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5009
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 5017
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 5018
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 5020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5021
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 5023
    :cond_1
    return-void
.end method

.method public startedWakingUp(I)V
    .locals 3
    .param p1, "why"    # I

    .line 5067
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setSystemServerToUx(Z)V

    .line 5070
    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5071
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    .line 5072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started waking up... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5073
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5072
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5082
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5083
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5084
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5085
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5086
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5088
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5089
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 5091
    :cond_1
    return-void

    .line 5085
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopLongshotConnection()V
    .locals 0

    .line 6449
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .line 5505
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5506
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5507
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 5508
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 5509
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5511
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5512
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    .line 5513
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(I)V

    .line 5514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5515
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 5516
    return-void

    .line 5511
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 3

    .line 5474
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 5476
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 5477
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    .line 5478
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 5481
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 5482
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 5483
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5485
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 5486
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5494
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_1

    .line 5495
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5497
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5499
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 5500
    return-void

    .line 5497
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public takeOPScreenshot(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "reason"    # I

    .line 6445
    return-void
.end method

.method protected toggleRecentApps()V
    .locals 1

    .line 3928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3929
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3930
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3931
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 3933
    :cond_0
    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 3707
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3708
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3710
    :cond_0
    return-void
.end method

.method updateRotation(Z)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z

    .line 5757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5760
    goto :goto_0

    .line 5758
    :catch_0
    move-exception v0

    .line 5761
    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 10

    .line 2322
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2323
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 2324
    .local v1, "updateRotation":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2325
    :try_start_0
    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2329
    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2333
    const-string v3, "incall_back_button_behavior"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2337
    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 2340
    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2343
    const-string/jumbo v3, "power_button_suppression_delay_after_gesture_wake"

    const/16 v7, 0x320

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 2346
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1110107

    .line 2347
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2348
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2352
    :cond_1
    const-string/jumbo v3, "wake_gesture_enabled"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    .line 2355
    .local v3, "wakeGestureEnabledSetting":Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v7, v3, :cond_3

    .line 2356
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2357
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2361
    :cond_3
    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v0, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2363
    const-string v7, "default_input_method"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2365
    .local v5, "imId":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    move v6, v4

    .line 2366
    .local v6, "hasSoftInput":Z
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v7, v6, :cond_5

    .line 2367
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2368
    const/4 v1, 0x1

    .line 2371
    :cond_5
    const-string/jumbo v7, "power_button_long_press"

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2373
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0075

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2371
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2375
    const-string/jumbo v7, "power_button_very_long_press"

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2377
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e00d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2375
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2379
    .end local v3    # "wakeGestureEnabledSetting":Z
    .end local v5    # "imId":Ljava/lang/String;
    .end local v6    # "hasSoftInput":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    if-eqz v1, :cond_6

    .line 2381
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 2383
    :cond_6
    return-void

    .line 2379
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateUiMode()V
    .locals 1

    .line 5739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_0

    .line 5740
    nop

    .line 5741
    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5740
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 5744
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5746
    goto :goto_0

    .line 5745
    :catch_0
    move-exception v0

    .line 5747
    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 5

    .line 5606
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5607
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_0

    .line 5609
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5610
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5612
    :cond_0
    monitor-exit v0

    .line 5613
    return-void

    .line 5612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected wakeUpFromPowerKey(J)V
    .locals 6
    .param p1, "eventTime"    # J

    .line 5117
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v4, 0x1

    const-string v5, "android.policy:POWER"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 5119
    return-void
.end method
