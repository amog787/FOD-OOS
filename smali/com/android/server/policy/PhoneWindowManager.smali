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

.field static DEBUG_LAYOUT:Z = false

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

.field private static final MOVING_DISPLAY_TO_TOP_DURATION_MILLIS:J = 0xaL

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

.field private static final MSG_MOVE_DISPLAY_TO_TOP:I = 0x1c

.field private static final MSG_NOTIFY_USER_ACTIVITY:I = 0x1a

.field private static final MSG_NOTIFY_WAKEUP_TO_SENSOR:I = 0x1

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x19

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x1b

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

.field private static final USER_ACTIVITY_NOTIFICATION_DELAY:I = 0xc8

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WAITING_FOR_DREAM_TIMEOUT:J = 0x1f4L

.field protected static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static localLOGV:Z

.field private static final mIsCustomFP:Z

.field private static mSensorManager:Landroid/hardware/SensorManager;

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

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field mHapticTextHandleEnabled:Z

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

.field private mIsFingerprintEnabled:Z

.field private mIsNotifyWakeUpToSensor:Z

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

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field private volatile mMovingDisplayToTopKeyTime:J

.field private volatile mMovingDisplayToTopKeyTriggered:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field private mNotifyUserActivity:Z

.field final mNotifyWakeUptoSensorHandle:Landroid/os/Handler;

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field volatile mPendingWakeKey:I

.field private mPerDisplayFocusEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

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

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mZenModeCallback:Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 286
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 291
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    .line 304
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 305
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 306
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 307
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    .line 308
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    .line 309
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 310
    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    .line 375
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 376
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 377
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 382
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 400
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 401
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0x40

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 403
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0x41

    const-string v4, "android.intent.category.APP_EMAIL"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 405
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xcf

    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 407
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd0

    const-string v4, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 409
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd1

    const-string v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 411
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd2

    const-string v4, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 760
    const-string/jumbo v2, "power_long_press_with_assistant_hint"

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    .line 762
    const-string/jumbo v2, "power_long_press_with_google_assistant_hint"

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    .line 764
    const-string v2, "com.heytap.speechassist"

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->HEY_TAP_PACKAGE_NAME:Ljava/lang/String;

    .line 2532
    new-array v2, v1, [I

    const/16 v3, 0x50

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    .line 2540
    sput v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_IGNORE:I

    .line 2541
    sput v1, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FINGERPRINT:I

    .line 2542
    const/4 v0, 0x2

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FACEUNLOCK:I

    .line 3014
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_0
    .array-data 4
        0x7f6
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNotifyWakeUpToSensor:Z

    .line 433
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 452
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 476
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 482
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 484
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 488
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 493
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 500
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 527
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 533
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 538
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 561
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 588
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 676
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 710
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 713
    new-instance v3, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v3, v4, v0}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 716
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 720
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 721
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 723
    const/16 v2, 0x320

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 879
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 886
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    .line 963
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 971
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    .line 1631
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1668
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    .line 1953
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 2533
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2534
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    .line 2619
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    .line 4932
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4951
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 4966
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5080
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyWakeUptoSensorHandle:Landroid/os/Handler;

    .line 5508
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5632
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 6437
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mZenModeCallback:Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestFullBugreport()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 282
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleAuthStateChange(ZII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 282
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager;JZILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;

    .line 282
    invoke-direct/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 282
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500()Landroid/hardware/SensorManager;
    .locals 1

    .line 282
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;

    .line 282
    sput-object p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I

    .line 282
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 282
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 1502
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .locals 4
    .param p1, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 2911
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2912
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2913
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2914
    if-nez v1, :cond_0

    .line 2915
    return-void

    .line 2917
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2918
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 2919
    return-void

    .line 2923
    :cond_1
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2924
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2925
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 2926
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 6

    .line 5709
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 5710
    .local v0, "lidState":I
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_1

    .line 5711
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/policy/DisplayFoldController;->requestDeviceFolded(Z)V

    goto :goto_1

    .line 5712
    :cond_1
    if-nez v0, :cond_4

    .line 5713
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v1

    .line 5714
    .local v1, "lidBehavior":I
    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 5716
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 5717
    goto :goto_1

    .line 5719
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 5730
    .end local v1    # "lidBehavior":I
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5731
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5732
    monitor-exit v1

    .line 5733
    return-void

    .line 5732
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static awakenDreams()V
    .locals 2

    .line 2976
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2977
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 2979
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2982
    goto :goto_0

    .line 2980
    :catch_0
    move-exception v1

    .line 2984
    :cond_0
    :goto_0
    return-void
.end method

.method private backLongPress()V
    .locals 2

    .line 1489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1491
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 1495
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    goto :goto_0

    .line 1493
    :cond_1
    nop

    .line 1498
    :goto_0
    return-void
.end method

.method private bindKeyguard()V
    .locals 4

    .line 5427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5428
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindKeyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    .line 5430
    monitor-exit v0

    return-void

    .line 5432
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 5433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5434
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 5435
    return-void

    .line 5433
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

    .line 1624
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1625
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    .line 1271
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_0

    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1273
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    :cond_0
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1629
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1621
    return-void
.end method

.method private cancelPossibleVeryLongPressReboot()V
    .locals 2

    .line 5682
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5683
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 1

    .line 3893
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_0

    .line 3894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3895
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3896
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3897
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 3900
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    .line 3940
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3941
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3942
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    .line 3944
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4799
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    .line 4800
    .local v0, "hdmiControlManager":Landroid/hardware/hdmi/HdmiControlManager;
    if-eqz v0, :cond_1

    .line 4801
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4802
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4803
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v1

    .line 4804
    .local v1, "audioSystemClient":Landroid/hardware/hdmi/HdmiAudioSystemClient;
    if-eqz v1, :cond_1

    .line 4805
    nop

    .line 4806
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4805
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    .line 4807
    return-void

    .line 4810
    .end local v1    # "audioSystemClient":Landroid/hardware/hdmi/HdmiAudioSystemClient;
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4811
    return-void

    .line 4813
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4814
    .local v1, "keyCode":I
    const/16 v8, 0x1005

    .line 4816
    .local v8, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 4818
    .local v9, "pkgName":Ljava/lang/String;
    const/16 v2, 0x18

    const-string v10, "WindowManager"

    if-eq v1, v2, :cond_6

    const/16 v2, 0x19

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 4837
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 4838
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    const/16 v3, 0x65

    const/high16 v4, -0x80000000

    const-string v7, "WindowManager"

    move v5, v8

    move-object v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4844
    :cond_4
    goto :goto_1

    .line 4842
    :catch_0
    move-exception v2

    .line 4843
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4829
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    const-string v7, "WindowManager"

    move v5, v8

    move-object v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4833
    goto :goto_1

    .line 4831
    :catch_1
    move-exception v2

    .line 4832
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4834
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 4821
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const-string v7, "WindowManager"

    move v5, v8

    move-object v6, v9

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4825
    goto :goto_1

    .line 4823
    :catch_2
    move-exception v2

    .line 4824
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v10, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4826
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 4847
    :goto_1
    return-void
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6283
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6289
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6287
    :cond_0
    const-string v0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object v0

    .line 6285
    :cond_1
    const-string v0, "DOUBLE_TAP_HOME_NOTHING"

    return-object v0
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "behavior"    # I

    .line 6225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6226
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 6227
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6229
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 6230
    const-string/jumbo v1, "sleep|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6233
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 6234
    .local v1, "N":I
    if-nez v1, :cond_2

    .line 6235
    const-string v2, "<nothing>"

    return-object v2

    .line 6238
    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    .line 5136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5137
    return-void

    .line 5140
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5142
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5144
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5148
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 5150
    return-void

    .line 5144
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

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1246
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1247
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1250
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 6

    .line 5237
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5238
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5240
    const-string v0, "WindowManager"

    const-string v1, "Authenticating to pending screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    return-void

    .line 5247
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5249
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 5250
    .local v0, "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5251
    return-void

    .line 5255
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 5256
    .local v1, "awake":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5259
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 5260
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 5261
    const/4 v3, 0x1

    .line 5262
    .local v3, "enableScreen":Z
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v5, :cond_3

    .line 5263
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5264
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_0

    .line 5267
    .end local v3    # "enableScreen":Z
    :cond_2
    move v3, v4

    .line 5269
    .restart local v3    # "enableScreen":Z
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5271
    if-eqz v0, :cond_4

    .line 5272
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5275
    :cond_4
    if-eqz v3, :cond_5

    .line 5277
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5279
    goto :goto_1

    .line 5278
    :catch_0
    move-exception v2

    .line 5281
    :cond_5
    :goto_1
    return-void

    .line 5269
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

    .line 5226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5227
    return-void

    .line 5230
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 5231
    return-void
.end method

.method private getAccessibilityShortcutTimeout()J
    .locals 5

    .line 1598
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1600
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1599
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 1601
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_0

    .line 1602
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    .line 1599
    :goto_0
    return-wide v1
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .line 2996
    nop

    .line 2997
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2996
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2998
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2999
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :cond_0
    return-object v0
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .line 2930
    if-nez p2, :cond_0

    .line 2932
    return-object p1

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2936
    .local v0, "targetDisplay":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 2939
    const/4 v1, 0x0

    return-object v1

    .line 2942
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .line 2987
    nop

    .line 2988
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2987
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 4

    .line 1744
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2

    .line 1745
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1746
    return-object v1

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1750
    .local v0, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v2, 0x0

    .line 1751
    .local v2, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v0, :cond_1

    .line 1752
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    .line 1754
    :cond_1
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1756
    .end local v0    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    .end local v2    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .locals 2

    .line 4851
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_0

    .line 4852
    const/4 v0, 0x0

    return-object v0

    .line 4854
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

    .line 5169
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 5170
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    .line 5172
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

    .line 1410
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

    .line 5423
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v0

    return-object v0
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    .line 1415
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    .line 1416
    const/4 v0, 0x3

    return v0

    .line 1418
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    .line 1419
    const/4 v0, 0x2

    return v0

    .line 1421
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    .line 1522
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    const/4 v0, 0x3

    return v0

    .line 1525
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .locals 2

    .line 1616
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .line 1606
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    const/high16 v0, 0x40200000    # 2.5f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1609
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 1608
    return-wide v0

    .line 1611
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

    .line 1358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 1359
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1360
    return-void
.end method

.method private goToSleepFromPowerButton(JI)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "flags"    # I

    .line 1339
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    .line 1340
    .local v0, "lastWakeUp":Landroid/os/PowerManager$WakeData;
    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v1, :cond_0

    .line 1341
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x320

    const-string/jumbo v4, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1344
    .local v2, "gestureDelayMillis":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1345
    .local v3, "now":J
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v5, :cond_0

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 1347
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

    .line 1349
    const/4 v1, 0x0

    return v1

    .line 1353
    .end local v2    # "gestureDelayMillis":I
    .end local v3    # "now":J
    :cond_0
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1354
    const/4 v1, 0x1

    return v1
.end method

.method private handleAuthStateChange(ZII)V
    .locals 6
    .param p1, "authenticating"    # Z
    .param p2, "authType"    # I
    .param p3, "result"    # I

    .line 2546
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2547
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/16 v1, 0x66

    if-eqz v0, :cond_d

    .line 2548
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2549
    if-ne p3, v2, :cond_e

    .line 2550
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2551
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2552
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2553
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2554
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 2555
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

    .line 2557
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2558
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    .line 2560
    :cond_2
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2564
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    .line 2566
    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FACEUNLOCK:I

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2567
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2568
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2569
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2570
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    .line 2571
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

    .line 2573
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2575
    :cond_5
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 2577
    :cond_6
    const/4 v0, 0x3

    if-ne p3, v0, :cond_9

    .line 2578
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FINGERPRINT:I

    if-ne p2, v0, :cond_c

    .line 2579
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2580
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2581
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2582
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_7

    .line 2583
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

    .line 2585
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2587
    :cond_8
    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 2589
    :cond_9
    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_IGNORE:I

    if-eq p2, v0, :cond_c

    .line 2590
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 2592
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2594
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2595
    :try_start_3
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_a

    .line 2596
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

    .line 2599
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    if-eqz v2, :cond_b

    .line 2600
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 2602
    :cond_b
    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 2605
    :cond_c
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowed:Z

    .line 2606
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2607
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    goto :goto_1

    .line 2610
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2611
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2612
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 2615
    :cond_e
    :goto_1
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 2

    .line 5284
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5285
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_0

    .line 5286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5287
    monitor-exit v0

    return-void

    .line 5289
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5291
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 5292
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5296
    :cond_2
    return-void

    .line 5289
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

    .line 979
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_0

    .line 980
    return-void

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 983
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hush_gesture_used"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 985
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 986
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .locals 4
    .param p1, "transit"    # I
    .param p2, "duration"    # J

    .line 3735
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3736
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

    .line 3738
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 3739
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3740
    const/4 v0, 0x5

    return v0

    .line 3743
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3744
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_2

    const-string v0, "Starting keyguard exit animation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 3747
    :cond_3
    return v2
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 1

    .line 1537
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

    .line 1529
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

    .line 1533
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

    .line 3947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3948
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3949
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3950
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 3952
    :cond_0
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6251
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 6252
    const-string v0, "hangup"

    return-object v0

    .line 6254
    :cond_0
    const-string v0, "<nothing>"

    return-object v0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6243
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    .line 6244
    const-string v0, "hangup"

    return-object v0

    .line 6246
    :cond_0
    const-string/jumbo v0, "sleep"

    return-object v0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 3540
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3541
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_0

    .line 3542
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 3543
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    .line 3546
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz v0, :cond_2

    .line 3547
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez v0, :cond_3

    .line 3548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3549
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3550
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3551
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3552
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3553
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz v0, :cond_3

    .line 3554
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 3558
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return v0
.end method

.method private interceptAccessibilityShortcutChord()V
    .locals 6

    .line 1563
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 1564
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    .line 1563
    invoke-static {v0}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptAccessibilityShortcutChord(Z)V

    .line 1566
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

    .line 1569
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1570
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

    .line 1573
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1574
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1575
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1576
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v4

    .line 1575
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1579
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptBackKeyDown()V
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    const-string/jumbo v2, "key_back_down"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1022
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1024
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1026
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1025
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1028
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1032
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x1

    const-string/jumbo v2, "key_back_up"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1037
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 1039
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v2, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 1042
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_1

    .line 1043
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1049
    const/4 v1, 0x0

    return v1

    .line 1050
    :cond_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    return v1

    .line 1060
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1064
    :cond_2
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 3514
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 3515
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_0

    .line 3516
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3517
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    .line 3520
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz v0, :cond_2

    .line 3521
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez v0, :cond_3

    .line 3522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3523
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3524
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3525
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3526
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3527
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz v0, :cond_3

    .line 3528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 3532
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return v0
.end method

.method private interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3644
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3645
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3646
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 3648
    .local v1, "delayMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 3649
    const/4 v3, 0x1

    return v3

    .line 3652
    .end local v1    # "delayMillis":J
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private interceptKeyBeforeDispatchingInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 33
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3055
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    .line 3056
    .local v3, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 3057
    .local v4, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 3058
    .local v5, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 3059
    .local v6, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 3060
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

    .line 3061
    .local v10, "down":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 3062
    .local v11, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    .line 3064
    .local v12, "displayId":I
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v13, "WindowManager"

    if-eqz v0, :cond_1

    .line 3065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "interceptKeyTi keyCode="

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

    .line 3071
    :cond_1
    const/16 v0, 0x18

    const/16 v14, 0x19

    const-wide/16 v15, -0x1

    if-eq v4, v14, :cond_2

    if-ne v4, v0, :cond_4

    .line 3072
    :cond_2
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3073
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "Block volume key by zen mode."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    :cond_3
    return-wide v15

    .line 3081
    :cond_4
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v18, 0x96

    if-eqz v8, :cond_8

    and-int/lit16 v8, v7, 0x400

    if-nez v8, :cond_8

    .line 3082
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v8, :cond_5

    .line 3083
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 3084
    .local v20, "now":J
    move v8, v10

    .end local v10    # "down":Z
    .local v8, "down":Z
    iget-wide v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long v9, v9, v18

    .line 3086
    .local v9, "timeoutTime":J
    cmp-long v22, v20, v9

    if-gez v22, :cond_6

    .line 3087
    sub-long v13, v9, v20

    return-wide v13

    .line 3082
    .end local v8    # "down":Z
    .end local v9    # "timeoutTime":J
    .end local v20    # "now":J
    .restart local v10    # "down":Z
    :cond_5
    move v8, v10

    .line 3090
    .end local v10    # "down":Z
    .restart local v8    # "down":Z
    :cond_6
    if-ne v4, v14, :cond_9

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v9, :cond_9

    .line 3092
    if-nez v8, :cond_7

    .line 3093
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3095
    :cond_7
    return-wide v15

    .line 3081
    .end local v8    # "down":Z
    .restart local v10    # "down":Z
    :cond_8
    move v8, v10

    .line 3101
    .end local v10    # "down":Z
    .restart local v8    # "down":Z
    :cond_9
    sget-boolean v9, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    if-eqz v9, :cond_a

    .line 3102
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 3103
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v9

    .line 3102
    invoke-static {v2, v9}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;Z)Ljava/lang/Long;

    move-result-object v9

    .line 3104
    .local v9, "result":Ljava/lang/Long;
    if-eqz v9, :cond_a

    .line 3105
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    return-wide v13

    .line 3112
    .end local v9    # "result":Ljava/lang/Long;
    :cond_a
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v9

    if-eqz v9, :cond_10

    and-int/lit16 v9, v7, 0x400

    if-nez v9, :cond_10

    .line 3114
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v9, v10

    if-eqz v9, :cond_c

    .line 3115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3116
    .local v9, "now":J
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_b

    .line 3117
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_1

    :cond_b
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_1
    add-long v14, v14, v18

    .line 3119
    .local v14, "timeoutTime":J
    cmp-long v16, v9, v14

    if-gez v16, :cond_c

    .line 3120
    sub-long v16, v14, v9

    return-wide v16

    .line 3123
    .end local v9    # "now":J
    .end local v14    # "timeoutTime":J
    :cond_c
    const/16 v0, 0x19

    if-ne v4, v0, :cond_e

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v9, :cond_e

    .line 3124
    if-nez v8, :cond_d

    .line 3125
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3127
    :cond_d
    const-wide/16 v9, -0x1

    return-wide v9

    .line 3129
    :cond_e
    const/16 v9, 0x18

    if-ne v4, v9, :cond_10

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v9, :cond_10

    .line 3130
    if-nez v8, :cond_f

    .line 3131
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3133
    :cond_f
    const-wide/16 v9, -0x1

    return-wide v9

    .line 3139
    :cond_10
    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v9, :cond_13

    and-int/lit16 v9, v7, 0x400

    if-nez v9, :cond_13

    .line 3140
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v9, :cond_11

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v9, :cond_11

    .line 3141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3142
    .restart local v9    # "now":J
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long v14, v14, v18

    .line 3144
    .restart local v14    # "timeoutTime":J
    cmp-long v16, v9, v14

    if-gez v16, :cond_11

    .line 3145
    sub-long v16, v14, v9

    return-wide v16

    .line 3148
    .end local v9    # "now":J
    .end local v14    # "timeoutTime":J
    :cond_11
    const/16 v9, 0x18

    if-ne v4, v9, :cond_13

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v9, :cond_13

    .line 3149
    if-nez v8, :cond_12

    .line 3150
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3152
    :cond_12
    const-wide/16 v9, -0x1

    return-wide v9

    .line 3158
    :cond_13
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v9, :cond_14

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v9

    if-nez v9, :cond_14

    .line 3159
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3162
    :cond_14
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v9, :cond_15

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v4}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v9

    if-nez v9, :cond_15

    .line 3163
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 3170
    :cond_15
    const/4 v9, 0x3

    if-ne v4, v9, :cond_17

    .line 3171
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 3172
    .local v0, "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    if-nez v0, :cond_16

    .line 3173
    new-instance v9, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {v9, v1, v12}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    move-object v0, v9

    .line 3174
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v9, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3176
    :cond_16
    move-object/from16 v9, p1

    invoke-virtual {v0, v9, v2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)I

    move-result v10

    int-to-long v13, v10

    return-wide v13

    .line 3177
    .end local v0    # "handler":Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    :cond_17
    move-object/from16 v9, p1

    const/16 v10, 0x52

    const-wide/16 v15, 0x0

    if-ne v4, v10, :cond_19

    .line 3179
    const/4 v0, 0x1

    .line 3181
    .local v0, "chordBug":I
    if-eqz v8, :cond_18

    if-nez v5, :cond_18

    .line 3182
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v10, :cond_18

    and-int/lit8 v10, v6, 0x1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_18

    .line 3183
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.BUG_REPORT"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v10

    .line 3184
    .local v25, "intent":Landroid/content/Intent;
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v26, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v32}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3186
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3189
    .end local v0    # "chordBug":I
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_18
    goto/16 :goto_7

    :cond_19
    const/16 v10, 0x54

    if-ne v4, v10, :cond_1c

    .line 3190
    if-eqz v8, :cond_1a

    .line 3191
    if-nez v5, :cond_1b

    .line 3192
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3193
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_2

    .line 3196
    :cond_1a
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3197
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_1b

    .line 3198
    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3199
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3202
    :cond_1b
    :goto_2
    return-wide v15

    .line 3203
    :cond_1c
    const/16 v10, 0xbb

    if-ne v4, v10, :cond_1f

    .line 3204
    if-nez v3, :cond_1e

    .line 3205
    if-eqz v8, :cond_1d

    if-nez v5, :cond_1d

    .line 3206
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_3

    .line 3207
    :cond_1d
    if-nez v8, :cond_1e

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 3211
    :cond_1e
    :goto_3
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3212
    :cond_1f
    const/16 v10, 0x2a

    if-ne v4, v10, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 3213
    if-eqz v8, :cond_30

    .line 3214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    .line 3215
    .local v10, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v10, :cond_20

    .line 3217
    :try_start_0
    invoke-interface {v10}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3220
    goto :goto_4

    .line 3218
    :catch_0
    move-exception v0

    .line 3222
    .end local v10    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_20
    :goto_4
    goto/16 :goto_7

    .line 3223
    :cond_21
    const/16 v10, 0x2f

    if-ne v4, v10, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 3224
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 3225
    if-eqz v8, :cond_30

    if-nez v5, :cond_30

    .line 3226
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v17, 0x2

    goto :goto_5

    .line 3227
    :cond_22
    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    .line 3228
    .local v0, "type":I
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v10, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3229
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v10, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3230
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3232
    .end local v0    # "type":I
    :cond_23
    const/16 v10, 0x4c

    if-ne v4, v10, :cond_24

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 3233
    if-eqz v8, :cond_30

    if-nez v5, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_30

    .line 3234
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_7

    .line 3236
    :cond_24
    const/16 v10, 0xdb

    if-ne v4, v10, :cond_25

    .line 3237
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    const-wide/16 v22, -0x1

    return-wide v22

    .line 3239
    :cond_25
    const-wide/16 v22, -0x1

    const/16 v10, 0xe7

    if-ne v4, v10, :cond_26

    .line 3240
    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    return-wide v22

    .line 3242
    :cond_26
    const/16 v10, 0x78

    if-ne v4, v10, :cond_28

    .line 3243
    if-eqz v8, :cond_27

    if-nez v5, :cond_27

    .line 3244
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3245
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3247
    :cond_27
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3248
    :cond_28
    const/16 v10, 0xdd

    if-eq v4, v10, :cond_51

    const/16 v14, 0xdc

    if-ne v4, v14, :cond_29

    move/from16 v16, v7

    goto/16 :goto_15

    .line 3285
    :cond_29
    const/16 v10, 0x18

    if-eq v4, v10, :cond_2e

    const/16 v0, 0x19

    if-eq v4, v0, :cond_2e

    const/16 v0, 0xa4

    if-ne v4, v0, :cond_2a

    goto :goto_6

    .line 3304
    :cond_2a
    const/16 v0, 0x3d

    if-ne v4, v0, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3306
    return-wide v15

    .line 3307
    :cond_2b
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2c

    invoke-direct {v1, v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3308
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3309
    :cond_2c
    const/16 v0, 0x11c

    if-ne v4, v0, :cond_30

    .line 3310
    if-nez v8, :cond_2d

    .line 3311
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x16

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3312
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3313
    .local v0, "msg":Landroid/os/Message;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3314
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3316
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3288
    :cond_2e
    :goto_6
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_50

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_2f

    move/from16 v16, v7

    const-wide/16 v17, -0x1

    goto/16 :goto_14

    .line 3298
    :cond_2f
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3299
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 3300
    .local v0, "d":Landroid/view/InputDevice;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v10

    if-nez v10, :cond_30

    .line 3301
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3320
    .end local v0    # "d":Landroid/view/InputDevice;
    :cond_30
    :goto_7
    const/4 v0, 0x0

    .line 3321
    .local v0, "actionTriggered":Z
    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 3322
    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v10, :cond_31

    .line 3324
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    .line 3325
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_8

    .line 3326
    :cond_31
    const/4 v10, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-ne v14, v10, :cond_33

    .line 3327
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v14, v10, 0x32

    .line 3328
    .local v14, "altOnMask":I
    const/high16 v19, 0x70000

    and-int v19, v10, v19

    .line 3331
    .local v19, "metaOnMask":I
    if-eqz v19, :cond_32

    if-eqz v14, :cond_32

    .line 3333
    iget v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    or-int v16, v14, v19

    xor-int v10, v10, v16

    if-ne v15, v10, :cond_32

    .line 3335
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 3336
    const/4 v0, 0x1

    .line 3341
    :cond_32
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    move v10, v0

    goto :goto_9

    .line 3345
    .end local v14    # "altOnMask":I
    .end local v19    # "metaOnMask":I
    :cond_33
    :goto_8
    move v10, v0

    .end local v0    # "actionTriggered":Z
    .local v10, "actionTriggered":Z
    :goto_9
    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    .line 3347
    if-eqz v10, :cond_34

    .line 3348
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3351
    :cond_34
    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3352
    if-eqz v8, :cond_35

    .line 3353
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_a

    .line 3354
    :cond_35
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_36

    .line 3355
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const-string v13, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual {v1, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 3357
    :cond_36
    :goto_a
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3365
    :cond_37
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v0, :cond_3b

    .line 3366
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 3367
    .local v15, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v15, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3368
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3369
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3370
    if-eqz v8, :cond_39

    if-nez v5, :cond_39

    if-nez v3, :cond_39

    .line 3371
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v14, v15, v4, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v14

    .line 3372
    .local v14, "shortcutIntent":Landroid/content/Intent;
    if-eqz v14, :cond_38

    .line 3373
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3375
    :try_start_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3376
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3381
    move/from16 v16, v7

    goto :goto_b

    .line 3377
    :catch_1
    move-exception v0

    .line 3378
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    move/from16 v16, v7

    .end local v7    # "flags":I
    .local v16, "flags":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3380
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3378
    invoke-static {v13, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3381
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_b

    .line 3383
    .end local v16    # "flags":I
    .restart local v7    # "flags":I
    :cond_38
    move/from16 v16, v7

    .end local v7    # "flags":I
    .restart local v16    # "flags":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3383
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3370
    .end local v14    # "shortcutIntent":Landroid/content/Intent;
    .end local v16    # "flags":I
    .restart local v7    # "flags":I
    :cond_39
    move/from16 v16, v7

    .line 3387
    .end local v7    # "flags":I
    .restart local v16    # "flags":I
    :goto_b
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3367
    .end local v16    # "flags":I
    .restart local v7    # "flags":I
    :cond_3a
    move/from16 v16, v7

    .end local v7    # "flags":I
    .restart local v16    # "flags":I
    goto :goto_c

    .line 3365
    .end local v15    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v16    # "flags":I
    .restart local v7    # "flags":I
    :cond_3b
    move/from16 v16, v7

    .line 3392
    .end local v7    # "flags":I
    .restart local v16    # "flags":I
    :goto_c
    const/high16 v7, 0x10000

    if-eqz v8, :cond_3c

    if-nez v5, :cond_3c

    if-nez v3, :cond_3c

    and-int v9, v6, v7

    if-eqz v9, :cond_3c

    .line 3394
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v9

    .line 3395
    .local v9, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v9, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 3396
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v15, -0x70001

    and-int/2addr v15, v6

    invoke-virtual {v14, v9, v4, v15}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v14

    .line 3399
    .restart local v14    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v14, :cond_3c

    .line 3400
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3402
    :try_start_2
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3403
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3408
    goto :goto_d

    .line 3404
    :catch_2
    move-exception v0

    .line 3405
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3405
    invoke-static {v13, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3409
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_d
    const-wide/16 v17, -0x1

    return-wide v17

    .line 3415
    .end local v9    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v14    # "shortcutIntent":Landroid/content/Intent;
    :cond_3c
    if-eqz v8, :cond_3d

    if-nez v5, :cond_3d

    if-nez v3, :cond_3d

    .line 3416
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3417
    .local v9, "category":Ljava/lang/String;
    if-eqz v9, :cond_3d

    .line 3418
    const-string v7, "android.intent.action.MAIN"

    invoke-static {v7, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 3419
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3421
    :try_start_3
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3422
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3427
    goto :goto_e

    .line 3423
    :catch_3
    move-exception v0

    .line 3424
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", category="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3428
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_e
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3433
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "category":Ljava/lang/String;
    :cond_3d
    if-eqz v8, :cond_3f

    if-nez v5, :cond_3f

    const/16 v0, 0x3d

    if-ne v4, v0, :cond_3f

    .line 3434
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_40

    if-nez v3, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3435
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3436
    .local v0, "shiftlessModifiers":I
    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 3437
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3438
    const/4 v7, 0x1

    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3439
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3441
    .end local v0    # "shiftlessModifiers":I
    :cond_3e
    goto :goto_f

    .line 3442
    :cond_3f
    if-nez v8, :cond_40

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_40

    and-int/2addr v0, v6

    if-nez v0, :cond_40

    .line 3444
    const/4 v9, 0x0

    iput v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3445
    const/4 v13, 0x1

    invoke-direct {v1, v13, v9}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3449
    :cond_40
    :goto_f
    const/16 v0, 0x3e

    if-ne v4, v0, :cond_41

    const v9, 0x77000

    and-int/2addr v9, v6

    if-eqz v9, :cond_41

    const/4 v9, 0x1

    goto :goto_10

    :cond_41
    const/4 v9, 0x0

    .line 3451
    .local v9, "isCtrlOrMetaSpace":Z
    :goto_10
    if-eqz v8, :cond_44

    if-nez v5, :cond_44

    const/16 v13, 0xcc

    if-eq v4, v13, :cond_42

    if-eqz v9, :cond_44

    .line 3453
    :cond_42
    and-int/lit16 v0, v6, 0xc1

    if-eqz v0, :cond_43

    const/4 v0, -0x1

    goto :goto_11

    :cond_43
    const/4 v0, 0x1

    .line 3454
    .local v0, "direction":I
    :goto_11
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    invoke-interface {v7, v13, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3455
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3457
    .end local v0    # "direction":I
    :cond_44
    iget-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v13, :cond_46

    if-nez v8, :cond_46

    const/16 v13, 0xcc

    if-eq v4, v13, :cond_45

    if-ne v4, v0, :cond_46

    .line 3460
    :cond_45
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3461
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3464
    :cond_46
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3465
    invoke-virtual {v0, v13, v4, v2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3466
    const-wide/16 v13, -0x1

    return-wide v13

    .line 3469
    :cond_47
    if-eqz v8, :cond_4e

    .line 3470
    int-to-long v13, v4

    .line 3471
    .local v13, "shortcutCode":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3472
    const-wide v17, 0x100000000000L

    or-long v13, v13, v17

    .line 3475
    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3476
    const-wide v17, 0x200000000L

    or-long v13, v13, v17

    .line 3479
    :cond_49
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3480
    const-wide v17, 0x100000000L

    or-long v13, v13, v17

    .line 3483
    :cond_4a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3484
    const-wide/high16 v17, 0x1000000000000L

    or-long v13, v13, v17

    .line 3487
    :cond_4b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/internal/policy/IShortcutService;

    .line 3488
    .local v15, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v15, :cond_4d

    .line 3490
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3491
    invoke-interface {v15, v13, v14}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3495
    :cond_4c
    goto :goto_12

    .line 3493
    :catch_4
    move-exception v0

    .line 3494
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v13, v14}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3496
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    const-wide/16 v17, -0x1

    return-wide v17

    .line 3488
    :cond_4d
    const-wide/16 v17, -0x1

    goto :goto_13

    .line 3469
    .end local v13    # "shortcutCode":J
    .end local v15    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    :cond_4e
    const-wide/16 v17, -0x1

    .line 3501
    :goto_13
    and-int v0, v6, v7

    if-eqz v0, :cond_4f

    .line 3502
    return-wide v17

    .line 3506
    :cond_4f
    const-wide/16 v13, 0x0

    return-wide v13

    .line 3288
    .end local v9    # "isCtrlOrMetaSpace":Z
    .end local v10    # "actionTriggered":Z
    .end local v16    # "flags":I
    .local v7, "flags":I
    :cond_50
    move/from16 v16, v7

    const-wide/16 v17, -0x1

    .line 3291
    .end local v7    # "flags":I
    .restart local v16    # "flags":I
    :goto_14
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    .line 3292
    return-wide v17

    .line 3248
    .end local v16    # "flags":I
    .restart local v7    # "flags":I
    :cond_51
    move/from16 v16, v7

    .line 3250
    .end local v7    # "flags":I
    .restart local v16    # "flags":I
    :goto_15
    if-eqz v8, :cond_54

    .line 3251
    if-ne v4, v10, :cond_52

    const/4 v0, 0x1

    goto :goto_16

    :cond_52
    const/4 v0, -0x1

    .line 3254
    .local v0, "direction":I
    :goto_16
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3255
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3254
    const/4 v9, -0x3

    const-string/jumbo v10, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v7, v10, v13, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 3259
    .local v7, "auto":I
    if-eqz v7, :cond_53

    .line 3260
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v14, "screen_brightness_mode"

    invoke-static {v10, v14, v13, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3266
    :cond_53
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v10}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v10

    .line 3267
    .local v10, "min":I
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v13

    .line 3268
    .local v13, "max":I
    sub-int v14, v13, v10

    add-int/lit8 v14, v14, 0xa

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0xa

    mul-int/2addr v14, v0

    .line 3269
    .local v14, "step":I
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 3271
    invoke-virtual {v9}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v9

    .line 3269
    move/from16 v18, v0

    .end local v0    # "direction":I
    .local v18, "direction":I
    const-string/jumbo v0, "screen_brightness"

    const/4 v2, -0x3

    invoke-static {v15, v0, v9, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3273
    .local v0, "brightness":I
    add-int/2addr v0, v14

    .line 3275
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3276
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3278
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v15, "screen_brightness"

    invoke-static {v9, v15, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3281
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3284
    .end local v0    # "brightness":I
    .end local v7    # "auto":I
    .end local v10    # "min":I
    .end local v13    # "max":I
    .end local v14    # "step":I
    .end local v18    # "direction":I
    :cond_54
    const-wide/16 v9, -0x1

    return-wide v9
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 1069
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1074
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1082
    invoke-static {p1, p2}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    .line 1086
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v1, :cond_2

    .line 1087
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    .line 1088
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1089
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 1090
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 1091
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    .line 1095
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1096
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 1097
    .local v2, "hungUp":Z
    if-eqz v1, :cond_4

    .line 1098
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1101
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_0

    .line 1102
    :cond_3
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 1104
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    .line 1107
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    .line 1111
    :cond_4
    :goto_0
    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GestureLauncherService;

    .line 1113
    .local v3, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v4, 0x0

    .line 1115
    .local v4, "gesturedServiceIntercepted":Z
    if-eqz v3, :cond_5

    .line 1116
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v4

    .line 1118
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v5, v5, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v5, :cond_5

    .line 1119
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 1124
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1126
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->schedulePossibleVeryLongPressReboot()V

    .line 1130
    if-nez v2, :cond_7

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v5, :cond_7

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move v5, v0

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1132
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    const-string v6, "WindowManager"

    if-eqz v5, :cond_8

    .line 1133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hungUp "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",mScreenshotChordVolumeDownKeyTriggered "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",mA11yShortcutChordVolumeUpKeyTriggered "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",gesturedServiceIntercepted "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v5, :cond_12

    .line 1139
    const/16 v5, 0x19

    const/16 v7, 0xe

    if-eqz p2, :cond_b

    .line 1142
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1143
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_9

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto/16 :goto_4

    .line 1150
    :cond_9
    invoke-static {p1}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1152
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1153
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v6, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1154
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1155
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 1154
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1157
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1158
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1159
    .local v5, "longMsg":Landroid/os/Message;
    invoke-virtual {v5, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v7, v7

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1162
    .end local v5    # "longMsg":Landroid/os/Message;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_a
    goto/16 :goto_4

    .line 1165
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1167
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v8, :cond_e

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_c

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_3

    .line 1171
    :cond_c
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1172
    .restart local v6    # "msg":Landroid/os/Message;
    invoke-virtual {v6, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1173
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1174
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 1173
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1176
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1177
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1178
    .restart local v5    # "longMsg":Landroid/os/Message;
    invoke-virtual {v5, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1179
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1183
    .end local v5    # "longMsg":Landroid/os/Message;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_d
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_4

    .line 1186
    :cond_e
    invoke-static {p1}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1187
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_4

    .line 1190
    :cond_f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v5

    .line 1191
    .local v5, "maxCount":I
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_10

    .line 1192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maxCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_10
    if-gt v5, v0, :cond_11

    .line 1196
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_4

    .line 1198
    :cond_11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1203
    .end local v5    # "maxCount":I
    :cond_12
    :goto_4
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .line 1206
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

    .line 1209
    .local v2, "handled":Z
    :goto_1
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptPowerKeyUp()V

    .line 1211
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1212
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1215
    if-nez v2, :cond_4

    .line 1216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v4, v3}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1222
    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1224
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v0

    .line 1225
    .local v0, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 1226
    .local v3, "eventTime":J
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v5, v0, :cond_3

    .line 1229
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    .line 1230
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1229
    invoke-virtual {v5, v6, p2, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1231
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1232
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1233
    return-void

    .line 1237
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v3, v4, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1241
    .end local v0    # "maxCount":I
    .end local v3    # "eventTime":J
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1242
    return-void
.end method

.method private interceptRingerToggleChord()V
    .locals 6

    .line 1582
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    .line 1584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1585
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

    .line 1588
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1591
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1592
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v4

    .line 1591
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1595
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .line 1541
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_0

    .line 1544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1545
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

    .line 1548
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1550
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 1551
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1556
    .end local v0    # "now":J
    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptScreenshotChord()V

    .line 1558
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4642
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4643
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4644
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4645
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_1

    .line 4646
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4650
    :cond_1
    return-void
.end method

.method private isHidden(I)Z
    .locals 4
    .param p1, "accessibilityMode"    # I

    .line 2484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 2485
    .local v0, "lidState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 2491
    return v1

    .line 2489
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 2487
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private isRoundWindow()Z
    .locals 1

    .line 1957
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

    .line 5909
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isTvUserSetupComplete()Z
    .locals 4

    .line 1708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "tv_user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 4681
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    .line 4687
    const/4 v0, 0x1

    return v0

    .line 4685
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .line 4699
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xde

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 4722
    return v2

    .line 4720
    :cond_0
    :pswitch_0
    return v1

    .line 4704
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private launchAllAppsAction()V
    .locals 5

    .line 1782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_0

    .line 1784
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1785
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v2, "intentLauncher":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1790
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 1791
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1794
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "intentLauncher":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1795
    return-void
.end method

.method private launchAssistLongPressAction()V
    .locals 4

    .line 3762
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3765
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3766
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3770
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    .line 3771
    .local v1, "searchManager":Landroid/app/SearchManager;
    if-eqz v1, :cond_0

    .line 3772
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 3774
    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3777
    .end local v1    # "searchManager":Landroid/app/SearchManager;
    goto :goto_0

    .line 3775
    :catch_0
    move-exception v1

    .line 3776
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist long press action."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3778
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private launchVoiceAssist(Z)V
    .locals 4
    .param p1, "allowDuringSetup"    # Z

    .line 3829
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    .line 3830
    const/4 v0, 0x0

    goto :goto_0

    .line 3831
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_0
    nop

    .line 3832
    .local v0, "keyguardActive":Z
    if-nez v0, :cond_1

    .line 3833
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3834
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3838
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private static lidBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6378
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 6386
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6380
    :cond_0
    const-string v0, "LID_BEHAVIOR_LOCK"

    return-object v0

    .line 6382
    :cond_1
    const-string v0, "LID_BEHAVIOR_SLEEP"

    return-object v0

    .line 6384
    :cond_2
    const-string v0, "LID_BEHAVIOR_NONE"

    return-object v0
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6259
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6265
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6263
    :cond_0
    const-string v0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 6261
    :cond_1
    const-string v0, "LONG_PRESS_BACK_NOTHING"

    return-object v0
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6270
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 6278
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6276
    :cond_0
    const-string v0, "LONG_PRESS_HOME_ASSIST"

    return-object v0

    .line 6274
    :cond_1
    const-string v0, "LONG_PRESS_HOME_ALL_APPS"

    return-object v0

    .line 6272
    :cond_2
    const-string v0, "LONG_PRESS_HOME_NOTHING"

    return-object v0
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6313
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

    .line 6327
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6325
    :cond_0
    const-string v0, "LONG_PRESS_POWER_ASSISTANT"

    return-object v0

    .line 6323
    :cond_1
    const-string v0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 6321
    :cond_2
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object v0

    .line 6319
    :cond_3
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object v0

    .line 6317
    :cond_4
    const-string v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 6315
    :cond_5
    const-string v0, "LONG_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6343
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 6351
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6349
    :cond_0
    const-string v0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object v0

    .line 6347
    :cond_1
    const-string v0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object v0

    .line 6345
    :cond_2
    const-string v0, "MULTI_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private powerMultiPressAction(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    .line 1373
    if-eqz p4, :cond_5

    const/4 v0, 0x1

    const-string v1, "WindowManager"

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    const-string v0, "Starting brightness boost."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    if-nez p3, :cond_1

    .line 1402
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    .line 1377
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1378
    const-string v0, "Ignoring toggling theater mode - device not setup."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    goto :goto_0

    .line 1382
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "theater_mode_on"

    if-eqz v2, :cond_4

    .line 1383
    const-string v0, "Toggling theater mode off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1386
    if-nez p3, :cond_6

    .line 1387
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    .line 1390
    :cond_4
    const-string v2, "Toggling theater mode on."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1394
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    .line 1395
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    .line 1375
    :cond_5
    nop

    .line 1407
    :cond_6
    :goto_0
    return-void
.end method

.method private powerPress(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .line 1278
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    const-string v0, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1283
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

    .line 1287
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 1288
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1289
    :cond_1
    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    .line 1290
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1291
    :cond_2
    if-eqz p3, :cond_a

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v2, :cond_a

    .line 1292
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    if-eqz v2, :cond_a

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

    .line 1311
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v0, :cond_5

    .line 1312
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_4

    .line 1313
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1314
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_a

    .line 1317
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_0

    .line 1320
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    .line 1308
    :cond_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    .line 1309
    goto :goto_0

    .line 1302
    :cond_7
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1304
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    goto :goto_0

    .line 1299
    :cond_8
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1300
    goto :goto_0

    .line 1296
    :cond_9
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleepFromPowerButton(JI)Z

    .line 1297
    nop

    .line 1326
    :cond_a
    :goto_0
    return-void
.end method

.method private powerVeryLongPress()V
    .locals 2

    .line 1473
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1474
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

    .line 1476
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1480
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1481
    const/4 v0, 0x0

    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1483
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1478
    :cond_2
    nop

    .line 1486
    :goto_0
    return-void
.end method

.method private preloadRecentApps()V
    .locals 1

    .line 3881
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3882
    return-void

    .line 3885
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3886
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3887
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1

    .line 3888
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 3890
    :cond_1
    return-void
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .line 2480
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2481
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 4

    .line 2226
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2228
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2230
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 2232
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2235
    :cond_1
    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2237
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x1

    if-ltz v1, :cond_2

    if-le v1, v3, :cond_3

    .line 2239
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2242
    :cond_3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2243
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2244
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2246
    :cond_4
    return-void
.end method

.method private reportScreenStateToVrManager(Z)V
    .locals 1
    .param p1, "isScreenOn"    # Z

    .line 5219
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    .line 5220
    return-void

    .line 5222
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    .line 5223
    return-void
.end method

.method private requestFullBugreport()V
    .locals 3

    .line 3562
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3563
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3566
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3567
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3570
    goto :goto_0

    .line 3568
    :catch_0
    move-exception v0

    .line 3569
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3572
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private schedulePossibleVeryLongPressReboot()V
    .locals 4

    .line 5677
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5678
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPossibleVeryLongPressReboot:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5679
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .line 4656
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 4657
    .local v0, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 4659
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4662
    goto :goto_0

    .line 4660
    :catch_0
    move-exception v1

    .line 4664
    :cond_0
    :goto_0
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .line 4670
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4671
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4672
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4673
    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .locals 7
    .param p1, "isOccluded"    # Z
    .param p2, "force"    # Z

    .line 4042
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

    .line 4043
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4044
    .local v0, "wasOccluded":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 4045
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

    .line 4046
    .local v4, "changed":Z
    :goto_1
    if-nez p1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 4047
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4048
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4049
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    .line 4050
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4051
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4052
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4055
    :cond_3
    return v2

    .line 4056
    :cond_4
    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 4057
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4058
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4059
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5

    .line 4060
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, -0x401

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4061
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4063
    :cond_5
    return v2

    .line 4064
    :cond_6
    if-eqz v4, :cond_7

    .line 4065
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4066
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 4067
    return v3

    .line 4069
    :cond_7
    return v3
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6294
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

    .line 6308
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6306
    :cond_0
    const-string v0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object v0

    .line 6304
    :cond_1
    const-string v0, "SHORT_PRESS_POWER_GO_HOME"

    return-object v0

    .line 6302
    :cond_2
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 6300
    :cond_3
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object v0

    .line 6298
    :cond_4
    const-string v0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object v0

    .line 6296
    :cond_5
    const-string v0, "SHORT_PRESS_POWER_NOTHING"

    return-object v0
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6356
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6362
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6360
    :cond_0
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 6358
    :cond_1
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object v0
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6367
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6373
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6371
    :cond_0
    const-string v0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object v0

    .line 6369
    :cond_1
    const-string v0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object v0
.end method

.method private shortPressPowerGoHome()V
    .locals 2

    .line 1363
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    .line 1370
    :cond_0
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2689
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2690
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    return v0

    .line 2693
    :cond_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2694
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    return v0

    .line 2698
    :cond_2
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2700
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x3

    .line 2701
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v3

    .line 2702
    .local v1, "hideDockDivider":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 2703
    return v4

    .line 2711
    :cond_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2712
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v3

    .line 2713
    .local v2, "hideIme":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 2714
    return v4

    .line 2717
    :cond_7
    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2718
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    move v5, v4

    goto :goto_3

    :cond_9
    move v5, v3

    .line 2721
    .local v5, "showImeOverKeyguard":Z
    :goto_3
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    move v6, v4

    goto :goto_4

    :cond_a
    move v6, v3

    .line 2723
    .local v6, "allowWhenLocked":Z
    :goto_4
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    .line 2725
    .local v7, "isKeyguardShowing":Z
    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2727
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canShowWhenLocked()Z

    move-result v8

    if-nez v8, :cond_c

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    move v8, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v8, v4

    :goto_6
    or-int/2addr v6, v8

    .line 2732
    :cond_d
    if-eqz v7, :cond_e

    if-nez v6, :cond_e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_e

    move v3, v4

    :cond_e
    return v3
.end method

.method private shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .locals 1

    .line 4858
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return v0
.end method

.method private shouldDispatchInputWhenNonInteractive(II)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "keyCode"    # I

    .line 4754
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

    .line 4756
    .local v2, "isDefaultDisplay":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 4757
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_2

    .line 4758
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    :goto_2
    nop

    .line 4759
    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_4

    .line 4760
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

    .line 4762
    .local v4, "displayOff":Z
    :goto_4
    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v5, :cond_5

    .line 4763
    return v0

    .line 4767
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    .line 4768
    return v1

    .line 4772
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x4

    if-eq p2, v5, :cond_7

    const/16 v5, 0x108

    if-ne p2, v5, :cond_8

    .line 4774
    :cond_7
    return v0

    .line 4778
    :cond_8
    if-eqz v2, :cond_9

    .line 4781
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v5

    .line 4784
    .local v5, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v5, :cond_9

    :try_start_0
    invoke-interface {v5}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_9

    .line 4785
    return v1

    .line 4787
    :catch_0
    move-exception v1

    .line 4788
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException when checking if dreaming"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 4793
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :cond_9
    return v0
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    .line 2321
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2322
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2323
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2324
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2321
    :goto_0
    return v1
.end method

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1798
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

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1800
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1801
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1802
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1803
    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .locals 1

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1807
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1808
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    .line 1810
    :cond_0
    return-void
.end method

.method private showRecentApps(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .line 3925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3926
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3927
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3928
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 3930
    :cond_0
    return-void
.end method

.method private sleepPress()V
    .locals 2

    .line 1505
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1506
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1509
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 2
    .param p1, "eventTime"    # J

    .line 1512
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1515
    :cond_0
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1519
    :goto_0
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handle"    # Landroid/os/UserHandle;

    .line 3852
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 3853
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handle"    # Landroid/os/UserHandle;
    .param p4, "allowDuringSetup"    # Z

    .line 3857
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3860
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

    .line 3858
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3862
    :goto_1
    return-void
.end method

.method private stopLongshot()V
    .locals 0

    .line 6462
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 3933
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3934
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3935
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    .line 3937
    :cond_0
    return-void
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .line 5658
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 5660
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 5661
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5662
    .local v1, "enable":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_4

    .line 5663
    if-eqz v1, :cond_2

    .line 5664
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5666
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5668
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    const-string v3, "clearing lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5669
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5671
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5673
    .end local v1    # "enable":Z
    :cond_4
    monitor-exit v0

    .line 5674
    return-void

    .line 5673
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

    .line 5687
    if-eqz p1, :cond_0

    .line 5688
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_1

    .line 5689
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    const-string v2, "ScreenOff"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_0

    .line 5693
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_1

    .line 5694
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 5695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5698
    :cond_1
    :goto_0
    return-void
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .line 2313
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_0

    .line 2316
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    .line 2318
    :goto_0
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "behavior"    # I

    .line 6332
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 6338
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6336
    :cond_0
    const-string v0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 6334
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

    .line 5121
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 5122
    .local v0, "theaterModeEnabled":Z
    const/4 v1, 0x0

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 5123
    return v1

    .line 5126
    :cond_0
    if-eqz v0, :cond_1

    .line 5127
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theater_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5131
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4, p5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 5132
    const/4 v1, 0x1

    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 6
    .param p1, "eventTime"    # J

    .line 5100
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v4, 0x1

    const-string v5, "android.policy:POWER"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 5105
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNotifyWakeUpToSensor:Z

    if-eqz v0, :cond_0

    .line 5106
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyWakeUptoSensorHandle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5112
    :cond_0
    invoke-static {}, Lcom/android/server/policy/OpSarahInjector;->notifyPowerKey()V

    .line 5116
    return-void
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

    .line 2740
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

    .line 2741
    return-object v9

    .line 2743
    :cond_0
    if-nez v3, :cond_1

    .line 2744
    return-object v9

    .line 2747
    :cond_1
    const/4 v10, 0x0

    .line 2748
    .local v10, "wm":Landroid/view/WindowManager;
    const/4 v11, 0x0

    .line 2751
    .local v11, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2758
    .local v0, "context":Landroid/content/Context;
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-nez v12, :cond_2

    :try_start_1
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_3

    goto :goto_0

    .line 2901
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_11

    .line 2895
    :catch_0
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_c

    .line 2891
    :catch_1
    move-exception v0

    move/from16 v15, p7

    move/from16 v14, p9

    move-object v5, v10

    move/from16 v10, p8

    goto/16 :goto_f

    .line 2758
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

    .line 2761
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2758
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_3
    invoke-direct {v1, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v12
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 2765
    .local v12, "displayContext":Landroid/content/Context;
    if-nez v12, :cond_5

    .line 2767
    nop

    .line 2901
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_4

    .line 2902
    const-string v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    invoke-interface {v10, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2767
    :cond_4
    return-object v9

    .line 2769
    :cond_5
    move-object v13, v12

    .line 2771
    .end local v0    # "context":Landroid/content/Context;
    .local v13, "context":Landroid/content/Context;
    :try_start_3
    invoke-virtual {v13}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-ne v4, v0, :cond_6

    if-eqz v6, :cond_7

    .line 2773
    :cond_6
    const/4 v0, 0x4

    :try_start_4
    invoke-virtual {v13, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    .line 2774
    invoke-virtual {v13, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2777
    goto :goto_1

    .line 2775
    :catch_2
    move-exception v0

    .line 2780
    :cond_7
    :goto_1
    const/4 v14, 0x1

    if-eqz v7, :cond_b

    :try_start_5
    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7, v15}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 2781
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

    .line 2783
    :cond_8
    :try_start_7
    invoke-virtual {v13, v7}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 2784
    .local v0, "overrideContext":Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    .line 2785
    sget-object v9, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2787
    .local v9, "typedArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v15, v17

    .line 2792
    .local v15, "resId":I
    if-eqz v15, :cond_a

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v14, v9, v4, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2797
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

    .line 2799
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :goto_2
    move-object v4, v0

    move-object v13, v4

    .end local v13    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    goto :goto_3

    .line 2792
    .end local v4    # "context":Landroid/content/Context;
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_a
    move-object/from16 v18, v10

    .line 2801
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    .line 2901
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

    .line 2895
    :catch_3
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_b

    .line 2891
    :catch_4
    move-exception v0

    move-object/from16 v18, v10

    move/from16 v15, p7

    goto/16 :goto_e

    .line 2780
    .restart local v12    # "displayContext":Landroid/content/Context;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_b
    move-object/from16 v18, v10

    .line 2804
    .end local v10    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :goto_4
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v13}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 2805
    .local v4, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 2807
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v9, v0

    .line 2809
    .local v9, "label":Ljava/lang/CharSequence;
    if-eqz v9, :cond_c

    .line 2810
    const/4 v0, 0x1

    invoke-virtual {v4, v9, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    .line 2812
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 2815
    :goto_5
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2818
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_8
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 2823
    if-nez v8, :cond_d

    :try_start_9
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_d

    .line 2824
    const/high16 v0, 0x80000

    or-int v0, p9, v0

    move v14, v0

    .end local p9    # "windowFlags":I
    .local v0, "windowFlags":I
    goto :goto_6

    .line 2826
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
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2832
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
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2842
    move/from16 v15, p7

    :try_start_c
    invoke-virtual {v4, v15}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2843
    move/from16 v10, p8

    :try_start_d
    invoke-virtual {v4, v10}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 2845
    const/4 v0, -0x1

    invoke-virtual {v4, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2848
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2849
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2850
    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2851
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2853
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2855
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2857
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2858
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2861
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splash Screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2865
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V

    .line 2868
    invoke-direct {v1, v4, v13}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    .line 2870
    const-string/jumbo v5, "window"

    invoke-virtual {v13, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;
    :try_end_d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 2871
    .end local v18    # "wm":Landroid/view/WindowManager;
    .local v5, "wm":Landroid/view/WindowManager;
    :try_start_e
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6
    :try_end_e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 2875
    .end local v11    # "view":Landroid/view/View;
    .local v6, "view":Landroid/view/View;
    :try_start_f
    invoke-static {v6, v3}, Lcom/android/server/wm/OpStartingWindowManagerInjector;->handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 2878
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v7, :cond_10

    const-string v7, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding splash screen window for "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v1, v6

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2878
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_10
    invoke-static {v6, v3}, Lcom/android/server/am/OpForceDarkControlInjector;->handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 2886
    invoke-interface {v5, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2890
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v1, v6, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v16, v1

    goto :goto_8

    :cond_11
    const/16 v16, 0x0

    .line 2901
    :goto_8
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_12

    .line 2902
    const-string v1, "WindowManager"

    const-string/jumbo v7, "view not successfully added to wm, removing view"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2890
    :cond_12
    return-object v16

    .line 2901
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v12    # "displayContext":Landroid/content/Context;
    .end local v13    # "context":Landroid/content/Context;
    :catchall_3
    move-exception v0

    move-object v11, v6

    goto/16 :goto_11

    .line 2895
    :catch_5
    move-exception v0

    move-object v11, v6

    goto/16 :goto_c

    .line 2891
    :catch_6
    move-exception v0

    move-object v11, v6

    goto/16 :goto_f

    .line 2895
    .end local v6    # "view":Landroid/view/View;
    .restart local v11    # "view":Landroid/view/View;
    :catch_7
    move-exception v0

    goto/16 :goto_c

    .line 2891
    :catch_8
    move-exception v0

    goto/16 :goto_f

    .line 2901
    .end local v5    # "wm":Landroid/view/WindowManager;
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :catchall_4
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2895
    :catch_9
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_c

    .line 2891
    :catch_a
    move-exception v0

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_f

    .line 2901
    :catchall_5
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2895
    :catch_b
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_c

    .line 2891
    :catch_c
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move-object/from16 v5, v18

    goto/16 :goto_f

    .line 2826
    .restart local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v9    # "label":Ljava/lang/CharSequence;
    .restart local v12    # "displayContext":Landroid/content/Context;
    .restart local v13    # "context":Landroid/content/Context;
    :catchall_6
    move-exception v0

    move/from16 v15, p7

    move-object v1, v10

    move/from16 v10, p8

    :goto_9
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

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
    :try_start_11
    throw v0
    :try_end_11
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2901
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
    :catchall_7
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2895
    :catch_d
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_c

    .line 2891
    :catch_e
    move-exception v0

    move-object/from16 v5, v18

    goto/16 :goto_f

    .line 2826
    .restart local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v9    # "label":Ljava/lang/CharSequence;
    .restart local v12    # "displayContext":Landroid/content/Context;
    .restart local v13    # "context":Landroid/content/Context;
    :catchall_8
    move-exception v0

    goto :goto_9

    .line 2901
    .end local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v12    # "displayContext":Landroid/content/Context;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catchall_9
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto/16 :goto_11

    .line 2895
    :catch_f
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto :goto_c

    .line 2891
    :catch_10
    move-exception v0

    move/from16 v15, p7

    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    goto :goto_f

    .line 2901
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :catchall_a
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

    .line 2895
    .end local v18    # "wm":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :catch_11
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_b
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .line 2899
    .end local v10    # "wm":Landroid/view/WindowManager;
    .end local p9    # "windowFlags":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    .restart local v14    # "windowFlags":I
    :goto_c
    :try_start_12
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed creating starting window"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 2901
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2902
    :goto_d
    const-string v0, "WindowManager"

    const-string/jumbo v1, "view not successfully added to wm, removing view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_10

    .line 2891
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v14    # "windowFlags":I
    .restart local v10    # "wm":Landroid/view/WindowManager;
    .restart local p9    # "windowFlags":I
    :catch_12
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v18, v10

    :goto_e
    move/from16 v10, p8

    move/from16 v14, p9

    move-object/from16 v5, v18

    .line 2893
    .end local v10    # "wm":Landroid/view/WindowManager;
    .end local p9    # "windowFlags":I
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    .restart local v14    # "windowFlags":I
    :goto_f
    :try_start_13
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " already running, starting window not displayed. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2893
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 2901
    nop

    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2902
    goto :goto_d

    .line 2907
    :cond_13
    :goto_10
    const/4 v1, 0x0

    return-object v1

    .line 2901
    :catchall_b
    move-exception v0

    :goto_11
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_14

    .line 2902
    const-string v1, "WindowManager"

    const-string/jumbo v4, "view not successfully added to wm, removing view"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    invoke-interface {v5, v11}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_14
    throw v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .line 2499
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2501
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2502
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2504
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2506
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2507
    :cond_1
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2508
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    .line 2509
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2513
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    if-ne p3, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2515
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2516
    :cond_3
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2518
    :cond_4
    return-void
.end method

.method public applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4020
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4021
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4022
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 4024
    :cond_0
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4027
    :cond_1
    :goto_0
    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2646
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 2647
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2648
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFocusedActivityWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2649
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    return v1

    .line 2663
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-nez v0, :cond_1

    .line 2666
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2667
    return v1

    .line 2672
    :cond_1
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7e7

    if-eq v0, v3, :cond_3

    .line 2680
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 2677
    :cond_3
    return v1
.end method

.method public canDismissBootAnimation()Z
    .locals 1

    .line 5505
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    return v0
.end method

.method cancelPendingPowerKeyAction()V
    .locals 2

    .line 1260
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1262
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1264
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1267
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPossibleVeryLongPressReboot()V

    .line 1268
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .line 2330
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2331
    .local v0, "type":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2334
    .local v1, "isRoundedCornerOverlay":Z
    :goto_0
    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v5, -0x8

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 2336
    return v5

    .line 2339
    :cond_1
    const/4 v6, -0x1

    aput v6, p2, v3

    .line 2341
    const/16 v6, 0xbb7

    const/16 v7, 0x7d0

    const/16 v8, 0x3e8

    if-lt v0, v2, :cond_2

    const/16 v9, 0x63

    if-le v0, v9, :cond_4

    :cond_2
    if-lt v0, v8, :cond_3

    const/16 v9, 0x7cf

    if-le v0, v9, :cond_4

    :cond_3
    if-lt v0, v7, :cond_13

    if-le v0, v6, :cond_4

    goto/16 :goto_7

    .line 2347
    :cond_4
    if-lt v0, v7, :cond_12

    if-le v0, v6, :cond_5

    goto/16 :goto_6

    .line 2352
    :cond_5
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2353
    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x7db

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7e7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7f3

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7f5

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 2373
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2372
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 2373
    goto :goto_1

    :cond_6
    move v3, v5

    .line 2372
    :goto_1
    return v3

    .line 2370
    :cond_7
    :pswitch_0
    return v3

    .line 2359
    :cond_8
    const/16 v2, 0x2d

    aput v2, p2, v3

    .line 2360
    return v3

    .line 2377
    :cond_9
    const/16 v6, 0x18

    aput v6, p2, v3

    .line 2379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2381
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-ne v7, v8, :cond_a

    .line 2382
    return v3

    .line 2387
    :cond_a
    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2390
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2387
    invoke-virtual {v7, v8, v3, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2393
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 2391
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 2392
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    .line 2395
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v7, :cond_10

    const/16 v8, 0x7f6

    if-eq v0, v8, :cond_b

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_b

    goto :goto_4

    .line 2408
    :cond_b
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v8, p2, v3

    iget-object v9, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v6, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 2409
    .local v4, "mode":I
    if-eqz v4, :cond_f

    if-eq v4, v2, :cond_f

    const/4 v2, 0x2

    if-eq v4, v2, :cond_d

    .line 2424
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 2425
    goto :goto_3

    :cond_c
    move v3, v5

    .line 2424
    :goto_3
    return v3

    .line 2417
    :cond_d
    iget v2, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x17

    if-ge v2, v8, :cond_e

    .line 2418
    return v3

    .line 2420
    :cond_e
    return v5

    .line 2414
    :cond_f
    return v3

    .line 2402
    .end local v4    # "mode":I
    :cond_10
    :goto_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 2403
    goto :goto_5

    :cond_11
    move v3, v5

    .line 2402
    :goto_5
    return v3

    .line 2349
    .end local v6    # "callingUid":I
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_12
    :goto_6
    return v3

    .line 2344
    :cond_13
    :goto_7
    const/16 v2, -0xa

    return v2

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2434
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7de

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

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 2441
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 2442
    return v2

    .line 2472
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

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

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .line 2948
    if-eqz p2, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a00f3

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 2952
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 2953
    const v1, 0x10a00f4

    goto :goto_0

    .line 2954
    :cond_1
    const v1, 0x10a00f2

    .line 2952
    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 2957
    .local v0, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    .line 2958
    .local v1, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 2959
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2958
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2962
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    .line 5774
    const/4 v0, 0x0

    .line 5779
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 5780
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v1, :cond_5

    .line 5781
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_0

    .line 5783
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 5787
    :cond_1
    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 5788
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v1

    .line 5789
    .local v1, "dockMode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_3

    .line 5793
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 5795
    .end local v1    # "dockMode":I
    :cond_3
    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 5797
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 5801
    :cond_5
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5802
    return-object v1

    .line 5805
    :cond_6
    const/4 v2, 0x0

    .line 5806
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x10080

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 5810
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_7

    .line 5811
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5813
    :cond_7
    if-eqz v2, :cond_8

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 5815
    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5816
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 5817
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5818
    return-object v0

    .line 5821
    :cond_8
    return-object v1
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z

    .line 2968
    if-eqz p1, :cond_0

    .line 2969
    const/4 v0, 0x0

    return-object v0

    .line 2971
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a00f7

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 5376
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5377
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "PWM.dismissKeyguardLw"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5381
    :cond_1
    if-eqz p1, :cond_2

    .line 5383
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5386
    goto :goto_0

    .line 5384
    :catch_0
    move-exception v0

    .line 5385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5388
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4894
    nop

    .line 4895
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 4894
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4896
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    .line 4897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4900
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4901
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4902
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4862
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    .line 4863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    .line 4867
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 4868
    const-string v0, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4871
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4873
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4876
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4878
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 4879
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 4880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4882
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4884
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4885
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4886
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 4887
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4889
    :goto_0
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4906
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 4908
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 27
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_0

    .line 3580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled key: win="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", keyCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3582
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scanCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3583
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", metaState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", repeatCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", policyFlags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3580
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_0
    const/4 v3, 0x0

    .line 3590
    .local v3, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_7

    .line 3591
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 3592
    .local v5, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 3593
    .local v6, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 3594
    .local v7, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1

    .line 3595
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 3599
    .local v8, "initialDown":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 3600
    invoke-virtual {v5, v6, v7}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v10

    .local v10, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 3602
    .end local v10    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_2
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 3605
    .restart local v10    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v10, :cond_6

    .line 3606
    sget-boolean v11, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v11, :cond_3

    .line 3607
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback: keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " metaState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3608
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3607
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    or-int/lit16 v11, v11, 0x400

    .line 3612
    .local v11, "flags":I
    nop

    .line 3613
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    .line 3614
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v16

    iget v9, v10, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3615
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    move-object/from16 v26, v3

    .end local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    .local v26, "fallbackEvent":Landroid/view/KeyEvent;
    iget v3, v10, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3616
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v21

    .line 3617
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v24

    const/16 v25, 0x0

    .line 3612
    move/from16 v17, v9

    move/from16 v19, v3

    move/from16 v22, v11

    invoke-static/range {v12 .. v25}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 3619
    .end local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3620
    invoke-virtual {v3}, Landroid/view/KeyEvent;->recycle()V

    .line 3621
    const/4 v3, 0x0

    .line 3624
    :cond_4
    if-eqz v8, :cond_5

    .line 3625
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 3626
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_8

    .line 3627
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 3628
    invoke-virtual {v10}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_3

    .line 3605
    .end local v11    # "flags":I
    :cond_6
    move-object/from16 v26, v3

    .end local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    goto :goto_2

    .line 3590
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "keyCode":I
    .end local v7    # "metaState":I
    .end local v8    # "initialDown":Z
    .end local v10    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_7
    move-object/from16 v26, v3

    .line 3633
    .end local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    :goto_2
    move-object/from16 v3, v26

    .end local v26    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v3    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_8
    :goto_3
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_a

    .line 3634
    if-nez v3, :cond_9

    .line 3635
    const-string v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3637
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    :cond_a
    :goto_4
    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 6118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6119
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6120
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6121
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6122
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6123
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6124
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6127
    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6128
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v0}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6129
    const-string/jumbo v0, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6131
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6132
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6133
    const-string v0, " getLidBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6134
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6135
    const-string/jumbo v0, "mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6136
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6137
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6138
    const-string/jumbo v0, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6139
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6140
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6141
    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6142
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6143
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6144
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6145
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6147
    const-string/jumbo v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6148
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6150
    const-string/jumbo v0, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6151
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6152
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6153
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6154
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6156
    const-string/jumbo v0, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6157
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6159
    const-string/jumbo v0, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6160
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6162
    const-string/jumbo v0, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6163
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6164
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6165
    const-string/jumbo v0, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6166
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6168
    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6169
    const-string v0, " mHapticTextHandleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6170
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6171
    const-string/jumbo v0, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6172
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6173
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6174
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6175
    const-string/jumbo v0, "mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6176
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6177
    const-string v0, " mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6178
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6181
    const-string/jumbo v0, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6183
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 6184
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6182
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6186
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6187
    const-string v0, " mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6188
    const-string v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6190
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6191
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6192
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6193
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1

    .line 6194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6195
    const-string/jumbo v0, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6197
    const-string/jumbo v0, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6199
    const-string/jumbo v0, "mAccessibilityTvScheduled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6204
    :cond_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "mPreShowSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6205
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "isKeyguardDisabledAndNotShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardDisabledAndNotShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6208
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_4

    .line 6211
    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6213
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_5

    .line 6214
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6216
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_6

    .line 6217
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6220
    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6221
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

    .line 6222
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 5311
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5312
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 5314
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .line 5703
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 5704
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 5705
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5706
    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 5319
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5320
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5322
    :cond_0
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 5007
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5008
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    .line 5009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5010
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5009
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5012
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    const-string/jumbo v3, "screen_timeout"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5014
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 5015
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 5016
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5020
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5021
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5022
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5023
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5024
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5026
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5027
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 5030
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_2

    .line 5031
    invoke-virtual {v1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 5033
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 5034
    return-void

    .line 5023
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

    .line 5065
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 5066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished waking up... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5066
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5071
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 5073
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_2

    .line 5074
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    .line 5076
    :cond_2
    return-void
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_0

    .line 1011
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1014
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .locals 1

    .line 3683
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3684
    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3686
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .line 2522
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method protected getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .line 3872
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3873
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3875
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 1001
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1002
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    .line 991
    const-string/jumbo v1, "statusbar"

    .line 992
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 991
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    .line 995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .line 2992
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUiMode()I
    .locals 1

    .line 5748
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    return v0
.end method

.method protected getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 5
    .param p1, "effectId"    # I

    .line 5989
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/16 v2, 0x2711

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    .line 6025
    return-object v3

    .line 6015
    :pswitch_0
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5993
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    if-nez v0, :cond_0

    .line 5994
    return-object v3

    .line 6004
    :pswitch_2
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 5991
    :pswitch_3
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6018
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 6019
    .local v2, "pattern":[J
    goto :goto_0

    .line 5998
    .end local v2    # "pattern":[J
    :cond_0
    :pswitch_5
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6021
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 6022
    .restart local v2    # "pattern":[J
    nop

    .line 6027
    :goto_0
    array-length v4, v2

    if-nez v4, :cond_2

    .line 6029
    return-object v3

    .line 6030
    :cond_2
    array-length v3, v2

    const/4 v4, -0x1

    if-ne v3, v1, :cond_3

    .line 6032
    aget-wide v0, v2, v0

    invoke-static {v0, v1, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6035
    :cond_3
    invoke-static {v2, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6010
    .end local v2    # "pattern":[J
    :cond_4
    :pswitch_6
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 6013
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
    .locals 15

    .line 5862
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5863
    const-string v0, "Not going home because user setup is in progress."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    return v2

    .line 5873
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v3, "persist.sys.uts-test-mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 5875
    const-string v3, "UTS-TEST-MODE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5877
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5878
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5879
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5880
    .local v1, "dock":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 5881
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5883
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 5882
    move-object v6, v1

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    .line 5887
    .local v3, "result":I
    if-ne v3, v0, :cond_2

    .line 5888
    return v2

    .line 5892
    .end local v1    # "dock":Landroid/content/Intent;
    .end local v3    # "result":I
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5894
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 5893
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5898
    .local v1, "result":I
    if-ne v1, v0, :cond_3

    .line 5899
    return v2

    .line 5903
    .end local v1    # "result":I
    :cond_3
    goto :goto_1

    .line 5901
    :catch_0
    move-exception v1

    .line 5905
    :goto_1
    return v0
.end method

.method protected handleShortPressOnHome(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1721
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    .line 1722
    .local v0, "hdmiControl":Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    if-eqz v0, :cond_0

    .line 1723
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1728
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1729
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1730
    return-void

    .line 1734
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    .line 1735
    return-void
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 6054
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .line 5573
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5574
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .line 5370
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5371
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1971
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iput-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1972
    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1973
    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1974
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1975
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1976
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1977
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 1978
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1979
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1980
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1981
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1982
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 1983
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 1984
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 1985
    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 1987
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1989
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 1992
    .local v11, "burnInProtectionEnabled":Z
    nop

    .line 1993
    const/4 v12, 0x0

    const-string/jumbo v1, "persist.debug.force_burn_in"

    invoke-static {v1, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1994
    .local v13, "burnInProtectionDevMode":Z
    if-nez v11, :cond_0

    if-eqz v13, :cond_3

    .line 2000
    :cond_0
    if-eqz v13, :cond_2

    .line 2001
    const/4 v1, -0x8

    .line 2002
    .local v1, "minHorizontal":I
    const/16 v2, 0x8

    .line 2003
    .local v2, "maxHorizontal":I
    const/4 v3, -0x8

    .line 2004
    .local v3, "minVertical":I
    const/4 v4, -0x4

    .line 2005
    .local v4, "maxVertical":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .local v5, "maxRadius":I
    goto :goto_1

    .line 2007
    .end local v1    # "minHorizontal":I
    .end local v2    # "maxHorizontal":I
    .end local v3    # "minVertical":I
    .end local v4    # "maxVertical":I
    .end local v5    # "maxRadius":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2008
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10e0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2010
    .local v2, "minHorizontal":I
    const v3, 0x10e0023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2012
    .local v3, "maxHorizontal":I
    const v4, 0x10e0027

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2014
    .local v4, "minVertical":I
    const v5, 0x10e0025

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2016
    .local v5, "maxVertical":I
    const v6, 0x10e0024

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move/from16 v18, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    .line 2019
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v2    # "minHorizontal":I
    .end local v3    # "maxHorizontal":I
    .end local v4    # "minVertical":I
    .end local v5    # "maxVertical":I
    .local v14, "minHorizontal":I
    .local v15, "maxHorizontal":I
    .local v16, "minVertical":I
    .local v17, "maxVertical":I
    .local v18, "maxRadius":I
    :goto_1
    new-instance v7, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v1, v7

    move-object/from16 v2, p1

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move-object v12, v7

    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2023
    .end local v14    # "minHorizontal":I
    .end local v15    # "maxHorizontal":I
    .end local v16    # "minVertical":I
    .end local v17    # "maxVertical":I
    .end local v18    # "maxRadius":I
    :cond_3
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2024
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2025
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2026
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2027
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {v1, v8}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 2028
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2030
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2031
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2034
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x111006c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2036
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2037
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2038
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2040
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2041
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2044
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2045
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.VR_HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2049
    const-string/jumbo v1, "power"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2050
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v12, 0x1

    const-string v2, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v1, v12, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2052
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v1, v12, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2054
    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2055
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2057
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2059
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    .line 2062
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 2064
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2065
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v12

    :goto_3
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 2067
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 2069
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 2071
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 2073
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 2075
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2078
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2081
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2084
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2087
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 2089
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2091
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2093
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2095
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 2097
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2099
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 2101
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2104
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    .line 2107
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2109
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110089

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2112
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 2115
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2117
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsDisplayFold:Z

    if-eqz v1, :cond_7

    .line 2118
    const/4 v1, 0x0

    invoke-static {v8, v1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    goto :goto_5

    .line 2119
    :cond_7
    const/4 v1, 0x0

    const-string/jumbo v3, "persist.debug.force_foldable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2120
    invoke-static {v8, v1}, Lcom/android/server/policy/DisplayFoldController;->createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 2124
    :cond_8
    :goto_5
    const-string v1, "accessibility"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2128
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2129
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2130
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2131
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2132
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2133
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2134
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 2135
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_9

    .line 2137
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 2142
    :cond_9
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v4

    .line 2143
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2144
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2145
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2148
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2149
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2151
    const-string/jumbo v4, "vibrator"

    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2152
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107005d

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2154
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001f

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2156
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107006f

    invoke-static {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2159
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2162
    new-instance v4, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2168
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2169
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2170
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2173
    :cond_a
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2185
    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v5, v0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v2, v4, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2211
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mZenModeCallback:Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    invoke-static {v2}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V

    .line 2216
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/OpSarahInjector;->initInstance(Landroid/content/Context;)V

    .line 2218
    return-void
.end method

.method initializeHdmiState()V
    .locals 2

    .line 4125
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 4127
    .local v0, "oldMask":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4129
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 4130
    nop

    .line 4131
    return-void

    .line 4129
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method initializeHdmiStateInternal()V
    .locals 11

    .line 4134
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const/4 v1, 0x0

    .line 4135
    .local v1, "plugged":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v3, "mdss_mdp/drm/card"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4137
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "WindowManager"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 4138
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v2, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4140
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 4141
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4143
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 4144
    const/16 v6, 0xf

    new-array v6, v6, [C

    .line 4145
    .local v6, "buf":[C
    invoke-virtual {v5, v6}, Ljava/io/FileReader;->read([C)I

    move-result v7

    .line 4146
    .local v7, "n":I
    if-le v7, v4, :cond_1

    .line 4147
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

    .line 4154
    .end local v6    # "buf":[C
    .end local v7    # "n":I
    :cond_1
    nop

    .line 4156
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4158
    :goto_0
    goto :goto_1

    .line 4157
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4154
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4151
    :catch_1
    move-exception v6

    .line 4152
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

    .line 4154
    nop

    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    if-eqz v5, :cond_2

    .line 4156
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 4149
    :catch_2
    move-exception v6

    .line 4150
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

    .line 4154
    nop

    .end local v6    # "ex":Ljava/io/IOException;
    if-eqz v5, :cond_2

    .line 4156
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 4161
    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    goto :goto_4

    .line 4154
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :goto_2
    if-eqz v5, :cond_3

    .line 4156
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4158
    goto :goto_3

    .line 4157
    :catch_3
    move-exception v3

    .line 4158
    :cond_3
    :goto_3
    throw v0

    .line 4161
    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_4
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4162
    const-string v0, "hdmi"

    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver;->namedExtconDirExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4163
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 4164
    .local v0, "observer":Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->access$3400(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;)Z

    move-result v1

    .line 4165
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 4166
    .end local v0    # "observer":Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    :cond_5
    goto :goto_4

    :cond_6
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v0, :cond_5

    .line 4167
    const-string v0, "Not observing HDMI plug state because HDMI was not found."

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    :goto_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 4173
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 10
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 3025
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatchingInner(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    .line 3026
    .local v0, "result":J
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    .line 3027
    .local v2, "eventDisplayId":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    if-nez v3, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v2, v3, :cond_2

    .line 3031
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 3032
    .local v3, "eventDownTime":J
    iget-wide v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTime:J

    cmp-long v5, v5, v3

    const-wide/16 v6, 0xa

    if-gez v5, :cond_0

    .line 3035
    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTime:J

    .line 3036
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    .line 3037
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    .line 3038
    invoke-virtual {v5, v8, v2, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 3037
    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3039
    return-wide v6

    .line 3040
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mMovingDisplayToTopKeyTriggered:Z

    if-eqz v5, :cond_1

    .line 3042
    return-wide v6

    .line 3046
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping key targeting non-focused display #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3046
    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    const-wide/16 v5, -0x1

    return-wide v5

    .line 3050
    .end local v3    # "eventDownTime":J
    :cond_2
    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 20
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 4179
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4181
    return v1

    .line 4184
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

    .line 4185
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

    .line 4186
    .local v10, "down":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 4187
    .local v11, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 4188
    .local v12, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    .line 4190
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

    .line 4196
    .local v14, "isInjected":Z
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 4197
    :cond_4
    if-eqz v9, :cond_5

    .line 4198
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_3

    .line 4199
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_3
    move v15, v0

    .line 4201
    .local v15, "keyguardActive":Z
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v3, "WindowManager"

    if-eqz v0, :cond_6

    .line 4202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptKeyTq keycode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " interactive="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " keyguardActive="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " policyFlags="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4202
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :cond_6
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    .line 4210
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

    .line 4211
    .local v0, "isWakeKey":Z
    :goto_5
    const/4 v4, -0x1

    if-nez v9, :cond_e

    if-eqz v14, :cond_9

    if-nez v0, :cond_9

    goto :goto_6

    .line 4226
    :cond_9
    if-nez v9, :cond_a

    invoke-direct {v7, v13, v12}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4231
    const/4 v5, 0x1

    .line 4233
    .local v5, "result":I
    iput v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v16, v0

    move v0, v5

    goto :goto_7

    .line 4237
    .end local v5    # "result":I
    :cond_a
    const/4 v5, 0x0

    .line 4238
    .restart local v5    # "result":I
    if-eqz v0, :cond_c

    if-eqz v10, :cond_b

    invoke-direct {v7, v12}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 4239
    :cond_b
    const/4 v0, 0x0

    .line 4242
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v10, :cond_d

    .line 4243
    iput v12, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 4249
    :cond_d
    move/from16 v16, v0

    move v0, v5

    goto :goto_7

    .line 4214
    .end local v5    # "result":I
    :cond_e
    :goto_6
    const/4 v5, 0x1

    .line 4215
    .restart local v5    # "result":I
    const/4 v0, 0x0

    .line 4217
    if-eqz v9, :cond_10

    .line 4220
    iget v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v12, v6, :cond_f

    if-nez v10, :cond_f

    .line 4221
    const/4 v5, 0x0

    .line 4224
    :cond_f
    iput v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move/from16 v16, v0

    move v0, v5

    goto :goto_7

    .line 4217
    :cond_10
    move/from16 v16, v0

    move v0, v5

    .line 4249
    .end local v5    # "result":I
    .local v0, "result":I
    .local v16, "isWakeKey":Z
    :goto_7
    invoke-static {v12}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4250
    invoke-virtual {v4, v12, v8}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4251
    if-eqz v16, :cond_11

    .line 4252
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    const-string v6, "android.policy:KEY"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4255
    :cond_11
    return v0

    .line 4260
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_13

    move v4, v2

    goto :goto_8

    :cond_13
    move v4, v1

    :goto_8
    move/from16 v17, v4

    .line 4261
    .local v17, "isNavBarVirtKey":Z
    if-eqz v10, :cond_15

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_15

    if-eqz v17, :cond_14

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v4, :cond_15

    .line 4264
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_15

    move v4, v2

    goto :goto_9

    :cond_15
    move v4, v1

    .line 4267
    .local v4, "useHapticFeedback":Z
    :goto_9
    const/4 v5, 0x4

    if-eq v12, v5, :cond_40

    const/4 v6, 0x5

    if-eq v12, v6, :cond_3e

    const/4 v6, 0x6

    if-eq v12, v6, :cond_39

    const/16 v6, 0x4f

    if-eq v12, v6, :cond_37

    const/16 v6, 0x82

    if-eq v12, v6, :cond_37

    const/16 v6, 0xa4

    const/16 v5, 0x18

    if-eq v12, v6, :cond_28

    const/16 v6, 0xab

    if-eq v12, v6, :cond_24

    const/16 v6, 0xdb

    if-eq v12, v6, :cond_20

    const/16 v6, 0xe7

    if-eq v12, v6, :cond_1e

    const/16 v6, 0x114

    if-eq v12, v6, :cond_1c

    const/16 v6, 0x7e

    if-eq v12, v6, :cond_18

    const/16 v6, 0x7f

    if-eq v12, v6, :cond_18

    packed-switch v12, :pswitch_data_0

    packed-switch v12, :pswitch_data_1

    packed-switch v12, :pswitch_data_2

    packed-switch v12, :pswitch_data_3

    move/from16 v19, v4

    goto/16 :goto_16

    .line 4470
    :pswitch_0
    and-int/lit8 v0, v0, -0x2

    .line 4471
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    .line 4472
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4499
    :pswitch_1
    and-int/lit8 v0, v0, -0x2

    .line 4500
    const/16 v16, 0x1

    .line 4501
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4476
    :pswitch_2
    and-int/lit8 v0, v0, -0x2

    .line 4477
    const/16 v16, 0x0

    .line 4478
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_16

    .line 4479
    const/4 v4, 0x0

    .line 4481
    :cond_16
    if-eqz v10, :cond_17

    .line 4482
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_a

    .line 4484
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v7, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 4486
    goto :goto_a

    .line 4267
    :cond_18
    :pswitch_3
    move/from16 v19, v4

    goto/16 :goto_14

    .line 4432
    :pswitch_4
    nop

    .line 4433
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    .line 4434
    iget-boolean v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 4432
    invoke-static {v5, v6, v1}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    .line 4436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4437
    and-int/lit8 v0, v0, -0x2

    .line 4438
    const/16 v16, 0x0

    .line 4442
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->oemIsActionPassToUser()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4443
    or-int/lit8 v0, v0, 0x1

    .line 4449
    :cond_19
    move v1, v9

    .line 4450
    .local v1, "newInteractive":Z
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 4451
    const-string v5, "change interactive to false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    const/4 v1, 0x0

    .line 4454
    :cond_1a
    if-eqz v10, :cond_1b

    .line 4455
    invoke-direct {v7, v8, v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto :goto_a

    .line 4457
    :cond_1b
    invoke-direct {v7, v8, v1, v11}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    .line 4460
    goto :goto_a

    .line 4490
    .end local v1    # "newInteractive":Z
    :cond_1c
    and-int/lit8 v0, v0, -0x2

    .line 4491
    const/16 v16, 0x0

    .line 4492
    if-nez v10, :cond_1d

    .line 4493
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 4598
    :cond_1d
    :goto_a
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4570
    :cond_1e
    if-nez v10, :cond_1f

    .line 4571
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4572
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4573
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4574
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4576
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1f
    and-int/lit8 v0, v0, -0x2

    .line 4577
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4554
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_21

    move v1, v2

    goto :goto_b

    :cond_21
    const/4 v1, 0x0

    .line 4555
    .local v1, "longPressed":Z
    :goto_b
    if-eqz v10, :cond_22

    if-eqz v1, :cond_22

    .line 4556
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4557
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4558
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4560
    .end local v3    # "msg":Landroid/os/Message;
    :cond_22
    if-nez v10, :cond_23

    if-nez v1, :cond_23

    .line 4561
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    const/4 v2, 0x0

    move/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "longPressed":Z
    .local v18, "longPressed":Z
    invoke-virtual {v3, v5, v6, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4563
    .local v2, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4564
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    .line 4560
    .end local v2    # "msg":Landroid/os/Message;
    .end local v18    # "longPressed":Z
    .restart local v1    # "longPressed":Z
    :cond_23
    move/from16 v18, v1

    .line 4566
    .end local v1    # "longPressed":Z
    .restart local v18    # "longPressed":Z
    :goto_c
    and-int/lit8 v0, v0, -0x2

    .line 4567
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4580
    .end local v18    # "longPressed":Z
    :cond_24
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 4581
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v1, :cond_26

    .line 4585
    if-nez v10, :cond_25

    .line 4586
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    .line 4588
    :cond_25
    and-int/lit8 v0, v0, -0x2

    move/from16 v19, v4

    goto/16 :goto_16

    .line 4581
    :cond_26
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4580
    :cond_27
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4287
    :cond_28
    :pswitch_5
    invoke-static/range {p1 .. p2}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 4292
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->oemIsActionPassToUser()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4293
    or-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_d

    .line 4292
    :cond_29
    move v1, v0

    .line 4297
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_d
    const/16 v0, 0x19

    if-ne v12, v0, :cond_2b

    .line 4298
    if-eqz v10, :cond_2a

    .line 4300
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4302
    if-eqz v9, :cond_2d

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_2d

    .line 4303
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2d

    .line 4304
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4305
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 4306
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 4307
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4308
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_e

    .line 4312
    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4313
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_e

    .line 4316
    :cond_2b
    if-ne v12, v5, :cond_2d

    .line 4317
    if-eqz v10, :cond_2c

    .line 4318
    if-eqz v9, :cond_2d

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_2d

    .line 4319
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2d

    .line 4320
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 4321
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    .line 4322
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 4323
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4324
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4325
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4327
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    .line 4328
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_e

    .line 4331
    :cond_2c
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 4332
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4333
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 4334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 4337
    :cond_2d
    :goto_e
    if-eqz v10, :cond_33

    .line 4338
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4340
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 4341
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v5, :cond_2e

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_2e

    .line 4344
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4351
    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 4360
    and-int/lit8 v0, v1, -0x2

    .line 4361
    .end local v1    # "result":I
    .restart local v0    # "result":I
    move/from16 v19, v4

    goto/16 :goto_16

    .line 4364
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_2e
    const/4 v6, 0x0

    .line 4366
    .local v6, "audioMode":I
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    .line 4369
    goto :goto_f

    .line 4367
    :catch_0
    move-exception v0

    .line 4368
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_2f
    const/4 v2, 0x3

    if-ne v6, v2, :cond_31

    :cond_30
    const/4 v0, 0x1

    goto :goto_10

    :cond_31
    const/4 v0, 0x0

    .line 4372
    .local v0, "isInCall":Z
    :goto_10
    if-eqz v0, :cond_32

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_32

    .line 4375
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    move/from16 v19, v4

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    .end local v4    # "useHapticFeedback":Z
    .local v19, "useHapticFeedback":Z
    invoke-virtual {v2, v8, v3, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4377
    goto :goto_12

    .line 4372
    .end local v19    # "useHapticFeedback":Z
    .restart local v4    # "useHapticFeedback":Z
    :cond_32
    move/from16 v19, v4

    .end local v4    # "useHapticFeedback":Z
    .restart local v19    # "useHapticFeedback":Z
    goto :goto_11

    .line 4337
    .end local v0    # "isInCall":Z
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v6    # "audioMode":I
    .end local v19    # "useHapticFeedback":Z
    .restart local v4    # "useHapticFeedback":Z
    :cond_33
    move/from16 v19, v4

    .line 4380
    .end local v4    # "useHapticFeedback":Z
    .restart local v19    # "useHapticFeedback":Z
    :goto_11
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_36

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_34

    goto :goto_13

    .line 4384
    :cond_34
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_35

    .line 4388
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 4598
    :cond_35
    :goto_12
    move v0, v1

    goto/16 :goto_16

    .line 4383
    :cond_36
    :goto_13
    or-int/lit8 v0, v1, 0x1

    .end local v1    # "result":I
    .local v0, "result":I
    goto/16 :goto_16

    .line 4267
    .end local v19    # "useHapticFeedback":Z
    .restart local v4    # "useHapticFeedback":Z
    :cond_37
    move/from16 v19, v4

    .line 4516
    .end local v4    # "useHapticFeedback":Z
    .restart local v19    # "useHapticFeedback":Z
    :goto_14
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4519
    and-int/lit8 v0, v0, -0x2

    .line 4521
    :cond_38
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_43

    .line 4527
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4528
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4530
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4531
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4532
    .end local v1    # "msg":Landroid/os/Message;
    goto/16 :goto_16

    .line 4395
    .end local v19    # "useHapticFeedback":Z
    .restart local v4    # "useHapticFeedback":Z
    :cond_39
    move/from16 v19, v4

    .end local v4    # "useHapticFeedback":Z
    .restart local v19    # "useHapticFeedback":Z
    and-int/lit8 v0, v0, -0x2

    .line 4396
    if-eqz v10, :cond_3c

    .line 4397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 4398
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 4399
    .local v2, "hungUp":Z
    if-eqz v1, :cond_3a

    .line 4400
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    .line 4402
    :cond_3a
    if-eqz v9, :cond_3b

    if-nez v2, :cond_3b

    .line 4403
    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4404
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4405
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v5

    .line 4404
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 4407
    :cond_3b
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4409
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v2    # "hungUp":Z
    :goto_15
    goto :goto_16

    .line 4410
    :cond_3c
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v1, :cond_43

    .line 4411
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4412
    if-nez v11, :cond_43

    .line 4413
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3d

    .line 4415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4416
    goto :goto_16

    .line 4419
    :cond_3d
    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_43

    .line 4421
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 4423
    const/16 v16, 0x0

    goto :goto_16

    .line 4537
    .end local v19    # "useHapticFeedback":Z
    .restart local v4    # "useHapticFeedback":Z
    :cond_3e
    move/from16 v19, v4

    .end local v4    # "useHapticFeedback":Z
    .restart local v19    # "useHapticFeedback":Z
    if-eqz v10, :cond_43

    .line 4538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 4539
    .restart local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_3f

    .line 4540
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 4541
    const-string v2, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 4547
    and-int/lit8 v0, v0, -0x2

    .line 4550
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3f
    goto :goto_16

    .line 4269
    .end local v19    # "useHapticFeedback":Z
    .restart local v4    # "useHapticFeedback":Z
    :cond_40
    move/from16 v19, v4

    .end local v4    # "useHapticFeedback":Z
    .restart local v19    # "useHapticFeedback":Z
    if-eqz v10, :cond_41

    .line 4270
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto :goto_16

    .line 4272
    :cond_41
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4275
    .local v1, "handled":Z
    if-eqz v1, :cond_42

    .line 4276
    and-int/lit8 v0, v0, -0x2

    .line 4279
    .end local v1    # "handled":Z
    :cond_42
    nop

    .line 4598
    :cond_43
    :goto_16
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_45

    .line 4599
    const/4 v1, 0x4

    if-eq v12, v1, :cond_44

    const/16 v1, 0x14

    if-eq v12, v1, :cond_44

    goto :goto_17

    .line 4602
    :cond_44
    invoke-direct {v7, v12, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v1

    .line 4603
    .restart local v1    # "handled":Z
    if-eqz v1, :cond_45

    .line 4604
    and-int/lit8 v0, v0, -0x2

    .line 4612
    .end local v1    # "handled":Z
    :cond_45
    :goto_17
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4613
    const/16 v1, 0x36

    if-eq v12, v1, :cond_46

    goto :goto_18

    .line 4615
    :cond_46
    if-eqz v10, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4616
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4617
    and-int/lit8 v0, v0, -0x2

    .line 4624
    :cond_47
    :goto_18
    if-eqz v19, :cond_48

    .line 4625
    const-string v1, "Virtual Key - Press"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v7, v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 4629
    :cond_48
    if-eqz v16, :cond_49

    .line 4630
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    const-string v6, "android.policy:KEY"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4634
    :cond_49
    return v0

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

    .line 4730
    and-int/lit8 v0, p4, 0x1

    const-wide/32 v1, 0xf4240

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4731
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4733
    return v3

    .line 4737
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4738
    const/4 v0, 0x1

    return v0

    .line 4744
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2

    .line 4745
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4749
    :cond_2
    return v3
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .line 1693
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1694
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1693
    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFODAndKeyguard()Z
    .locals 2

    .line 2627
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    if-eqz v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedAppOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2632
    return v1

    .line 2636
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardDisabledAndNotShowing()Z
    .locals 2

    .line 5345
    const/4 v0, 0x1

    .line 5346
    .local v0, "locked":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2

    .line 5347
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

    .line 5349
    :cond_2
    return v0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .line 5392
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5393
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    .line 5394
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

    .line 2527
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

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

    .line 5339
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .locals 1

    .line 5363
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5364
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 5356
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5357
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .line 5326
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5327
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

    .line 5332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5333
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 5300
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .line 6084
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 6086
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6088
    :cond_1
    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 4

    .line 1699
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 1701
    .local v0, "isSetupComplete":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_1

    .line 1702
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1704
    :cond_1
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .line 6041
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .line 6045
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6046
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6048
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .line 3005
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
    .locals 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 3789
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3792
    return-void

    .line 3794
    :cond_0
    const/4 v0, 0x0

    .line 3795
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1

    .line 3796
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3797
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3799
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 3802
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3803
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 3805
    :cond_2
    if-eqz p1, :cond_4

    .line 3806
    if-nez v0, :cond_3

    .line 3807
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3809
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3811
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 3812
    .local v1, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_7

    .line 3817
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_GOOGLE_ASSISTANT_HINT:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->POWER_LONG_PRESS_WITH_ASSISTANT_HINT:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->HEY_TAP_PACKAGE_NAME:Ljava/lang/String;

    .line 3818
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3819
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/16 v4, 0x17

    invoke-static {v2, v3, v4}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    .line 3822
    :cond_6
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 3825
    .end local v1    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_7
    :goto_0
    return-void
.end method

.method launchHomeFromHotKey(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 3955
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 3956
    return-void
.end method

.method launchHomeFromHotKey(IZZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "awakenFromDreams"    # Z
    .param p3, "respectKeyguard"    # Z

    .line 3964
    if-eqz p3, :cond_1

    .line 3965
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3967
    return-void

    .line 3970
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3973
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3981
    return-void

    .line 3986
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3988
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3989
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 3992
    if-eqz p2, :cond_2

    .line 3993
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 3995
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_1

    .line 3998
    :cond_3
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    .line 4000
    :goto_1
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .locals 4

    .line 4911
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4914
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "voiceIntent":Landroid/content/Intent;
    goto :goto_1

    .line 4917
    .end local v0    # "voiceIntent":Landroid/content/Intent;
    :cond_0
    nop

    .line 4918
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4917
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 4919
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_1

    .line 4921
    :try_start_0
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4923
    goto :goto_0

    .line 4922
    :catch_0
    move-exception v1

    .line 4925
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4926
    .local v1, "voiceIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    const-string v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    .line 4928
    .end local v1    # "voiceIntent":Landroid/content/Intent;
    .local v0, "voiceIntent":Landroid/content/Intent;
    :goto_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4929
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4930
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 5636
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5637
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5638
    if-eqz p1, :cond_0

    .line 5641
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 5643
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5644
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 11
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .line 4103
    move v0, p3

    .line 4104
    .local v0, "lensCoverState":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v1, v0, :cond_0

    .line 4105
    return-void

    .line 4107
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 4110
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 4111
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_0
    nop

    .line 4112
    .local v1, "keyguardActive":Z
    if-eqz v1, :cond_2

    .line 4113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 4115
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4117
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_1
    const-wide/32 v3, 0xf4240

    div-long v6, p1, v3

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const/4 v9, 0x5

    const-string v10, "android.policy:CAMERA_COVER"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4119
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4121
    .end local v1    # "keyguardActive":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 4122
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 8
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 4077
    move v0, p3

    .line 4078
    .local v0, "newLidState":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4079
    return-void

    .line 4082
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 4083
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 4084
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 4086
    if-eqz p3, :cond_1

    .line 4087
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/16 v6, 0x9

    const-string v7, "android.policy:LID"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_0

    .line 4089
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 4090
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4095
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_3

    .line 4096
    invoke-virtual {v1, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->notifyLidSwitchChanged(Z)V

    .line 4099
    :cond_3
    return-void
.end method

.method public okToAnimate()Z
    .locals 1

    .line 5305
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

    .line 3691
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_1

    .line 3692
    nop

    .line 3693
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3692
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    .line 3698
    :cond_1
    if-eqz p1, :cond_2

    .line 3700
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    .line 3701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    .line 3707
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->opOnDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3709
    return-void
.end method

.method public onKeyguardDone()V
    .locals 0

    .line 6094
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 3726
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3727
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 3728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_0

    .line 3730
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 3732
    :goto_0
    return-void
.end method

.method public onLongshotStart()V
    .locals 0

    .line 6466
    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    .line 5439
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5440
    return-void
.end method

.method protected opOnDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "windowState"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6478
    return-void
.end method

.method public performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "effectId"    # I
    .param p4, "always"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5929
    return v1

    .line 5931
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

    .line 5933
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 5934
    return v1

    .line 5937
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 5938
    .local v9, "effect":Landroid/os/VibrationEffect;
    if-nez v9, :cond_4

    .line 5945
    if-nez p3, :cond_3

    .line 5946
    return v2

    .line 5948
    :cond_3
    return v1

    .line 5962
    :cond_4
    const/4 v1, -0x1

    .line 5963
    .local v1, "sceneId":I
    if-nez p3, :cond_6

    .line 5964
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 5965
    const/16 v1, 0x14

    goto :goto_1

    .line 5967
    :cond_5
    const/4 v1, 0x4

    goto :goto_1

    .line 5970
    :cond_6
    invoke-static {p3, p5}, Lcom/oneplus/util/VibratorSceneUtils;->getVibratorSceneEffectId(ILjava/lang/String;)I

    move-result v1

    .line 5972
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v3, v4, v1}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5973
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move v4, p1

    move-object v5, p2

    move-object v6, v9

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    .line 5977
    :cond_7
    return v2
.end method

.method protected performHapticFeedback(IZLjava/lang/String;)Z
    .locals 6
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5921
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

    .line 1432
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1433
    .local v0, "behavior":I
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_0
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 1463
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1464
    const-string v1, "Power - Long Press - Go To Assistant"

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1466
    const/high16 v1, -0x80000000

    .line 1467
    .local v1, "powerKeyDeviceId":I
    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_1

    .line 1454
    .end local v1    # "powerKeyDeviceId":I
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1455
    const-string v1, "Power - Long Press - Go To Voice Assist"

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1460
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    .line 1461
    goto :goto_1

    .line 1447
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1448
    const-string v4, "Power - Long Press - Shut Off"

    invoke-virtual {p0, v2, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1450
    const-string v4, "globalactions"

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1451
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1452
    goto :goto_1

    .line 1440
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1441
    const-string v1, "Power - Long Press - Global Actions"

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1444
    goto :goto_1

    .line 1438
    :cond_6
    nop

    .line 1470
    :goto_1
    return-void
.end method

.method readLidState()V
    .locals 2

    .line 2476
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 2477
    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 3662
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3663
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3665
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

    .line 3714
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    .line 3716
    .local v1, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3717
    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Key already exists."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/PhoneWindowManager;
    .end local p1    # "shortcutCode":J
    .end local p3    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    throw v2

    .line 3720
    .restart local p0    # "this":Lcom/android/server/policy/PhoneWindowManager;
    .restart local p1    # "shortcutCode":J
    .restart local p3    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3721
    .end local v1    # "service":Lcom/android/internal/policy/IShortcutService;
    monitor-exit v0

    .line 3722
    return-void

    .line 3721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestUserActivityNotification()V
    .locals 2

    .line 5578
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 5581
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .line 5155
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5158
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 5159
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5161
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 5163
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5164
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5166
    return-void

    .line 5163
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

    .line 5200
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 5202
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 5204
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5206
    return-void

    .line 5204
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

    .line 5210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 5211
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 5213
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 5215
    :cond_0
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

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 5178
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5181
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5185
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5186
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 5187
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v3

    .line 5186
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5188
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_0

    .line 5190
    :cond_1
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string/jumbo v2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5194
    :goto_0
    monitor-exit v0

    .line 5195
    return-void

    .line 5194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .line 5406
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5407
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 5410
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5411
    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "allow"    # Z

    .line 5649
    if-eqz p2, :cond_0

    .line 5650
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5652
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5654
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5655
    return-void
.end method

.method public setAodShowing(Z)Z
    .locals 1
    .param p1, "aodShowing"    # Z

    .line 6392
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_0

    .line 6393
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    .line 6394
    const/4 v0, 0x1

    return v0

    .line 6396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentUserLw(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 6064
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6065
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6066
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6068
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_1

    .line 6069
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 6071
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 6072
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_2

    .line 6073
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 6075
    :cond_2
    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .locals 1
    .param p1, "displayContentInfo"    # Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;

    .line 1962
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 1963
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1964
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1965
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .line 6059
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 6060
    return-void
.end method

.method public setFingerprintEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 2621
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    .line 2622
    return-void
.end method

.method public setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4032
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardCandidate:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4033
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 4034
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 4014
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 4015
    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 3676
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3677
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    .line 3679
    :cond_0
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 4009
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 4010
    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 4004
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 4005
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .line 5415
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 5416
    if-eqz p1, :cond_0

    .line 5417
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const-string v2, "Safe Mode Enabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 5420
    :cond_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1
    .param p1, "switching"    # Z

    .line 6079
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    .line 6080
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 3657
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 3658
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .line 5513
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5568
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .line 1673
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1674
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1675
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    .line 1678
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_0

    .line 1679
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1682
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1685
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->stopLongshot()V

    .line 1689
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1690
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .line 3920
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3921
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3922
    return-void
.end method

.method startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .line 3848
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3849
    return-void
.end method

.method startDockOrHome(IZZ)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "fromHomeKey"    # Z
    .param p3, "awakenFromDreams"    # Z

    .line 5826
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5827
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 5828
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5830
    if-eqz p3, :cond_0

    .line 5831
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 5834
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5835
    const-string v0, "WindowManager"

    const-string v1, "Not going home because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5836
    return-void

    .line 5840
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5841
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 5843
    if-eqz p2, :cond_2

    .line 5844
    :try_start_1
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5846
    :cond_2
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5847
    return-void

    .line 5848
    :catch_1
    move-exception v1

    .line 5853
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v6, 0x1

    const-string/jumbo v4, "startDockOrHome"

    move v5, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    .line 5855
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 2
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .line 5399
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5400
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5401
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 5403
    :cond_1
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 4984
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    .line 4985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started going to sleep... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4986
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4985
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PhoneWindowManager.DreamWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 4993
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4996
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 4997
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 4999
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 5000
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 5002
    :cond_1
    return-void
.end method

.method public startedWakingUp(I)V
    .locals 3
    .param p1, "why"    # I

    .line 5039
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5040
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    .line 5041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started waking up... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5042
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5041
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5051
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5052
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5053
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5054
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5055
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5057
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5058
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 5060
    :cond_1
    return-void

    .line 5054
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

    .line 6474
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .line 5490
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 5491
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5492
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 5493
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 5494
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5496
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5497
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    .line 5498
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(I)V

    .line 5499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5500
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 5501
    return-void

    .line 5496
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 4

    .line 5447
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 5449
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 5450
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    .line 5451
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 5454
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 5455
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 5456
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5457
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5458
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 5459
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5467
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v2, :cond_1

    .line 5468
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5470
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5472
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 5476
    const-string/jumbo v0, "ro.boot.project_name"

    const-string v2, "default"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5477
    .local v0, "projectName":Ljava/lang/String;
    const-string v2, "18857"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5478
    const-string v2, "18821"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5479
    const-string v2, "18831"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5480
    const-string v2, "18827"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5481
    const-string v2, "18825"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5482
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNotifyWakeUpToSensor:Z

    .line 5485
    :cond_3
    return-void

    .line 5470
    .end local v0    # "projectName":Ljava/lang/String;
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

    .line 6470
    return-void
.end method

.method protected toggleRecentApps()V
    .locals 1

    .line 3911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3912
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 3913
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 3914
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 3916
    :cond_0
    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 3669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    .line 3670
    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 3672
    :cond_0
    return-void
.end method

.method updateRotation(Z)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z

    .line 5754
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5757
    goto :goto_0

    .line 5755
    :catch_0
    move-exception v0

    .line 5758
    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 10

    .line 2249
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2250
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 2251
    .local v1, "updateRotation":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2252
    :try_start_0
    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2256
    const-string v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2260
    const-string v3, "incall_back_button_behavior"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2264
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

    .line 2267
    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2270
    const-string/jumbo v3, "power_button_suppression_delay_after_gesture_wake"

    const/16 v7, 0x320

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 2273
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11100f9

    .line 2274
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2275
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2279
    :cond_1
    const-string/jumbo v3, "wake_gesture_enabled"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    .line 2282
    .local v3, "wakeGestureEnabledSetting":Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v7, v3, :cond_3

    .line 2283
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2284
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2288
    :cond_3
    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v0, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2290
    const-string v7, "default_input_method"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2292
    .local v5, "imId":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    move v6, v4

    .line 2293
    .local v6, "hasSoftInput":Z
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v7, v6, :cond_5

    .line 2294
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2295
    const/4 v1, 0x1

    .line 2298
    :cond_5
    const-string/jumbo v7, "power_button_long_press"

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2300
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2298
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2302
    const-string/jumbo v7, "power_button_very_long_press"

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2304
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e00c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2302
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2306
    .end local v3    # "wakeGestureEnabledSetting":Z
    .end local v5    # "imId":Ljava/lang/String;
    .end local v6    # "hasSoftInput":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2307
    if-eqz v1, :cond_6

    .line 2308
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 2310
    :cond_6
    return-void

    .line 2306
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

    .line 5736
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_0

    .line 5737
    nop

    .line 5738
    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5737
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 5741
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5743
    goto :goto_0

    .line 5742
    :catch_0
    move-exception v0

    .line 5744
    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 5

    .line 5597
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 5598
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_0

    .line 5600
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5601
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5603
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5605
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-eqz v0, :cond_1

    .line 5606
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 5610
    :cond_1
    return-void

    .line 5603
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 6099
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 6100
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6101
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6102
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6103
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6104
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6105
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6106
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v2

    .line 6105
    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6107
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    const-wide v3, 0x1080000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6108
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-wide v3, 0x1080000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6109
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const-wide v3, 0x1080000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6110
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    .line 6111
    const-wide v3, 0x10b00000014L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6113
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6114
    return-void
.end method
