.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$Injector;,
        Lcom/android/server/power/PowerManagerService$Clock;,
        Lcom/android/server/power/PowerManagerService$NativeWrapper;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$ProfilePowerState;,
        Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;,
        Lcom/android/server/power/PowerManagerService$PmsInner;,
        Lcom/android/server/power/PowerManagerService$HaltMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ATTENTIVE:I = 0x4000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_QUIESCENT:I = 0x1000

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DOCKED_ON_WIRELESS:Ljava/lang/String; = "doced_on_wireless_charger"

.field static final GET_ONLINECONFIG:I = 0x1e6c

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field private static final INCALL_UIS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_ATTENTIVE_TIMEOUT:I = 0x5

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_FORCESTOP:I = 0x15be

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final REASON_BATTERY_THERMAL_STATE:Ljava/lang/String; = "shutdown,thermal,battery"

.field private static final REASON_LOW_BATTERY:Ljava/lang/String; = "shutdown,battery"

.field private static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field private static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "shutdown,thermal"

.field private static final REASON_USERREQUESTED:Ljava/lang/String; = "shutdown,userrequested"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field private static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field private static final SYSTEM_PROPERTY_REBOOT_REASON:Ljava/lang/String; = "sys.boot.reason"

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static sQuiescent:Z


# instance fields
.field private mAlwaysOnEnabled:Z

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field private mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field private mAttentiveTimeoutConfig:I

.field private mAttentiveTimeoutSetting:J

.field private mAttentiveWarningDurationConfig:J

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field private final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field private mBootCompleted:Z

.field private final mClock:Lcom/android/server/power/PowerManagerService$Clock;

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOff:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDozeStartInProgress:Z

.field private mDrawWakeLockOverrideFromSidekick:Z

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mForceSuspendActive:Z

.field private mForegroundProfile:I

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

.field private final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field private mIsPowered:Z

.field private mIsVrModeEnabled:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepReason:I

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeReason:I

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightDeviceIdleMode:Z

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private mMaximumScreenDimDurationConfig:J

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field private mMinimumScreenOffTimeoutConfig:J

.field private final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOverriddenTimeout:J

.field private mPlugType:I

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityLockFromInCallUi:Z

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenBrightnessBoostInProgress:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDefaultVr:F

.field public final mScreenBrightnessDim:F

.field public final mScreenBrightnessDoze:F

.field public final mScreenBrightnessMaximum:F

.field public final mScreenBrightnessMaximumVr:F

.field public final mScreenBrightnessMinimum:F

.field public final mScreenBrightnessMinimumVr:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:F

.field private mScreenBrightnessSettingDefault:F

.field private mScreenBrightnessSettingMaximum:F

.field private mScreenBrightnessSettingMinimum:F

.field private mScreenOffTimeoutSetting:J

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:J

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

.field private mSystemReady:Z

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private mUidsChanged:Z

.field private mUidsChanging:Z

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserId:I

.field private mUserInactiveOverrideFromWindowManager:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulnessChanging:Z

.field private mWakefulnessRaw:I

.field private mWakingUpReason:Ljava/lang/String;

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 162
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    .line 164
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.google.android.dialer"

    const-string v2, "com.oneplus.dialer"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->INCALL_UIS:Ljava/util/ArrayList;

    .line 950
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 967
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    .line 968
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/power/PowerManagerService$Injector;

    .line 972
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 315
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 339
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 381
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 432
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 524
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 558
    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 567
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 572
    iput-wide v6, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 575
    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 578
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 580
    iput v5, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    .line 586
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 598
    new-array v5, v4, [I

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 601
    new-array v5, v4, [I

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 603
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 710
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 952
    iput-boolean v4, v1, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 953
    iput-boolean v4, v1, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 3375
    new-instance v5, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 4884
    new-instance v5, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v5, v1, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 975
    new-instance v5, Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-direct {v5, v1}, Lcom/android/server/power/PowerManagerService$PmsInner;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 976
    .local v5, "mPmsInner":Lcom/android/server/power/PowerManagerService$PmsInner;
    invoke-static {v5}, Lcom/android/server/power/OpPowerManagerInjector;->initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V

    .line 980
    iput-object v2, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 981
    new-instance v6, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v6, v1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 982
    new-instance v6, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v6, v1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    .line 983
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 984
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    .line 985
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/PowerManagerService$Injector;->createClock()Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 986
    iput-object v3, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 988
    new-instance v6, Lcom/android/server/ServiceThread;

    const-string v7, "PowerManagerService"

    const/4 v8, -0x4

    invoke-direct {v6, v7, v8, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 990
    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->start()V

    .line 991
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {v3, v6, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 993
    new-instance v6, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v1, v7}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 994
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v6, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 995
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 996
    invoke-virtual {v6, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 997
    new-instance v6, Lcom/android/server/power/AttentionDetector;

    new-instance v7, Lcom/android/server/power/-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo;

    invoke-direct {v7, v1}, Lcom/android/server/power/-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    .line 999
    new-instance v6, Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v6, v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 1000
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1001
    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 1002
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1004
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 1007
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 1008
    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService$Injector;->createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    .line 1014
    iget-object v6, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1016
    .local v6, "min":F
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500bd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1018
    .local v7, "max":F
    iget-object v8, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    .line 1020
    .local v8, "def":F
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500b8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    .line 1022
    .local v9, "doze":F
    iget-object v10, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v10

    .line 1025
    .local v10, "dim":F
    const/high16 v11, -0x40000000    # -2.0f

    cmpl-float v12, v6, v11

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v15, 0xff

    if-eqz v12, :cond_1

    cmpl-float v12, v7, v11

    if-eqz v12, :cond_1

    cmpl-float v12, v8, v11

    if-nez v12, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1044
    iput v7, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1045
    iput v8, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_1

    .line 1027
    :cond_1
    :goto_0
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1028
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v4, 0x10e00b7

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1027
    invoke-static {v4, v0, v15, v14, v13}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v4

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1032
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1033
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x10e00b6

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1032
    invoke-static {v4, v0, v15, v14, v13}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v4

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1037
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1038
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x10e00b5

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1037
    invoke-static {v4, v0, v15, v14, v13}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v4

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    .line 1047
    :goto_1
    cmpl-float v4, v9, v11

    if-nez v4, :cond_2

    .line 1048
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1049
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x10e00b1

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1048
    invoke-static {v4, v0, v15, v14, v13}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v4

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    goto :goto_2

    .line 1054
    :cond_2
    iput v9, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    .line 1056
    :goto_2
    cmpl-float v4, v10, v11

    if-nez v4, :cond_3

    .line 1057
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1058
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x10e00b0

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1057
    invoke-static {v4, v0, v15, v14, v13}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v4

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    goto :goto_3

    .line 1063
    :cond_3
    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    .line 1066
    :goto_3
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x10500bc

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 1068
    .local v4, "vrMin":F
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v0, 0x10500bb

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    .line 1070
    .local v12, "vrMax":F
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10500ba

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    .line 1072
    .local v13, "vrDef":F
    cmpl-float v0, v4, v11

    if-eqz v0, :cond_5

    cmpl-float v0, v12, v11

    if-eqz v0, :cond_5

    cmpl-float v0, v13, v11

    if-nez v0, :cond_4

    goto :goto_4

    .line 1090
    :cond_4
    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    .line 1091
    iput v12, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    .line 1092
    iput v13, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    goto :goto_5

    .line 1074
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1075
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x10e00b4

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1074
    const/4 v2, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v15, v14, v11}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    .line 1079
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1080
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1079
    const/4 v2, 0x1

    invoke-static {v0, v2, v15, v14, v11}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    .line 1084
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1085
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1084
    const/4 v2, 0x1

    invoke-static {v0, v2, v15, v14, v11}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    .line 1095
    :goto_5
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1096
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v11, "PowerManagerService.WakeLocks"

    .line 1097
    invoke-virtual {v0, v1, v11}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1098
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v11, "PowerManagerService.Display"

    .line 1099
    invoke-virtual {v0, v1, v11}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 1100
    if-eqz v0, :cond_6

    .line 1101
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 1104
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 1107
    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 1108
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const-string v11, "ro.boot.quiescent"

    const-string v14, "0"

    invoke-interface {v0, v11, v14}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1109
    invoke-static {}, Landroid/sysprop/InitProperties;->userspace_reboot_in_progress()Ljava/util/Optional;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 1111
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 1112
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    .line 1113
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractive(Z)V

    .line 1114
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v14}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetFeature(II)V

    .line 1115
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 1116
    monitor-exit v2

    .line 1117
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .line 145
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    return-void
.end method

.method static synthetic access$1700(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .line 145
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method static synthetic access$1800(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 145
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    return-void
.end method

.method static synthetic access$1900(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 145
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(IZ)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .line 145
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 145
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2876(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # I

    .line 145
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleAttentiveTimeout()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Landroid/os/WorkSource;

    .line 145
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object v0
.end method

.method static synthetic access$5300()Z
    .locals 1

    .line 145
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    return v0
.end method

.method static synthetic access$5302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 145
    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .line 145
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$6002(Lcom/android/server/power/PowerManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .line 145
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->overrideScreenBrightnessRangeMinimumInternal(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getWakingUpReasonInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    return-wide v0
.end method

.method static synthetic access$8002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 145
    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    return p0
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(F)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .line 145
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    return p1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 19
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .line 1410
    move-object/from16 v12, p0

    move/from16 v11, p7

    iget-object v10, v12, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1421
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p3

    move-object/from16 v8, p5

    move/from16 v7, p8

    goto :goto_1

    .line 1422
    :cond_1
    :goto_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWL: l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", f=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", t=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", ws="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    move v6, v0

    .line 1431
    .local v6, "index":I
    if-ltz v6, :cond_3

    .line 1432
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1433
    .local v13, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p5

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1435
    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v14, v6

    .end local v6    # "index":I
    .local v14, "index":I
    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1437
    move-object v1, v13

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    goto :goto_2

    .line 1433
    .end local v14    # "index":I
    .restart local v6    # "index":I
    :cond_2
    move v14, v6

    .line 1439
    .end local v6    # "index":I
    .restart local v14    # "index":I
    :goto_2
    const/4 v0, 0x0

    move-object/from16 v2, p1

    move-object v15, v10

    move-object v1, v13

    move/from16 v16, v14

    move v14, v11

    .local v0, "notifyAcquire":Z
    goto :goto_4

    .line 1441
    .end local v0    # "notifyAcquire":Z
    .end local v13    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v14    # "index":I
    .restart local v6    # "index":I
    :cond_3
    move v14, v6

    .end local v6    # "index":I
    .restart local v14    # "index":I
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    .line 1442
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v0, :cond_4

    .line 1443
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, v11}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v0, v1

    .line 1444
    const/16 v1, 0x14

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 1445
    iget-object v1, v12, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v0

    goto :goto_3

    .line 1442
    :cond_4
    move-object v13, v0

    .line 1447
    .end local v0    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .local v13, "state":Lcom/android/server/power/PowerManagerService$UidState;
    :goto_3
    iget v0, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v13, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1448
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object v15, v10

    move/from16 v10, p8

    move/from16 v16, v14

    move v14, v11

    .end local v14    # "index":I
    .local v16, "index":I
    move-object v11, v13

    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 1451
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v0, 0x0

    move-object/from16 v2, p1

    :try_start_2
    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1454
    nop

    .line 1455
    :try_start_3
    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-direct {v12, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1457
    const/4 v0, 0x1

    .line 1460
    .end local v13    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .local v0, "notifyAcquire":Z
    :goto_4
    invoke-direct {v12, v1, v14}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1461
    iget v3, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1462
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1463
    if-eqz v0, :cond_5

    .line 1469
    invoke-direct {v12, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1471
    .end local v0    # "notifyAcquire":Z
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v16    # "index":I
    :cond_5
    monitor-exit v15

    .line 1472
    return-void

    .line 1452
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v13    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .restart local v16    # "index":I
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1453
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "lock":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "ws":Landroid/os/WorkSource;
    .end local p6    # "historyTag":Ljava/lang/String;
    .end local p7    # "uid":I
    .end local p8    # "pid":I
    throw v3

    .line 1471
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v16    # "index":I
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "lock":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "ws":Landroid/os/WorkSource;
    .restart local p6    # "historyTag":Ljava/lang/String;
    .restart local p7    # "uid":I
    .restart local p8    # "pid":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    move-object v15, v10

    move v14, v11

    :goto_5
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method private adjustWakeLockSummaryLocked(I)I
    .locals 2
    .param p1, "wakeLockSummary"    # I

    .line 2470
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2471
    and-int/lit16 p1, p1, -0xc1

    .line 2473
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    .line 2475
    :cond_1
    and-int/lit8 p1, p1, -0xf

    .line 2477
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-nez v0, :cond_2

    .line 2478
    and-int/lit8 p1, p1, -0x11

    .line 2483
    :cond_2
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_4

    .line 2484
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2485
    or-int/lit8 p1, p1, 0x21

    goto :goto_0

    .line 2486
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2487
    or-int/lit8 p1, p1, 0x1

    .line 2490
    :cond_4
    :goto_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    .line 2491
    or-int/lit8 p1, p1, 0x1

    .line 2496
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v0, :cond_6

    .line 2497
    or-int/lit8 p1, p1, 0x10

    .line 2501
    :cond_6
    return p1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 13
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .line 1500
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1501
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1504
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 1506
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " try to wakeup device while proximity positive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1512
    return-void

    .line 1518
    :cond_0
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1519
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1520
    .local v0, "workSource":Landroid/os/WorkSource;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 1521
    .local v1, "workChain":Landroid/os/WorkSource$WorkChain;
    if-eqz v1, :cond_1

    .line 1522
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1523
    .local v2, "opPackageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .local v3, "opUid":I
    goto :goto_1

    .line 1525
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "opUid":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1526
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1527
    .local v3, "opPackageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    move-object v12, v3

    move v3, v2

    move-object v2, v12

    .line 1529
    .end local v0    # "workSource":Landroid/os/WorkSource;
    .end local v1    # "workChain":Landroid/os/WorkSource$WorkChain;
    .restart local v2    # "opPackageName":Ljava/lang/String;
    .local v3, "opUid":I
    :goto_1
    goto :goto_2

    .line 1530
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "opUid":I
    :cond_3
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1531
    .restart local v2    # "opPackageName":Ljava/lang/String;
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 1533
    .restart local v3    # "opUid":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x2

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v4, p0

    move v9, v3

    move-object v10, v2

    move v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 1537
    .end local v2    # "opPackageName":Ljava/lang/String;
    .end local v3    # "opUid":I
    :cond_4
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1630
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1631
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1637
    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 4005
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4006
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 4011
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4013
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 4014
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4016
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 4018
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4019
    monitor-exit v0

    .line 4020
    return-void

    .line 4008
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 4019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canDozeLocked()Z
    .locals 2

    .line 3200
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDreamLocked()Z
    .locals 3

    .line 3158
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 3159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canDreamLocked mWakefulness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDreamsSupportedConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDreamsEnabledSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayPowerRequest.isBrightOrDim() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3162
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserActivitySummary = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBootCompleted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3159
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3170
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3171
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3178
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3179
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v0, :cond_2

    .line 3180
    return v2

    .line 3182
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v1, v0, :cond_3

    .line 3185
    return v2

    .line 3187
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v0, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v1, v0, :cond_4

    .line 3190
    return v2

    .line 3193
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 3175
    :cond_5
    :goto_0
    return v2
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 4824
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 3720
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    .local v0, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3728
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3731
    goto :goto_0

    .line 3729
    :catch_0
    move-exception v1

    .line 3730
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3732
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4262
    const-string v0, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4265
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4266
    :try_start_0
    const-string v1, "Power Manager State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4267
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDirty=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4270
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4269
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulnessChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsPowered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProximityPositive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalInteractiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    const-string v1, "  mNotifyLongScheduled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4285
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4286
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 4288
    :cond_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4290
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4291
    const-string v1, "  mNotifyLongDispatched="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4292
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 4293
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 4295
    :cond_1
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4297
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4298
    const-string v1, "  mNotifyLongNextCheck="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4299
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 4300
    const-string v1, "(none)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 4302
    :cond_2
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4304
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivitySummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanSummoned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastWakeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    invoke-static {v2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 4319
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4318
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastInteractivePowerHintTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 4321
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4320
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4323
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4322
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4330
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4331
    const-string v1, "Settings and Configuration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTheaterModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsSupportedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeAfterScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveWarningDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOffTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSleepTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (enforced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4370
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessModeSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMinimumFloat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingMaximumFloat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessSettingDefaultFloat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDoubleTapWakeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVrModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mForegroundProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4394
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v1

    .line 4395
    .local v1, "attentiveTimeout":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v3

    .line 4396
    .local v3, "sleepTimeout":J
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v5

    .line 4397
    .local v5, "screenOffTimeout":J
    invoke-direct {p0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v7

    .line 4398
    .local v7, "screenDimDuration":J
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4399
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attentive timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4400
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sleep timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4401
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen off timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4402
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4404
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4405
    const-string v9, "UID states (changing="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4406
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 4407
    const-string v9, " changed="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4408
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 4409
    const-string v9, "):"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4410
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 4411
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4412
    .local v10, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const-string v11, "  UID "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {p1, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4413
    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4414
    iget-boolean v11, v10, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v11, :cond_3

    const-string v11, "  ACTIVE "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 4415
    :cond_3
    const-string v11, "INACTIVE "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4416
    :goto_4
    const-string v11, " count="

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4417
    iget v11, v10, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 4418
    const-string v11, " state="

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4419
    iget v11, v10, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 4410
    .end local v10    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4422
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4423
    const-string v9, "Looper state:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4424
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "  "

    invoke-virtual {v9, v10, v11}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4426
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4427
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wake Locks: size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4428
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4429
    .local v10, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4430
    .end local v10    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_5

    .line 4432
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspend Blockers: size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/SuspendBlocker;

    .line 4435
    .local v10, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4436
    .end local v10    # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_6

    .line 4438
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4439
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Power: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4441
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v9, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 4442
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v9, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 4443
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v9, p1}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4445
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4446
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 4447
    .local v9, "numProfiles":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Profile power states: size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4448
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    if-ge v10, v9, :cond_7

    .line 4449
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4450
    .local v11, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    const-string v12, "  mUserId="

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4451
    iget v12, v11, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4452
    const-string v12, " mScreenOffTimeout="

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4453
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 4454
    const-string v12, " mWakeLockSummary="

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4455
    iget v12, v11, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4456
    const-string v12, " mLastUserActivityTime="

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4457
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 4458
    const-string v12, " mLockingNotified="

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4459
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 4448
    .end local v11    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 4462
    .end local v10    # "i":I
    :cond_7
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    move-object v1, v10

    .line 4463
    .end local v3    # "sleepTimeout":J
    .end local v5    # "screenOffTimeout":J
    .end local v7    # "screenDimDuration":J
    .end local v9    # "numProfiles":I
    .local v1, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4465
    if-eqz v1, :cond_8

    .line 4466
    invoke-virtual {v1, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 4469
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_9

    .line 4470
    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->dump(Ljava/io/PrintWriter;)V

    .line 4473
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {v0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;->dump(Ljava/io/PrintWriter;)V

    .line 4474
    return-void

    .line 4463
    .end local v1    # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 4478
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 4480
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4481
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v0, v3}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 4482
    const-wide v5, 0x10500000002L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4483
    const-wide v5, 0x10e00000003L

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4484
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v5, 0x10800000004L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4485
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v7, 0x10800000005L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4486
    const-wide v9, 0x10e00000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4487
    const-wide v9, 0x10500000007L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4488
    const-wide v9, 0x10500000008L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4491
    const-wide v9, 0x10e00000009L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4492
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v9, 0x1080000000aL

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4493
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4494
    const-wide v13, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4495
    const-wide v13, 0x1080000000dL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4496
    const-wide v13, 0x1080000000eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4499
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v13, 0x1080000000fL

    invoke-virtual {v3, v13, v14, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4503
    const-wide v13, 0x10b00000010L

    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4504
    .local v13, "activeWakeLocksToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, v17

    goto :goto_0

    :cond_0
    move/from16 v0, v18

    :goto_0
    const-wide v11, 0x10800000001L

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4507
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move/from16 v0, v18

    :goto_1
    const-wide v9, 0x10800000002L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4510
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move/from16 v0, v17

    goto :goto_2

    :cond_2
    move/from16 v0, v18

    :goto_2
    const-wide v9, 0x10800000003L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4513
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move/from16 v0, v17

    goto :goto_3

    :cond_3
    move/from16 v0, v18

    :goto_3
    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4516
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move/from16 v0, v17

    goto :goto_4

    :cond_4
    move/from16 v0, v18

    :goto_4
    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4519
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move/from16 v0, v17

    goto :goto_5

    :cond_5
    move/from16 v0, v18

    :goto_5
    const-wide v7, 0x10800000006L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4522
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move/from16 v0, v17

    goto :goto_6

    :cond_6
    move/from16 v0, v18

    :goto_6
    const-wide v7, 0x10800000007L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4525
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move/from16 v0, v17

    goto :goto_7

    :cond_7
    move/from16 v0, v18

    :goto_7
    const-wide v7, 0x10800000008L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4528
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4530
    const-wide v7, 0x10300000011L

    iget-wide v5, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v3, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4531
    const-wide v5, 0x10300000012L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4532
    const-wide v5, 0x10300000013L

    iget-wide v7, v1, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4534
    const-wide v5, 0x10b00000014L

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4535
    .local v5, "userActivityToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move/from16 v0, v17

    goto :goto_8

    :cond_8
    move/from16 v0, v18

    :goto_8
    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4538
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    move/from16 v0, v17

    goto :goto_9

    :cond_9
    move/from16 v0, v18

    :goto_9
    const-wide v7, 0x10800000002L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4541
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    move/from16 v0, v17

    goto :goto_a

    :cond_a
    move/from16 v0, v18

    :goto_a
    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4544
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4546
    const-wide v7, 0x10800000015L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4549
    const-wide v7, 0x10800000016L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4550
    const-wide v7, 0x10800000017L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4551
    const-wide v7, 0x10800000018L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4552
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const-wide v7, 0x10800000019L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4553
    const-wide v7, 0x1080000001aL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4555
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v7, v0

    move/from16 v8, v18

    :goto_b
    if-ge v8, v7, :cond_b

    aget v31, v0, v8

    move/from16 v32, v31

    .line 4556
    .local v32, "id":I
    const-wide v9, 0x2050000001bL

    move/from16 v15, v32

    .end local v32    # "id":I
    .local v15, "id":I
    invoke-virtual {v3, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4555
    .end local v15    # "id":I
    add-int/lit8 v8, v8, 0x1

    const-wide v9, 0x10800000003L

    goto :goto_b

    .line 4558
    :cond_b
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v7, v0

    move/from16 v8, v18

    :goto_c
    if-ge v8, v7, :cond_c

    aget v9, v0, v8

    .line 4559
    .local v9, "id":I
    const-wide v11, 0x2050000001cL

    invoke-virtual {v3, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4558
    .end local v9    # "id":I
    add-int/lit8 v8, v8, 0x1

    const-wide v11, 0x10800000001L

    goto :goto_c

    .line 4562
    :cond_c
    const-wide v7, 0x1030000001dL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4563
    const-wide v7, 0x1030000001eL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4564
    const-wide v7, 0x1030000001fL

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4565
    const-wide v7, 0x10300000020L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4568
    const-wide v7, 0x10300000021L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4571
    const-wide v7, 0x10300000022L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4574
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const-wide v7, 0x10800000023L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4577
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const-wide v9, 0x10800000024L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4578
    const-wide v11, 0x10800000025L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4581
    const-wide v11, 0x10800000026L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4585
    const-wide v11, 0x10b00000027L

    .line 4586
    invoke-virtual {v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4587
    .local v11, "settingsAndConfigurationToken":J
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const-wide v7, 0x10800000001L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4591
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const-wide v7, 0x10800000002L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4595
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v7, 0x10800000003L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4599
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v7, 0x10800000004L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4603
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v7, 0x10800000005L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4606
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v7, 0x10800000006L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4610
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v7, 0x10800000007L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4613
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-wide v7, 0x10800000008L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4617
    const-wide v7, 0x10800000009L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4621
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v7, 0x1080000000aL

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4625
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v7, 0x1080000000bL

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4629
    const-wide v7, 0x1110000000cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4633
    const-wide v7, 0x1110000000dL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4637
    const-wide v7, 0x1110000000eL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4641
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v7, 0x1080000000fL

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4644
    const-wide v7, 0x10800000010L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4648
    const-wide v7, 0x10800000011L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4652
    const-wide v7, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4655
    const-wide v7, 0x10500000013L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4659
    const-wide v7, 0x10500000014L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4663
    const-wide v7, 0x10200000015L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4666
    const-wide v7, 0x10500000016L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4669
    const-wide v7, 0x11100000017L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4672
    const-wide v7, 0x11100000025L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4675
    const-wide v7, 0x11100000026L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4678
    const-wide v7, 0x11100000027L

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4682
    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v7, 0x7fffffff

    .line 4686
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 4682
    const-wide v9, 0x10500000018L

    invoke-virtual {v3, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4687
    nop

    .line 4690
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    .line 4687
    const-wide v7, 0x10800000019L

    invoke-virtual {v3, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4692
    const-wide v7, 0x10b0000001aL

    .line 4693
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4695
    .local v7, "stayOnWhilePluggedInToken":J
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    move/from16 v0, v17

    goto :goto_d

    :cond_d
    move/from16 v0, v18

    :goto_d
    const-wide v9, 0x10800000001L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4699
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    move/from16 v0, v17

    goto :goto_e

    :cond_e
    move/from16 v0, v18

    :goto_e
    const-wide v9, 0x10800000002L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4703
    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move/from16 v0, v17

    goto :goto_f

    :cond_f
    move/from16 v0, v18

    :goto_f
    const-wide v9, 0x10800000003L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4708
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4710
    const-wide v9, 0x10e0000001bL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4713
    const-wide v9, 0x1110000001cL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4717
    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    move-wide/from16 v17, v5

    const-wide v5, 0x1120000001dL

    .end local v5    # "userActivityToken":J
    .local v17, "userActivityToken":J
    invoke-virtual {v3, v5, v6, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4721
    const-wide v5, 0x1080000001eL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4725
    const-wide v5, 0x10e0000001fL

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4729
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    const-wide v5, 0x10800000024L

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4733
    const-wide v5, 0x10200000020L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4738
    const-wide v5, 0x10b00000021L

    .line 4739
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4742
    .local v5, "screenBrightnessSettingLimitsToken":J
    const-wide v9, 0x10200000004L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:F

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4746
    const-wide v9, 0x10200000005L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:F

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4750
    const-wide v9, 0x10200000006L

    iget v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:F

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4754
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4756
    const-wide v9, 0x10800000022L

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4759
    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const-wide v9, 0x10800000023L

    invoke-virtual {v3, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4762
    invoke-virtual {v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4764
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v9

    .line 4765
    .local v9, "attentiveTimeout":J
    invoke-direct {v1, v9, v10}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 4766
    .local v19, "sleepTimeout":J
    move-wide v15, v5

    move-wide/from16 v5, v19

    .end local v19    # "sleepTimeout":J
    .local v5, "sleepTimeout":J
    .local v15, "screenBrightnessSettingLimitsToken":J
    invoke-direct {v1, v5, v6, v9, v10}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 4767
    .local v21, "screenOffTimeout":J
    move-wide/from16 v19, v7

    move-wide/from16 v7, v21

    .end local v21    # "screenOffTimeout":J
    .local v7, "screenOffTimeout":J
    .local v19, "stayOnWhilePluggedInToken":J
    invoke-direct {v1, v7, v8}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v21

    move-wide/from16 v23, v21

    .line 4768
    .local v23, "screenDimDuration":J
    move-wide/from16 v21, v11

    .end local v11    # "settingsAndConfigurationToken":J
    .local v21, "settingsAndConfigurationToken":J
    const-wide v11, 0x11100000033L

    invoke-virtual {v3, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4769
    const-wide v11, 0x11100000028L

    invoke-virtual {v3, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4770
    const-wide v11, 0x10500000029L

    invoke-virtual {v3, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4771
    const-wide v11, 0x1050000002aL

    move-wide/from16 v25, v5

    move-wide/from16 v5, v23

    .end local v23    # "screenDimDuration":J
    .local v5, "screenDimDuration":J
    .local v25, "sleepTimeout":J
    invoke-virtual {v3, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4772
    const-wide v11, 0x1080000002bL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4773
    const-wide v11, 0x1080000002cL

    iget-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v3, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v11, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v0, v11, :cond_10

    .line 4776
    iget-object v11, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$UidState;

    .line 4777
    .local v11, "state":Lcom/android/server/power/PowerManagerService$UidState;
    move-wide/from16 v23, v5

    .end local v5    # "screenDimDuration":J
    .restart local v23    # "screenDimDuration":J
    const-wide v5, 0x20b0000002dL

    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4778
    .local v5, "uIDToken":J
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 4779
    .local v12, "uid":I
    move-wide/from16 v27, v7

    .end local v7    # "screenOffTimeout":J
    .local v27, "screenOffTimeout":J
    const-wide v7, 0x10500000001L

    invoke-virtual {v3, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4780
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v29, v9

    const-wide v8, 0x10900000002L

    .end local v9    # "attentiveTimeout":J
    .local v29, "attentiveTimeout":J
    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4781
    iget-boolean v7, v11, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v8, 0x10800000003L

    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4782
    const-wide v8, 0x10500000004L

    iget v7, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v3, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4783
    const-wide v7, 0x10e00000005L

    iget v9, v11, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 4784
    invoke-static {v9}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v9

    .line 4783
    invoke-virtual {v3, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4785
    invoke-virtual {v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4775
    .end local v5    # "uIDToken":J
    .end local v11    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v12    # "uid":I
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v5, v23

    move-wide/from16 v7, v27

    move-wide/from16 v9, v29

    goto :goto_10

    .end local v23    # "screenDimDuration":J
    .end local v27    # "screenOffTimeout":J
    .end local v29    # "attentiveTimeout":J
    .local v5, "screenDimDuration":J
    .restart local v7    # "screenOffTimeout":J
    .restart local v9    # "attentiveTimeout":J
    :cond_10
    move-wide/from16 v23, v5

    move-wide/from16 v27, v7

    move-wide/from16 v29, v9

    .line 4788
    .end local v0    # "i":I
    .end local v5    # "screenDimDuration":J
    .end local v7    # "screenOffTimeout":J
    .end local v9    # "attentiveTimeout":J
    .restart local v23    # "screenDimDuration":J
    .restart local v27    # "screenOffTimeout":J
    .restart local v29    # "attentiveTimeout":J
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v5, 0x10b00000032L

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4791
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b0000002eL

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4793
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4794
    .local v5, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    const-wide v6, 0x20b0000002fL

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4795
    .end local v5    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    goto :goto_11

    .line 4797
    :cond_11
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/SuspendBlocker;

    .line 4798
    .local v5, "sb":Lcom/android/server/power/SuspendBlocker;
    const-wide v6, 0x20b00000030L

    invoke-interface {v5, v3, v6, v7}, Lcom/android/server/power/SuspendBlocker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4799
    .end local v5    # "sb":Lcom/android/server/power/SuspendBlocker;
    goto :goto_12

    .line 4800
    :cond_12
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 4801
    .end local v13    # "activeWakeLocksToken":J
    .end local v15    # "screenBrightnessSettingLimitsToken":J
    .end local v17    # "userActivityToken":J
    .end local v19    # "stayOnWhilePluggedInToken":J
    .end local v21    # "settingsAndConfigurationToken":J
    .end local v23    # "screenDimDuration":J
    .end local v25    # "sleepTimeout":J
    .end local v27    # "screenOffTimeout":J
    .end local v29    # "attentiveTimeout":J
    .local v0, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4803
    if-eqz v0, :cond_13

    .line 4804
    const-wide v4, 0x10b00000031L

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4806
    :cond_13
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4807
    return-void

    .line 4801
    .end local v0    # "wcd":Lcom/android/server/power/WirelessChargerDetector;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .locals 2
    .param p1, "time"    # J

    .line 1689
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 1690
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1691
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1692
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1693
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .line 1669
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1670
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1671
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1672
    return v1

    .line 1670
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1675
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 5

    .line 2152
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_5

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 2155
    return-void

    .line 2158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 2161
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_2

    .line 2162
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 2164
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2165
    const-wide/32 v1, 0x20000

    const-string v3, "Screen turning on"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2166
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 2167
    .local v1, "latencyMs":I
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    .line 2168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen on took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_3
    invoke-static {}, Landroid/os/PerfMonitor;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2173
    const/16 v2, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Plog;->i(ILjava/lang/String;)V

    .line 2177
    .end local v1    # "latencyMs":I
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2178
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    .line 2180
    :cond_5
    return-void
.end method

.method private forceSuspendInternal(I)Z
    .locals 9
    .param p1, "uid"    # I

    .line 4158
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4159
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4161
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    .line 4166
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4167
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4169
    :try_start_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-Suspending (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result v1

    .line 4171
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 4172
    const-string v2, "PowerManagerService"

    const-string v3, "Force-Suspending failed in native."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4174
    :cond_0
    nop

    .line 4176
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4177
    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4179
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4180
    monitor-exit v2

    .line 4174
    return v1

    .line 4180
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4167
    .end local v1    # "success":Z
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "uid":I
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4176
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "uid":I
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4177
    :try_start_6
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 4179
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4180
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4181
    throw v1

    .line 4180
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method private getAttentiveTimeoutLocked()J
    .locals 4

    .line 2848
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    .line 2849
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2850
    const-wide/16 v2, -0x1

    return-wide v2

    .line 2853
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .locals 4
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 1486
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1487
    return-object v1

    .line 1490
    :cond_0
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 1491
    .local v2, "workChain":Landroid/os/WorkSource$WorkChain;
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 1492
    return-object v2

    .line 1494
    .end local v2    # "workChain":Landroid/os/WorkSource$WorkChain;
    :cond_1
    goto :goto_0

    .line 1496
    :cond_2
    return-object v1
.end method

.method private getLastSleepReasonInternal()I
    .locals 2

    .line 5967
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5968
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    monitor-exit v0

    return v1

    .line 5969
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .locals 5

    .line 5973
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5974
    :try_start_0
    new-instance v1, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    invoke-direct {v1, v2, v3, v4}, Landroid/os/PowerManager$WakeData;-><init>(JI)V

    monitor-exit v0

    return-object v1

    .line 5975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNextProfileTimeoutLocked(J)J
    .locals 9
    .param p1, "now"    # J

    .line 2736
    const-wide/16 v0, -0x1

    .line 2737
    .local v0, "nextTimeout":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2738
    .local v2, "numProfiles":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2739
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2740
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v7, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v5, v7

    .line 2741
    .local v5, "timeout":J
    cmp-long v7, v5, p1

    if-lez v7, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_0

    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    .line 2742
    :cond_0
    move-wide v0, v5

    .line 2738
    .end local v4    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .end local v5    # "timeout":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2745
    .end local v3    # "i":I
    :cond_2
    return-wide v0
.end method

.method private getScreenDimDurationLocked(J)J
    .locals 4
    .param p1, "screenOffTimeout"    # J

    .line 2885
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getScreenOffTimeoutLocked(JJ)J
    .locals 7
    .param p1, "sleepTimeout"    # J
    .param p3, "attentiveTimeout"    # J

    .line 2868
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 2869
    .local v0, "timeout":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2870
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2872
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 2873
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2875
    :cond_1
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2

    .line 2876
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2878
    :cond_2
    cmp-long v2, p3, v4

    if-ltz v2, :cond_3

    .line 2879
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2881
    :cond_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getSleepTimeoutLocked(J)J
    .locals 5
    .param p1, "attentiveTimeout"    # J

    .line 2857
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 2858
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2859
    const-wide/16 v2, -0x1

    return-wide v2

    .line 2861
    :cond_0
    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 2862
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2864
    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2506
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v3, 0x6

    if-eq v0, v3, :cond_8

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2551
    :cond_0
    return v1

    .line 2549
    :cond_1
    return v1

    .line 2541
    :cond_2
    sget-object v0, Lcom/android/server/power/PowerManagerService;->INCALL_UIS:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire PROXIMITY_SCREEN_OFF_WAKE_LOCK from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 2547
    :cond_3
    const/16 v0, 0x10

    return v0

    .line 2516
    :cond_4
    invoke-static {p1}, Lcom/android/server/power/OpPowerManagerInjector;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2517
    return v2

    .line 2520
    :cond_5
    return v3

    .line 2524
    :cond_6
    invoke-static {p1}, Lcom/android/server/power/OpPowerManagerInjector;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2525
    return v2

    .line 2528
    :cond_7
    const/4 v0, 0x2

    return v0

    .line 2532
    :cond_8
    invoke-static {p1}, Lcom/android/server/power/OpPowerManagerInjector;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2533
    return v2

    .line 2536
    :cond_9
    const/4 v0, 0x4

    return v0

    .line 2508
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_b

    .line 2510
    return v1

    .line 2553
    :cond_b
    :goto_0
    return v2
.end method

.method private getWakingUpReasonInternal()Ljava/lang/String;
    .locals 2

    .line 1864
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakingUpReason:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1866
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private goToSleepInternal(JIII)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1983
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1984
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1985
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1987
    :cond_0
    monitor-exit v0

    .line 1988
    return-void

    .line 1987
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 2001
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    const-string v1, "PowerManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2002
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2003
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 2004
    .local v5, "element":Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2009
    .end local v0    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_1

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goToSleepNoUpdateLocked: eventTime="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_1
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_6

    .line 2015
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 2022
    :cond_2
    const-wide/32 v4, 0x20000

    const-string v0, "goToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2024
    const/16 v0, 0xb

    .line 2025
    :try_start_0
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2024
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move p3, v0

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to sleep due to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 2030
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepReason:I

    .line 2031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2032
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2033
    invoke-virtual {p0, v3, p3, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V

    .line 2036
    const/4 v1, 0x0

    .line 2037
    .local v1, "numWakeLocksCleared":I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2038
    .local v2, "numWakeLocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 2039
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2040
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    const/4 v8, 0x6

    if-eq v7, v8, :cond_3

    const/16 v8, 0xa

    if-eq v7, v8, :cond_3

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_3

    goto :goto_2

    .line 2044
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2038
    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2048
    .end local v3    # "i":I
    :cond_4
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V

    .line 2051
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    .line 2052
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    .end local v1    # "numWakeLocksCleared":I
    .end local v2    # "numWakeLocks":I
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2056
    nop

    .line 2057
    return v0

    .line 2055
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2056
    throw v0

    .line 2019
    :cond_6
    :goto_3
    return v2
.end method

.method private handleAttentiveTimeout()V
    .locals 3

    .line 2837
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2838
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 2839
    const-string v1, "PowerManagerService"

    const-string v2, "handleAttentiveTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2843
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2844
    monitor-exit v0

    .line 2845
    return-void

    .line 2844
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .line 3662
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3663
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3664
    return-void
.end method

.method private handleSandman()V
    .locals 16

    .line 3030
    move-object/from16 v9, p0

    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3031
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3032
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    move v10, v2

    .line 3033
    .local v10, "wakefulness":I
    iget-boolean v2, v9, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, v9, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_3

    .line 3034
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 3037
    .local v2, "startDreaming":Z
    :goto_1
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v4, :cond_2

    .line 3038
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSandman startDreaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_2
    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    move v11, v2

    goto :goto_2

    .line 3043
    .end local v2    # "startDreaming":Z
    :cond_3
    const/4 v2, 0x0

    move v11, v2

    .line 3045
    .local v11, "startDreaming":Z
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3051
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x3

    if-eqz v1, :cond_6

    .line 3053
    if-eqz v11, :cond_5

    .line 3054
    invoke-virtual {v1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 3055
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v10, v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    invoke-virtual {v1, v3}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 3057
    :cond_5
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    move v12, v1

    .local v1, "isDreaming":Z
    goto :goto_4

    .line 3059
    .end local v1    # "isDreaming":Z
    :cond_6
    const/4 v1, 0x0

    move v12, v1

    .line 3064
    .local v12, "isDreaming":Z
    :goto_4
    iput-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 3067
    iget-object v13, v9, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 3069
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    .line 3070
    :try_start_1
    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 3071
    if-ne v10, v2, :cond_7

    .line 3072
    const-string v1, "PowerManagerService"

    const-string v3, "Dozing..."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3074
    :cond_7
    const-string v1, "PowerManagerService"

    const-string v3, "Dreaming..."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_8
    :goto_5
    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-eq v1, v10, :cond_9

    goto/16 :goto_9

    .line 3085
    :cond_9
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    move-wide v14, v3

    .line 3086
    .local v14, "now":J
    const/4 v1, 0x2

    if-ne v10, v1, :cond_e

    .line 3087
    if-eqz v12, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3088
    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_a

    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, v9, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_a

    .line 3091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3095
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%.  Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3101
    :cond_a
    monitor-exit v13

    return-void

    .line 3106
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3109
    const-string v1, "PowerManagerService"

    const-string v2, "handleSandman: Bed time and goToSleepNoUpdateLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    const/4 v1, 0x0

    .line 3112
    .local v1, "flags":I
    invoke-direct {v9, v14, v15}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(J)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3113
    or-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_7

    .line 3112
    :cond_c
    move v7, v1

    .line 3115
    .end local v1    # "flags":I
    .local v7, "flags":I
    :goto_7
    const/4 v4, 0x2

    const/16 v6, 0x3e8

    move-object/from16 v1, p0

    move-wide v2, v14

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 3117
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3118
    .end local v7    # "flags":I
    goto :goto_8

    .line 3121
    :cond_d
    const-string v1, "PowerManagerService"

    const-string v2, "handleSandman: time to wakeUpNoUpdateLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const/4 v4, 0x0

    const-string v5, "android.server.power:DREAM_FINISHED"

    const/16 v6, 0x3e8

    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 3126
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3e8

    .line 3123
    move-object/from16 v1, p0

    move-wide v2, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 3127
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_8

    .line 3129
    :cond_e
    if-ne v10, v2, :cond_10

    .line 3130
    if-eqz v12, :cond_f

    .line 3131
    monitor-exit v13

    return-void

    .line 3135
    :cond_f
    const/16 v1, 0x3e8

    invoke-direct {v9, v14, v15, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 3136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3138
    .end local v14    # "now":J
    :cond_10
    :goto_8
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3141
    if-eqz v12, :cond_12

    .line 3144
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_11

    .line 3145
    const-string v1, "PowerManagerService"

    const-string v2, "handleSandman stopDream(false)"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_11
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 3150
    :cond_12
    return-void

    .line 3081
    :cond_13
    :goto_9
    :try_start_2
    monitor-exit v13

    return-void

    .line 3138
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3045
    .end local v10    # "wakefulness":I
    .end local v11    # "startDreaming":Z
    .end local v12    # "isDreaming":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 3

    .line 4035
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4036
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 4037
    const-string v1, "PowerManagerService"

    const-string v2, "handleScreenBrightnessBoostTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4041
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4042
    monitor-exit v0

    .line 4043
    return-void

    .line 4042
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .line 1404
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1405
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1406
    return-void
.end method

.method private handleUidStateChangeLocked()V
    .locals 1

    .line 3841
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_0

    .line 3842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_0

    .line 3844
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3846
    :goto_0
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 3

    .line 2826
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2827
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 2828
    const-string v1, "PowerManagerService"

    const-string v2, "handleUserActivityTimeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2832
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2833
    monitor-exit v0

    .line 2834
    return-void

    .line 2833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1587
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1598
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 1599
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWLDeath: l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], f=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 1600
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1599
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1606
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 1607
    monitor-exit v0

    return-void

    .line 1610
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1611
    .end local v1    # "index":I
    monitor-exit v0

    .line 1612
    return-void

    .line 1611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incrementBootCount()V
    .locals 5

    .line 4810
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4813
    nop

    .line 4814
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 4813
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4817
    .local v1, "count":I
    goto :goto_0

    .line 4820
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4815
    :catch_0
    move-exception v1

    .line 4816
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    move v1, v2

    .line 4818
    .local v1, "count":I
    :goto_0
    nop

    .line 4819
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "boot_count"

    add-int/lit8 v4, v1, 0x1

    .line 4818
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4820
    nop

    .end local v1    # "count":I
    monitor-exit v0

    .line 4821
    return-void

    .line 4820
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isAttentiveTimeoutExpired(J)Z
    .locals 4
    .param p1, "now"    # J

    .line 2813
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 2814
    .local v0, "attentiveTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long/2addr v2, v0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .line 2960
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isBeingKeptFromInattentiveSleepLocked()Z
    .locals 1

    .line 2981
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

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

.method private isBeingKeptFromShowingInattentiveSleepWarningLocked()Z
    .locals 1

    .line 2987
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

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

.method private isInteractiveInternal()Z
    .locals 2

    .line 3629
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3630
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3631
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isItBedTimeYetLocked()Z
    .locals 3

    .line 2939
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_0

    .line 2940
    const/4 v0, 0x0

    return v0

    .line 2943
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 2944
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2945
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 2947
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 4

    .line 3979
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .locals 4
    .param p1, "profile"    # Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    .param p2, "now"    # J

    .line 2261
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

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

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    .line 4023
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4024
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return v1

    .line 4025
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1476
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 1482
    const/4 v0, 0x0

    return v0

    .line 1480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidBrightness(F)Z
    .locals 1
    .param p0, "value"    # F

    .line 3338
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .param p1, "level"    # I

    .line 1747
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1748
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    const/16 v2, 0x40

    if-eq p1, v2, :cond_2

    const/16 v2, 0x80

    if-eq p1, v2, :cond_2

    .line 1761
    :try_start_0
    monitor-exit v0

    return v3

    .line 1758
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    monitor-exit v0

    return v1

    .line 1755
    :cond_2
    monitor-exit v0

    return v1

    .line 1763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$FUW_os-Z9SregUE_DR9vDwaRuXo(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .locals 6

    .line 2143
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 2144
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    .line 2145
    .local v2, "savedWakeTimeMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 2146
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    .line 2147
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2149
    :cond_0
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 5
    .param p0, "reason"    # Ljava/lang/String;

    .line 4212
    if-nez p0, :cond_0

    .line 4213
    const-string p0, ""

    .line 4220
    :cond_0
    const-string v0, "quiescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ",quiescent"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4221
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4222
    const-string p0, ""

    goto :goto_0

    .line 4223
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4224
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 4225
    const/4 v1, 0x0

    .line 4226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 4225
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4229
    :cond_2
    :goto_0
    const-string v0, "recovery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4230
    const-string v0, "recovery-update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4231
    :cond_3
    const-string p0, "recovery"

    .line 4234
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_5

    .line 4237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4241
    :cond_5
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4242
    :cond_6
    const-string p0, "software_reboot"

    .line 4245
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4247
    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4250
    goto :goto_1

    .line 4248
    :catch_0
    move-exception v0

    .line 4249
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4251
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-string v0, "PowerManagerService"

    const-string v1, "Unexpected return from lowLevelReboot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .locals 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 4197
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4198
    :cond_0
    const-string p0, "software_reboot"

    .line 4201
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.powerctl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    return-void
.end method

.method private maybeHideInattentiveSleepWarningLocked(JJ)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "showWarningTime"    # J

    .line 2794
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 2796
    .local v0, "attentiveTimeout":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2797
    return v3

    .line 2800
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 2801
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2, v3}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    .line 2802
    return v4

    .line 2803
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromShowingInattentiveSleepWarningLocked()Z

    move-result v2

    if-nez v2, :cond_3

    cmp-long v2, p1, p3

    if-gez v2, :cond_2

    goto :goto_0

    .line 2809
    :cond_2
    return v3

    .line 2805
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2, v4}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    .line 2806
    return v4
.end method

.method private maybeUpdateForegroundProfileLastActivityLocked(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .line 1884
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 1885
    .local v0, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1886
    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 1888
    :cond_0
    return-void
.end method

.method private napInternal(JI)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 2061
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2063
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2065
    :cond_0
    monitor-exit v0

    .line 2066
    return-void

    .line 2065
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 2069
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    const-string v1, "PowerManagerService"

    if-eqz v0, :cond_0

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "napNoUpdateLocked: eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 2078
    :cond_1
    const-wide/32 v4, 0x20000

    const-string v0, "nap"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2080
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nap time (uid "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2083
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2086
    nop

    .line 2087
    return v3

    .line 2085
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2086
    throw v0

    .line 2075
    :cond_2
    :goto_0
    return v2
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerBoost(II)V
.end method

.method private static native nativeSetPowerMode(IZ)Z
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 3

    .line 3554
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3555
    return v1

    .line 3557
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3570
    return v1

    .line 3574
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3579
    return v1

    .line 3581
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_3

    .line 3582
    return v1

    .line 3590
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_4

    .line 3591
    return v1

    .line 3595
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1679
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1680
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1681
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1684
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1686
    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 18
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .line 1721
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_0

    .line 1722
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1725
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1730
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1732
    :cond_0
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1712
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_0

    .line 1713
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1714
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1717
    :cond_0
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1704
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1705
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 1706
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1709
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 10
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1735
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1737
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1738
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1741
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1743
    :cond_0
    return-void
.end method

.method private onUserAttention()V
    .locals 8

    .line 1786
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1787
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1790
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1792
    :cond_0
    monitor-exit v0

    .line 1793
    return-void

    .line 1792
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private overrideScreenBrightnessRangeMinimumInternal(I)V
    .locals 4
    .param p1, "minimumBrightnessRange"    # I

    .line 1873
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1874
    :try_start_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set minimum brightness to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->overrideScreenBrightnessRangeMinimum(I)V

    .line 1877
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1878
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1879
    monitor-exit v0

    .line 1880
    return-void

    .line 1879
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private powerHintInternal(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 4121
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4123
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4124
    return-void

    .line 4129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSendPowerHint(II)V

    .line 4130
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 6
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .line 2092
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    const-string v1, "PowerManagerService"

    if-eqz v0, :cond_0

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reallyGoToSleepNoUpdateLocked: eventTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 2102
    :cond_1
    const-wide/32 v3, 0x20000

    const-string v0, "reallyGoToSleep"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2104
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping (uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2110
    nop

    .line 2111
    const/4 v0, 0x1

    return v0

    .line 2109
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2110
    throw v0

    .line 2099
    :cond_2
    :goto_0
    return v2
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 1540
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1541
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1542
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 1543
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v2, :cond_0

    .line 1553
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseWL: l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " [not found], f=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1553
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_0
    monitor-exit v0

    return-void

    .line 1561
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1571
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_3

    .line 1572
    :cond_2
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseWL: l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], f=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 1573
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1572
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 1578
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1581
    :cond_4
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1582
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1583
    .end local v1    # "index":I
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    monitor-exit v0

    .line 1584
    return-void

    .line 1583
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .line 1615
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1616
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 1617
    .local v0, "state":Lcom/android/server/power/PowerManagerService$UidState;
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 1618
    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v1, :cond_0

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 1620
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1622
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1624
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1625
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1626
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1627
    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1696
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 1697
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1699
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    .line 1701
    :cond_0
    return-void
.end method

.method private scheduleAttentiveTimeout(J)V
    .locals 2
    .param p1, "timeMs"    # J

    .line 2727
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2728
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2729
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2730
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 3

    .line 3011
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_0

    .line 3012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3013
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3014
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3015
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3017
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleUserInactivityTimeout(J)V
    .locals 2
    .param p1, "timeMs"    # J

    .line 2721
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2722
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2723
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2724
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .line 3985
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3986
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 3987
    monitor-exit v0

    return-void

    .line 3989
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 3990
    .local v1, "light":Lcom/android/server/lights/LogicalLight;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3993
    if-eqz v1, :cond_2

    .line 3994
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, p2, v0, v3, v2}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    .line 3996
    :cond_2
    return-void

    .line 3990
    .end local v1    # "light":Lcom/android/server/lights/LogicalLight;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setDozeAfterScreenOffInternal(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 3999
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4000
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 4001
    monitor-exit v0

    .line 4002
    return-void

    .line 4001
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .line 4090
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4091
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v1, p2, :cond_1

    .line 4093
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 4094
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4095
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4096
    invoke-static {v1, p2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    .line 4098
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4099
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4101
    :cond_1
    monitor-exit v0

    .line 4102
    return-void

    .line 4101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .locals 2
    .param p1, "keepState"    # Z

    .line 4105
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4106
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_0

    .line 4107
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 4108
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4109
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4111
    :cond_0
    monitor-exit v0

    .line 4112
    return-void

    .line 4111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3599
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_1

    .line 3600
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting HAL auto-suspend mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3608
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3609
    goto :goto_0

    .line 3608
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3609
    throw v0

    .line 3611
    :cond_1
    :goto_0
    return-void
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3614
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_1

    .line 3615
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting HAL interactive mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 3619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3621
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3623
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3624
    goto :goto_0

    .line 3623
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3624
    throw v0

    .line 3626
    :cond_1
    :goto_0
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .line 3635
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3636
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3637
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowPowerModeInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsPowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_1

    .line 3640
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3643
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    .line 3645
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPowerBoostInternal(II)V
    .locals 1
    .param p1, "boost"    # I
    .param p2, "durationMs"    # I

    .line 4134
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerBoost(II)V

    .line 4135
    return-void
.end method

.method private setPowerModeInternal(IZ)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 4139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(F)V
    .locals 4
    .param p1, "brightness"    # F

    .line 4046
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4047
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v1, p1}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4049
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 4052
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 4053
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenBrightnessOverrideFromWindowManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4058
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4060
    :cond_2
    monitor-exit v0

    .line 4061
    return-void

    .line 4060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 4072
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4073
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 4076
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4077
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UA TimeoutOverrideFromWindowManagerInternal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4081
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 4082
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4083
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4085
    :cond_1
    monitor-exit v0

    .line 4086
    return-void

    .line 4085
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .locals 2

    .line 4064
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4065
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 4066
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4067
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4068
    monitor-exit v0

    .line 4069
    return-void

    .line 4068
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3974
    invoke-static {p1}, Lcom/android/server/power/OpPowerManagerInjector;->setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0
.end method

.method private shouldBoostScreenBrightness()Z
    .locals 1

    .line 3334
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .line 2928
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

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

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .line 3486
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 6
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .line 2330
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2331
    return v1

    .line 2338
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v3, v0, :cond_3

    .line 2339
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doced_on_wireless_charger"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2340
    .local v3, "state":I
    if-eqz p3, :cond_1

    if-nez v3, :cond_1

    .line 2341
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2343
    :cond_1
    if-nez p3, :cond_2

    if-ne v3, v2, :cond_2

    .line 2344
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2346
    :cond_2
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v4, :cond_3

    .line 2347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldWakeUpWhenPluggedOrUnpluggedLocked: dockedOnWirelessCharger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PowerManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    .end local v3    # "state":I
    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v3, :cond_4

    if-ne p2, v0, :cond_4

    .line 2356
    return v2

    .line 2364
    :cond_4
    if-nez p1, :cond_5

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v3, v0, :cond_5

    if-nez p3, :cond_5

    .line 2367
    return v1

    .line 2371
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 2372
    return v1

    .line 2376
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez v0, :cond_7

    .line 2377
    return v1

    .line 2390
    :cond_7
    return v2
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .locals 3
    .param p1, "haltMode"    # I
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .line 3668
    const-string v0, "userspace"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3669
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3673
    invoke-static {}, Lcom/android/server/UserspaceRebootLogger;->noteUserspaceRebootWasRequested()V

    goto :goto_0

    .line 3670
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3675
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_3

    .line 3676
    :cond_2
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3680
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 3686
    :cond_3
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V

    .line 3702
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 3703
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3704
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3707
    if-eqz p4, :cond_4

    .line 3708
    monitor-enter v0

    .line 3711
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3713
    :goto_2
    goto :goto_1

    .line 3715
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3712
    :catch_0
    move-exception v2

    goto :goto_2

    .line 3717
    :cond_4
    return-void

    .line 3682
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too early to call shutdown() or reboot()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAttentiveStateLocked(JI)V
    .locals 17
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .line 2749
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v3

    .line 2750
    .local v3, "attentiveTimeout":J
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long/2addr v5, v3

    .line 2751
    .local v5, "goToSleepTime":J
    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    sub-long v7, v5, v7

    .line 2753
    .local v7, "showWarningTime":J
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/android/server/power/PowerManagerService;->maybeHideInattentiveSleepWarningLocked(JJ)Z

    move-result v9

    .line 2755
    .local v9, "warningDismissed":Z
    const-wide/16 v10, 0x0

    cmp-long v12, v3, v10

    if-ltz v12, :cond_7

    if-nez v9, :cond_0

    move/from16 v12, p3

    and-int/lit16 v13, v12, 0x4ab2

    if-eqz v13, :cond_8

    goto :goto_0

    :cond_0
    move/from16 v12, p3

    .line 2759
    :goto_0
    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    const-string v14, "PowerManagerService"

    if-eqz v13, :cond_1

    .line 2760
    const-string v13, "Updating attentive state"

    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_1
    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2765
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromShowingInattentiveSleepWarningLocked()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2766
    return-void

    .line 2769
    :cond_2
    const-wide/16 v15, -0x1

    .line 2771
    .local v15, "nextTimeout":J
    cmp-long v13, v1, v7

    if-gez v13, :cond_3

    .line 2772
    move-wide v15, v7

    move-wide v1, v15

    goto :goto_1

    .line 2773
    :cond_3
    cmp-long v13, v1, v5

    if-gez v13, :cond_5

    .line 2774
    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 2775
    sub-long v10, v5, v1

    .line 2776
    .local v10, "timeToSleep":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going to sleep in "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms if there is no user activity"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    .end local v10    # "timeToSleep":J
    :cond_4
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v1}, Lcom/android/server/power/InattentiveSleepWarningController;->show()V

    .line 2780
    move-wide v15, v5

    move-wide v1, v15

    goto :goto_1

    .line 2782
    :cond_5
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2783
    const-string v1, "Going to sleep now due to long user inactivity"

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_6
    move-wide v1, v15

    .end local v15    # "nextTimeout":J
    .local v1, "nextTimeout":J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-ltz v10, :cond_8

    .line 2788
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->scheduleAttentiveTimeout(J)V

    goto :goto_2

    .line 2755
    .end local v1    # "nextTimeout":J
    :cond_7
    move/from16 v12, p3

    .line 2791
    :cond_8
    :goto_2
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 9
    .param p1, "dirty"    # I

    .line 3214
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3215
    .local v0, "oldDisplayReady":Z
    and-int/lit16 v1, p1, 0x383f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 3219
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_0

    .line 3220
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 3223
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v4

    iput v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3226
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    const-string v4, "PowerManagerService"

    if-eqz v1, :cond_1

    .line 3227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDisplayPowerRequest.policy = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 3239
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_2

    .line 3242
    const/4 v1, 0x0

    .line 3243
    .local v1, "autoBrightness":Z
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:F

    .local v5, "screenBrightnessOverride":F
    goto :goto_1

    .line 3244
    .end local v1    # "autoBrightness":Z
    .end local v5    # "screenBrightnessOverride":F
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3245
    const/4 v1, 0x0

    .line 3246
    .restart local v1    # "autoBrightness":Z
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .restart local v5    # "screenBrightnessOverride":F
    goto :goto_1

    .line 3248
    .end local v1    # "autoBrightness":Z
    .end local v5    # "screenBrightnessOverride":F
    :cond_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    .line 3250
    .restart local v1    # "autoBrightness":Z
    :goto_0
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 3254
    .restart local v5    # "screenBrightnessOverride":F
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v5, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 3255
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 3256
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v7

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 3257
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v7

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 3259
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 3261
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v6, v2, :cond_7

    .line 3262
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3263
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-nez v6, :cond_6

    .line 3265
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 3266
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v7, 0x3

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3268
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    .line 3269
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v7, 0x2

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3272
    :cond_6
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    goto :goto_2

    .line 3275
    :cond_7
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3276
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/high16 v7, 0x7fc00000    # Float.NaN

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 3282
    :goto_2
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v6

    if-ne v6, v2, :cond_8

    .line 3283
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v6, v3}, Landroid/hardware/display/DisplayManagerInternal;->setUseProximityForceSuspend(Z)V

    goto :goto_3

    .line 3284
    :cond_8
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v6, :cond_9

    .line 3285
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v6, v2}, Landroid/hardware/display/DisplayManagerInternal;->setUseProximityForceSuspend(Z)V

    .line 3286
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 3290
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v6, v7, v8}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3292
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 3294
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v6, :cond_a

    .line 3295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDisplayPowerStateLocked: mDisplayReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", policy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWakefulness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3297
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWakeLockSummary=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3298
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mUserActivitySummary=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 3299
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mBootCompleted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", screenBrightnessOverride="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", useAutoBrightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mScreenBrightnessBoostInProgress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsVrModeEnabled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sQuiescent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3295
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    .end local v1    # "autoBrightness":Z
    .end local v5    # "screenBrightnessOverride":F
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    return v2
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .line 2994
    and-int/lit16 v0, p1, 0x43f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 3004
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 3005
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 3008
    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 16
    .param p1, "dirty"    # I

    .line 2272
    move-object/from16 v8, p0

    move/from16 v9, p1

    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_5

    .line 2273
    iget-boolean v10, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2274
    .local v10, "wasPowered":Z
    iget v11, v8, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2275
    .local v11, "oldPlugType":I
    iget-boolean v12, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2276
    .local v12, "oldLevelLow":Z
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2277
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    iput v0, v8, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2278
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2279
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2281
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsPoweredLocked: wasPowered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPowered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", oldPlugType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlugType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_0
    iget-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v10, v0, :cond_1

    iget v0, v8, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v11, v0, :cond_4

    .line 2290
    :cond_1
    iget v0, v8, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v8, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2293
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v1, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v2, v8, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v13

    .line 2301
    .local v13, "dockedOnWirelessCharger":Z
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v14

    .line 2302
    .local v14, "now":J
    invoke-direct {v8, v10, v11, v13}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2304
    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.server.power:PLUGGED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e8

    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2306
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    .line 2304
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    .line 2308
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2313
    iget-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_4

    .line 2314
    iget-boolean v0, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_3

    invoke-static {v11}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v8, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2315
    invoke-static {v0}, Landroid/os/BatteryManager;->isPlugWired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2316
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, v8, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->onWiredChargingStarted(I)V

    goto :goto_0

    .line 2317
    :cond_3
    if-eqz v13, :cond_4

    .line 2318
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, v8, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted(II)V

    .line 2323
    .end local v13    # "dockedOnWirelessCharger":Z
    .end local v14    # "now":J
    :cond_4
    :goto_0
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v1, v8, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v2, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v3, v8, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    .line 2325
    .end local v10    # "wasPowered":Z
    .end local v11    # "oldPlugType":I
    .end local v12    # "oldLevelLow":Z
    :cond_5
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 7

    .line 2191
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2195
    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_1
    const-wide/32 v0, 0x20000

    const-string v2, "updatePowerState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2201
    :try_start_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2202
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2203
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 2208
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 2209
    .local v2, "now":J
    const/4 v4, 0x0

    .line 2211
    .local v4, "dirtyPhase2":I
    :goto_0
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2212
    .local v5, "dirtyPhase1":I
    or-int/2addr v4, v5

    .line 2213
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2215
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2216
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2217
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/PowerManagerService;->updateAttentiveStateLocked(JI)V

    .line 2218
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2219
    nop

    .line 2224
    .end local v5    # "dirtyPhase1":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 2227
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v5

    .line 2230
    .local v5, "displayBecameReady":Z
    invoke-direct {p0, v4, v5}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2233
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 2238
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    .end local v2    # "now":J
    .end local v4    # "dirtyPhase2":I
    .end local v5    # "displayBecameReady":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2241
    nop

    .line 2242
    return-void

    .line 2221
    .restart local v2    # "now":J
    .restart local v4    # "dirtyPhase2":I
    :cond_2
    goto :goto_0

    .line 2240
    .end local v2    # "now":J
    .end local v4    # "dirtyPhase2":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2241
    throw v2

    .line 2192
    :cond_3
    :goto_1
    return-void
.end method

.method private updateProfilesLocked(J)V
    .locals 5
    .param p1, "now"    # J

    .line 2248
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2249
    .local v0, "numProfiles":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2250
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2251
    .local v2, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2252
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_1

    .line 2253
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v3, :cond_1

    .line 2254
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 2255
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    .line 2249
    .end local v2    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 9
    .param p1, "dirty"    # I

    .line 3312
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_1

    .line 3313
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    .line 3314
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    .line 3315
    .local v7, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3316
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 3317
    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 3319
    .local v2, "boostTimeout":J
    cmp-long v0, v2, v7

    if-lez v0, :cond_0

    .line 3320
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3321
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3322
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3323
    return-void

    .line 3326
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "boostTimeout":J
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3327
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 3331
    .end local v7    # "now":J
    :cond_1
    return-void
.end method

.method private updateSettingsLocked()V
    .locals 7

    .line 1350
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1352
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 1354
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1352
    const-string v2, "screensaver_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1356
    nop

    .line 1358
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1356
    const-string v5, "screensaver_activate_on_sleep"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1360
    nop

    .line 1362
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1360
    const-string v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1364
    const/16 v1, 0x3a98

    const-string v5, "screen_off_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 1367
    const/4 v1, -0x1

    const-string v5, "sleep_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 1370
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const-string v5, "attentive_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    .line 1373
    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1375
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "theater_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1377
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    .line 1379
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_5

    .line 1380
    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v4

    .line 1383
    .local v1, "doubleTapWakeEnabled":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v5, :cond_5

    .line 1384
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1385
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 1386
    nop

    .line 1385
    invoke-virtual {v5, v2, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetFeature(II)V

    .line 1390
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    goto :goto_5

    :cond_6
    const-string v1, "0"

    .line 1391
    .local v1, "retailDemoValue":Ljava/lang/String;
    :goto_5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const/4 v5, 0x0

    .line 1392
    const-string v6, "sys.retaildemo.enabled"

    invoke-interface {v2, v6, v5}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1393
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    invoke-interface {v2, v6, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_7
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1400
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1401
    return-void
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .line 2398
    and-int/lit16 v0, p1, 0x120

    if-eqz v0, :cond_1

    .line 2399
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2400
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_0

    .line 2401
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2402
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0

    .line 2404
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2407
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_1

    .line 2408
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2411
    .end local v0    # "wasStayOn":Z
    :cond_1
    return-void
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    .line 3495
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3496
    .local v0, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v3

    .line 3497
    .local v3, "needDisplaySuspendBlocker":Z
    xor-int/lit8 v4, v3, 0x1

    .line 3498
    .local v4, "autoSuspend":Z
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v5

    .line 3503
    .local v5, "interactive":Z
    if-nez v4, :cond_1

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_1

    .line 3504
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3508
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_2

    .line 3509
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3510
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3512
    :cond_2
    if-eqz v3, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_3

    .line 3513
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3514
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3523
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_5

    .line 3528
    if-nez v5, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v6, :cond_5

    .line 3529
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3534
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_6

    .line 3535
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3536
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3538
    :cond_6
    if-nez v3, :cond_7

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_7

    .line 3539
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3540
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3544
    :cond_7
    if-eqz v4, :cond_8

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v2, :cond_8

    .line 3545
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3547
    :cond_8
    return-void
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 23
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .line 2623
    move-object/from16 v0, p0

    and-int/lit8 v1, p3, 0x27

    if-eqz v1, :cond_13

    .line 2625
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2627
    const-wide/16 v3, 0x0

    .line 2628
    .local v3, "nextTimeout":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v2, :cond_1

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-eq v1, v7, :cond_1

    .line 2630
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 2708
    :cond_0
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_8

    .line 2631
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v8

    .line 2632
    .local v8, "attentiveTimeout":J
    invoke-direct {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v10

    .line 2633
    .local v10, "sleepTimeout":J
    invoke-direct {v0, v10, v11, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v12

    .line 2635
    .local v12, "screenOffTimeout":J
    invoke-direct {v0, v12, v13}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v14

    .line 2636
    .local v14, "screenDimDuration":J
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 2637
    .local v1, "userInactiveOverride":Z
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v6

    .line 2639
    .local v6, "nextProfileTimeout":J
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2640
    move-wide/from16 v17, v3

    .end local v3    # "nextTimeout":J
    .local v17, "nextTimeout":J
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-wide/from16 v19, v6

    .end local v6    # "nextProfileTimeout":J
    .local v19, "nextProfileTimeout":J
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v5, v2, v5

    if-ltz v5, :cond_3

    .line 2641
    add-long v5, v2, v12

    sub-long v6, v5, v14

    .line 2643
    .end local v17    # "nextTimeout":J
    .local v6, "nextTimeout":J
    cmp-long v5, p1, v6

    if-gez v5, :cond_2

    .line 2644
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-wide v3, v6

    goto :goto_1

    .line 2646
    :cond_2
    add-long v3, v2, v12

    .line 2647
    .end local v6    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    cmp-long v2, p1, v3

    if-gez v2, :cond_4

    .line 2648
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_1

    .line 2640
    .end local v3    # "nextTimeout":J
    .restart local v17    # "nextTimeout":J
    :cond_3
    move-wide/from16 v3, v17

    .line 2652
    .end local v17    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :cond_4
    :goto_1
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v2, :cond_8

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v17, v3

    .end local v3    # "nextTimeout":J
    .restart local v17    # "nextTimeout":J
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, v5, v2

    if-ltz v2, :cond_9

    .line 2654
    add-long v2, v5, v12

    .line 2655
    .end local v17    # "nextTimeout":J
    .local v2, "nextTimeout":J
    cmp-long v5, p1, v2

    if-gez v5, :cond_7

    .line 2656
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    goto :goto_2

    .line 2659
    :cond_5
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 2660
    iput v6, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_3

    .line 2658
    :cond_6
    :goto_2
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2665
    :cond_7
    :goto_3
    move-wide v3, v2

    goto :goto_4

    .line 2652
    .end local v2    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :cond_8
    move-wide/from16 v17, v3

    .line 2665
    .end local v3    # "nextTimeout":J
    .restart local v17    # "nextTimeout":J
    :cond_9
    move-wide/from16 v3, v17

    .end local v17    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :goto_4
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const-wide/16 v16, 0x0

    if-nez v2, :cond_d

    .line 2666
    cmp-long v2, v10, v16

    if-ltz v2, :cond_c

    .line 2667
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-wide/from16 v21, v3

    .end local v3    # "nextTimeout":J
    .local v21, "nextTimeout":J
    iget-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2669
    .local v2, "anyUserActivity":J
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v5, v2, v5

    if-ltz v5, :cond_b

    .line 2670
    add-long v5, v2, v10

    .line 2671
    .end local v21    # "nextTimeout":J
    .local v5, "nextTimeout":J
    cmp-long v18, p1, v5

    if-gez v18, :cond_a

    .line 2672
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_5

    .line 2671
    :cond_a
    const/4 v7, 0x4

    goto :goto_5

    .line 2669
    .end local v5    # "nextTimeout":J
    .restart local v21    # "nextTimeout":J
    :cond_b
    const/4 v7, 0x4

    move-wide/from16 v5, v21

    .line 2675
    .end local v2    # "anyUserActivity":J
    .end local v21    # "nextTimeout":J
    .restart local v5    # "nextTimeout":J
    :goto_5
    move-wide v2, v5

    goto :goto_6

    .line 2676
    .end local v5    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :cond_c
    move-wide/from16 v21, v3

    const/4 v7, 0x4

    .end local v3    # "nextTimeout":J
    .restart local v21    # "nextTimeout":J
    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2677
    const-wide/16 v2, -0x1

    .end local v21    # "nextTimeout":J
    .local v2, "nextTimeout":J
    goto :goto_6

    .line 2665
    .end local v2    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :cond_d
    move-wide/from16 v21, v3

    const/4 v7, 0x4

    .end local v3    # "nextTimeout":J
    .restart local v21    # "nextTimeout":J
    move-wide/from16 v2, v21

    .line 2681
    .end local v21    # "nextTimeout":J
    .restart local v2    # "nextTimeout":J
    :goto_6
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v5, v7, :cond_f

    if-eqz v1, :cond_f

    .line 2682
    const/4 v6, 0x3

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    .line 2685
    cmp-long v5, v2, p1

    if-ltz v5, :cond_e

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    const-wide/16 v21, -0x1

    cmp-long v5, v5, v21

    if-nez v5, :cond_e

    .line 2687
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 2690
    :cond_e
    const/4 v5, 0x4

    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2691
    const-wide/16 v2, -0x1

    .line 2694
    :cond_f
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v4, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_10

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_10

    .line 2696
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v4, v2, v3, v14, v15}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(JJ)J

    move-result-wide v2

    .line 2700
    :cond_10
    cmp-long v4, v19, v16

    if-lez v4, :cond_11

    .line 2701
    move-wide/from16 v4, v19

    .end local v19    # "nextProfileTimeout":J
    .local v4, "nextProfileTimeout":J
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_7

    .line 2700
    .end local v4    # "nextProfileTimeout":J
    .restart local v19    # "nextProfileTimeout":J
    :cond_11
    move-wide/from16 v4, v19

    .line 2704
    .end local v19    # "nextProfileTimeout":J
    .restart local v4    # "nextProfileTimeout":J
    :goto_7
    iget v6, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v6, :cond_12

    cmp-long v6, v2, v16

    if-ltz v6, :cond_12

    .line 2705
    invoke-direct {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    .line 2707
    .end local v1    # "userInactiveOverride":Z
    .end local v4    # "nextProfileTimeout":J
    .end local v8    # "attentiveTimeout":J
    .end local v10    # "sleepTimeout":J
    .end local v12    # "screenOffTimeout":J
    .end local v14    # "screenDimDuration":J
    :cond_12
    move-wide v3, v2

    .line 2711
    .end local v2    # "nextTimeout":J
    .restart local v3    # "nextTimeout":J
    :goto_8
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_13

    .line 2712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mUserActivitySummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2714
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2712
    const-string v2, "PowerManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    .end local v3    # "nextTimeout":J
    :cond_13
    return-void
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 7

    .line 3914
    const/4 v0, 0x0

    .line 3915
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3916
    .local v1, "numWakeLocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    .line 3917
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3918
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_1

    .line 3920
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3921
    const/4 v0, 0x1

    .line 3922
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_0

    .line 3924
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 3926
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3916
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3931
    .end local v2    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 3932
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3933
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3935
    :cond_3
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 9
    .param p1, "dirty"    # I

    .line 2421
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_6

    .line 2422
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2424
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2425
    .local v1, "numProfiles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2426
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput v0, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2431
    .end local v2    # "i":I
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 2434
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2435
    .local v2, "numWakeLocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 2436
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2437
    .local v4, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v5

    .line 2438
    .local v5, "wakeLockFlags":I
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2439
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 2440
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2441
    .local v7, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-direct {p0, v4, v8}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2442
    iget v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v8, v5

    iput v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2439
    .end local v7    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2435
    .end local v4    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v5    # "wakeLockFlags":I
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2447
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2448
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 2449
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 2450
    .local v4, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummaryLocked(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    .line 2448
    .end local v4    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2455
    .end local v3    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_5

    .line 2456
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 2460
    :cond_5
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_6

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2462
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v3

    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mWakeLockSummary=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2463
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2461
    const-string v3, "PowerManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    .end local v1    # "numProfiles":I
    .end local v2    # "numWakeLocks":I
    :cond_6
    return-void
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 16
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 1641
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    iget-object v12, v10, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1642
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1643
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1644
    :try_start_1
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1645
    :try_start_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWakeLockWorkSourceInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " [not found], ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1648
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p1

    :try_start_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v14, p4

    :try_start_5
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .end local p1    # "lock":Landroid/os/IBinder;
    .end local p2    # "ws":Landroid/os/WorkSource;
    .end local p3    # "historyTag":Ljava/lang/String;
    .end local p4    # "callingUid":I
    throw v1

    .line 1665
    .end local v0    # "index":I
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService;
    .restart local p1    # "lock":Landroid/os/IBinder;
    .restart local p2    # "ws":Landroid/os/WorkSource;
    .restart local p3    # "historyTag":Ljava/lang/String;
    .restart local p4    # "callingUid":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    :goto_0
    move/from16 v14, p4

    goto :goto_2

    .line 1652
    .restart local v0    # "index":I
    :cond_1
    move-object/from16 v13, p1

    move/from16 v14, p4

    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v15, v1

    .line 1653
    .local v15, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_2

    .line 1654
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWakeLockWorkSourceInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_2
    invoke-virtual {v15, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1659
    iget v3, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1662
    move-object/from16 v1, p3

    :try_start_6
    iput-object v1, v15, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1663
    invoke-virtual {v15, v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    goto :goto_1

    .line 1658
    :cond_3
    move-object/from16 v1, p3

    .line 1665
    .end local v0    # "index":I
    .end local v15    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :goto_1
    monitor-exit v12

    .line 1666
    return-void

    .line 1665
    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v1, p3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v1, p3

    move/from16 v14, p4

    :goto_3
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 10
    .param p1, "dirty"    # I

    .line 2899
    const/4 v0, 0x0

    .line 2900
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x4eb7

    if-eqz v1, :cond_3

    .line 2904
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2905
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 2906
    const-string v1, "PowerManagerService"

    const-string v2, "updateWakefulnessLocked: Bed time..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    .line 2909
    .local v8, "time":J
    invoke-direct {p0, v8, v9}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2910
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    move-object v2, p0

    move-wide v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_0

    .line 2912
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2913
    const/16 v1, 0x3e8

    invoke-direct {p0, v8, v9, v1}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    goto :goto_0

    .line 2915
    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    move-wide v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    .line 2920
    .end local v8    # "time":J
    :cond_3
    :goto_0
    return v0
.end method

.method private userActivityFromNative(JII)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .line 1770
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 1771
    const-string v0, "PowerManagerService"

    const-string v1, "userActivityFromNative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_0
    const/16 v7, 0x3e8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1775
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1778
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1779
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1780
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1782
    :cond_0
    monitor-exit v0

    .line 1783
    return-void

    .line 1782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .line 1796
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_0

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userActivityNoUpdateLocked: eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1797
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1806
    :cond_1
    const-wide/32 v2, 0x20000

    const-string v0, "userActivity"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1808
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 1809
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1810
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1814
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I

    .line 1818
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->updateLastUserActivityTime(JIII)V

    .line 1821
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v0, :cond_3

    .line 1822
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 1823
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 1826
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1832
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    .line 1834
    and-int/lit8 v0, p4, 0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 1835
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_8

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_8

    .line 1837
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1838
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1839
    if-ne p3, v4, :cond_5

    .line 1840
    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    :cond_5
    nop

    .line 1856
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1843
    return v4

    .line 1846
    :cond_6
    :try_start_1
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_8

    .line 1847
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1848
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1849
    if-ne p3, v4, :cond_7

    .line 1850
    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1852
    :cond_7
    nop

    .line 1856
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1852
    return v4

    .line 1856
    :cond_8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1857
    nop

    .line 1858
    return v1

    .line 1829
    :cond_9
    :goto_0
    nop

    .line 1856
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1829
    return v1

    .line 1856
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1857
    throw v0

    .line 1803
    :cond_a
    :goto_1
    return v1
.end method

.method private wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .locals 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "userId"    # I

    .line 2557
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2558
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2559
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    .line 2560
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 2561
    return v1

    .line 2558
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2565
    .end local v0    # "k":I
    :cond_1
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    .line 2566
    .local v0, "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_3

    .line 2567
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2568
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .line 2569
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 2570
    return v1

    .line 2567
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2575
    .end local v0    # "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v2    # "k":I
    :cond_3
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private wakeUpInternal(JILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "opUid"    # I

    .line 1894
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v0, :cond_1

    .line 1895
    const-string v0, "android.server.wm:SCREEN_ON_FLAG"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1896
    const-string v0, "android.server.am:TURN_ON:turnScreenOnFlag"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip wakeUp for P-Sensor ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    return-void

    .line 1902
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1904
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1906
    :cond_2
    monitor-exit v0

    .line 1907
    return-void

    .line 1906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wakeUpNoUpdateLocked(JILjava/lang/String;ILjava/lang/String;I)Z
    .locals 17
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;
    .param p5, "reasonUid"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "opUid"    # I

    .line 1913
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    const-string v1, "PowerManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1914
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1915
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 1917
    .local v5, "element":Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   |----"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1922
    .end local v0    # "stack":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v0, :cond_1

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeUpNoUpdateLocked: eventTime="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_1
    iget-wide v3, v7, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, v8, v3

    if-ltz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_6

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v0, :cond_6

    iget-boolean v0, v7, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 1933
    :cond_2
    nop

    .line 1934
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1933
    invoke-static {v0, v13}, Lcom/android/server/power/OpPowerManagerInjector;->checkWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1935
    return v2

    .line 1941
    :cond_3
    nop

    .line 1942
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1941
    invoke-static {v12, v13, v0}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block waking up from ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") by zen mode!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    return v2

    .line 1949
    :cond_4
    const-wide/32 v5, 0x20000

    const-string v0, "Screen turning on"

    invoke-static {v5, v6, v0, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1951
    const-string v0, "wakeUp"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1953
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", details="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1953
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iput-wide v8, v7, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1961
    iput v10, v7, Lcom/android/server/power/PowerManagerService;->mLastWakeReason:I

    .line 1962
    invoke-virtual {v7, v14, v10, v8, v9}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJ)V

    .line 1966
    iput-object v11, v7, Lcom/android/server/power/PowerManagerService;->mWakingUpReason:Ljava/lang/String;

    .line 1969
    iget-object v1, v7, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide v15, v5

    move-object/from16 v5, p6

    move/from16 v6, p7

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    .line 1970
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1973
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_5

    .line 1974
    iget v0, v7, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v7, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    :cond_5
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 1978
    nop

    .line 1979
    return v14

    .line 1977
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide v15, v5

    :goto_1
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 1978
    throw v0

    .line 1928
    :cond_6
    :goto_2
    return v2
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .locals 15

    .line 2579
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 2581
    .local v1, "now":J
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    .line 2582
    const-wide/32 v3, 0xea60

    sub-long v5, v1, v3

    .line 2583
    .local v5, "when":J
    const-wide v7, 0x7fffffffffffffffL

    .line 2584
    .local v7, "nextCheckTime":J
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2585
    .local v9, "numWakeLocks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 2586
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2587
    .local v11, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 2589
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_1

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_1

    .line 2590
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v12, v12, v5

    if-gez v12, :cond_0

    .line 2592
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 2595
    :cond_0
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    add-long/2addr v12, v3

    .line 2596
    .local v12, "checkTime":J
    cmp-long v14, v12, v7

    if-gez v14, :cond_1

    .line 2597
    move-wide v7, v12

    .line 2585
    .end local v11    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v12    # "checkTime":J
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2603
    .end local v10    # "i":I
    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2604
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2605
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v7, v10

    if-eqz v10, :cond_3

    .line 2606
    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2607
    invoke-direct {p0, v7, v8}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_2

    .line 2609
    :cond_3
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 2611
    .end local v1    # "now":J
    .end local v5    # "when":J
    .end local v7    # "nextCheckTime":J
    .end local v9    # "numWakeLocks":I
    :goto_2
    monitor-exit v0

    .line 2612
    return-void

    .line 2611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method finishUidChangesInternal()V
    .locals 3

    .line 3831
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3832
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3833
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_0

    .line 3834
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3835
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 3837
    :cond_0
    monitor-exit v0

    .line 3838
    return-void

    .line 3837
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .locals 1

    .line 5937
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object v0
.end method

.method getDesiredScreenPolicyLocked()I
    .locals 4

    .line 3343
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3347
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3348
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 3349
    return v2

    .line 3351
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    if-eqz v0, :cond_2

    .line 3352
    return v1

    .line 3361
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_3

    .line 3362
    const/4 v0, 0x4

    return v0

    .line 3365
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 3372
    :cond_4
    return v1

    .line 3369
    :cond_5
    :goto_0
    return v3

    .line 3344
    :cond_6
    :goto_1
    return v1
.end method

.method getLastShutdownReasonInternal()I
    .locals 8

    .line 5947
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const-string v1, "sys.boot.reason"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5948
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "shutdown,thermal,battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "shutdown,userrequested"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_4
    const-string v1, "shutdown,battery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v1, "shutdown,thermal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 5962
    return v2

    .line 5960
    :cond_1
    const/4 v1, 0x6

    return v1

    .line 5958
    :cond_2
    return v3

    .line 5956
    :cond_3
    return v4

    .line 5954
    :cond_4
    return v5

    .line 5952
    :cond_5
    return v6

    .line 5950
    :cond_6
    return v7

    :sswitch_data_0
    .sparse-switch
        -0x7e3d61bf -> :sswitch_5
        -0x418b4b49 -> :sswitch_4
        -0x37ba085b -> :sswitch_3
        -0x32cb60d3 -> :sswitch_2
        -0xa17f9aa -> :sswitch_1
        0x489a31a2 -> :sswitch_0
    .end sparse-switch
.end method

.method getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .locals 1

    .line 5942
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object v0
.end method

.method getWakefulnessLocked()I
    .locals 1

    .line 2135
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    return v0
.end method

.method isDeviceIdleModeInternal()Z
    .locals 2

    .line 3650
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3651
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3652
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .locals 2

    .line 3656
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3657
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return v1

    .line 3658
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public monitor()V
    .locals 2

    .line 4257
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4258
    :try_start_0
    monitor-exit v0

    .line 4259
    return-void

    .line 4258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 11
    .param p1, "phase"    # I

    .line 1131
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    const/16 v1, 0x258

    if-ne p1, v1, :cond_0

    .line 1133
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_0

    .line 1151
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1135
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2

    .line 1136
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    .line 1137
    .local v3, "now":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 1138
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1140
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    .line 1141
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1144
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0xa

    const/4 v9, 0x1

    const/16 v10, 0x3e8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 1149
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1151
    .end local v3    # "now":J
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1152
    return-void

    .line 1151
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 4

    .line 1121
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string v1, "power"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1123
    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1125
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1126
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 1127
    return-void
.end method

.method onUserActivity()V
    .locals 3

    .line 4151
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 4153
    monitor-exit v0

    .line 4154
    return-void

    .line 4153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method readConfigurationLocked()V
    .locals 3

    .line 1305
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1307
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x11100b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1309
    const v1, 0x11100b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1311
    const v1, 0x11100f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1313
    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1315
    const v1, 0x11100e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1317
    const v1, 0x10e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    .line 1319
    const v1, 0x10e0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    .line 1321
    const v1, 0x1110067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 1323
    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1325
    const v1, 0x1110064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1327
    const v1, 0x1110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1329
    const v1, 0x1110066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 1331
    const v1, 0x10e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1333
    const v1, 0x10e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1335
    const v1, 0x10e005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1337
    const v1, 0x111005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 1339
    const v1, 0x10e0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    .line 1341
    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    .line 1343
    const v1, 0x1130002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1345
    const v1, 0x11100dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 1347
    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .line 3775
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3776
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 3777
    monitor-exit v0

    return v2

    .line 3779
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 3780
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3781
    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v3, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 3782
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3783
    if-eqz p1, :cond_3

    .line 3784
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 3786
    :cond_3
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    .line 3788
    :goto_0
    return v4

    .line 3782
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .line 3816
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3817
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 3818
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3819
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3821
    :cond_0
    monitor-exit v0

    .line 3822
    return-void

    .line 3821
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .line 3807
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3808
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 3809
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    .line 3810
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 3812
    :cond_0
    monitor-exit v0

    .line 3813
    return-void

    .line 3812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .line 3792
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3793
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    .line 3794
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 3797
    invoke-static {}, Lcom/android/server/power/OpPowerManagerInjector;->handleLightIdleBlackList()V

    .line 3799
    const/16 v1, 0x8

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 3800
    monitor-exit v0

    return v4

    .line 3802
    :cond_2
    monitor-exit v0

    return v2

    .line 3803
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "timeMs"    # J

    .line 3748
    if-gez p1, :cond_0

    .line 3749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    return-void

    .line 3752
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3754
    if-nez p1, :cond_1

    .line 3755
    :try_start_0
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_1

    .line 3771
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3756
    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 3759
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3760
    .local v1, "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    if-eqz v1, :cond_3

    .line 3761
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_1

    .line 3763
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 3764
    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJ)V

    .line 3763
    invoke-virtual {v2, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3766
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1

    .line 3757
    .end local v1    # "profile":Lcom/android/server/power/PowerManagerService$ProfilePowerState;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3769
    :goto_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3770
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3771
    monitor-exit v0

    .line 3772
    return-void

    .line 3771
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    .line 3743
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3745
    return-void
.end method

.method setVrModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 4116
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    .line 4117
    return-void
.end method

.method setWakefulnessLocked(IIJ)V
    .locals 4
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I
    .param p3, "eventTime"    # J

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2118
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 2119
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 2120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2121
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2124
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 2126
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v0, :cond_1

    .line 2127
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    .line 2131
    :cond_2
    return-void
.end method

.method startUidChangesInternal()V
    .locals 2

    .line 3825
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3826
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 3827
    monitor-exit v0

    .line 3828
    return-void

    .line 3827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 11
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .line 1155
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1156
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 1157
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 1158
    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 1159
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1160
    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1161
    const-class v2, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManagerInternal;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 1162
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    .line 1164
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1165
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:F

    .line 1167
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:F

    .line 1169
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:F

    .line 1174
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z

    if-eqz v1, :cond_0

    .line 1175
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenBrightnessSettingMinimum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mScreenBrightnessSettingMinimum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mScreenBrightnessSettingDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_0
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1185
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1186
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v9, "PowerManagerService.Broadcasts"

    .line 1187
    invoke-virtual {v4, p0, v9}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1186
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/power/Notifier;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 1190
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v6, "PowerManagerService.WirelessChargerDetector"

    .line 1191
    invoke-virtual {v5, p0, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1190
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 1194
    new-instance v4, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 1196
    const-class v4, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/lights/LightsManager;

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 1197
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 1200
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v1}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    .line 1205
    .local v5, "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    const-string v7, "PowerManagerService"

    invoke-interface {v6, v5, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    .end local v5    # "observer":Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;
    goto :goto_0

    .line 1206
    :catch_0
    move-exception v5

    .line 1213
    :goto_0
    :try_start_2
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1214
    const-string v5, "PowerManagerService"

    const-string v6, "system ready!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 1218
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1219
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1220
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OpPowerManagerInjector;->init(Landroid/content/res/Resources;)V

    .line 1226
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "pm":Landroid/os/PowerManager;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1229
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1231
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 1232
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    .line 1235
    const-string v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1238
    const-string v1, "screensaver_activate_on_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1241
    const-string v1, "screensaver_activate_on_dock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1244
    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1247
    const-string v1, "sleep_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1250
    const-string v1, "attentive_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1253
    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1256
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1259
    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1262
    const-string v1, "theater_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1265
    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1268
    const-string v1, "double_tap_to_wake"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1271
    const-string v1, "device_demo_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1274
    const-string v1, "vrmanager"

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    .line 1275
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_2

    .line 1277
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1280
    goto :goto_1

    .line 1278
    :catch_1
    move-exception v2

    .line 1279
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PowerManagerService"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1285
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1286
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1287
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1289
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1290
    const-string v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1291
    const-string v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1292
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1294
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1295
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1298
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1299
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1300
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v5, p0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1301
    return-void

    .line 1226
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method uidActiveInternal(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3887
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3888
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3889
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_0

    .line 3890
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 3891
    const/16 v2, 0x13

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3892
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3894
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3895
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_1

    .line 3896
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3898
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_1
    monitor-exit v0

    .line 3899
    return-void

    .line 3898
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidGoneInternal(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 3872
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3873
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3874
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 3875
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3876
    .local v2, "state":Lcom/android/server/power/PowerManagerService$UidState;
    const/16 v3, 0x14

    iput v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3877
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3878
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3879
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v3, :cond_0

    .line 3880
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3883
    .end local v1    # "index":I
    .end local v2    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_0
    monitor-exit v0

    .line 3884
    return-void

    .line 3883
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method uidIdleInternal(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 3902
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3903
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3904
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-eqz v1, :cond_0

    .line 3905
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 3906
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_0

    .line 3907
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3910
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    :cond_0
    monitor-exit v0

    .line 3911
    return-void

    .line 3910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 2
    .param p1, "displayPowerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3736
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 3737
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 3738
    .local v0, "state":Landroid/os/PowerSaveState;
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3739
    iget v1, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 3740
    return-void
.end method

.method updateUidProcStateInternal(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 3849
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3850
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 3851
    .local v1, "state":Lcom/android/server/power/PowerManagerService$UidState;
    if-nez v1, :cond_0

    .line 3852
    new-instance v2, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    move-object v1, v2

    .line 3853
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3855
    :cond_0
    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    if-gt v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 3857
    .local v2, "oldShouldAllow":Z
    :goto_0
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 3858
    iget v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v6, :cond_4

    .line 3859
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v6, :cond_2

    .line 3860
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_2

    .line 3861
    :cond_2
    iget-boolean v6, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v6, :cond_4

    if-gt p2, v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eq v2, v3, :cond_4

    .line 3865
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 3868
    .end local v1    # "state":Lcom/android/server/power/PowerManagerService$UidState;
    .end local v2    # "oldShouldAllow":Z
    :cond_4
    :goto_2
    monitor-exit v0

    .line 3869
    return-void

    .line 3868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wasDeviceIdleForInternal(J)Z
    .locals 5
    .param p1, "ms"    # J

    .line 4144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4145
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    add-long/2addr v1, p1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 4146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
