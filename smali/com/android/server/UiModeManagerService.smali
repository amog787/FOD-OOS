.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;,
        Lcom/android/server/UiModeManagerService$LocalService;,
        Lcom/android/server/UiModeManagerService$Shell;
    }
.end annotation


# static fields
.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final KEY_ORIGIN_DARK_MODE_ACTION:Ljava/lang/String; = "origin_oem_black_mode"

.field private static final LOG:Z = false

.field private static final OP_LOG:Z = true

.field private static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field private final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCar:Z

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCarModePackagePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

.field private mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

.field private final mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mDarkThemeObserver:Landroid/database/ContentObserver;

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeLocked:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

.field private final mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

.field private mOpForceDarkAllow:Z

.field private mOpInForceDarkMode:Z

.field private mOverrideNightModeOff:Z

.field private mOverrideNightModeOn:Z

.field private mOverrideNightModeUser:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSave:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/app/IUiModeManager$Stub;

.field private mSetUiMode:I

.field private final mSettingsRestored:Landroid/content/BroadcastReceiver;

.field private mSetupWizardComplete:Z

.field private final mSetupWizardObserver:Landroid/database/ContentObserver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mVrHeadset:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWaitForScreenOff:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 113
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 114
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 115
    const/16 v2, 0x16

    invoke-static {v2, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 116
    const/4 v2, 0x6

    invoke-static {v2, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 117
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 118
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 122
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOpInForceDarkMode:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOpForceDarkAllow:Z

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 127
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 152
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 153
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 154
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 156
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 159
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 173
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 177
    new-instance v0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 205
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 280
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v0, Lcom/android/server/-$$Lambda$UiModeManagerService$AwUHdh7CYhroUMaGm35a4uvZcnY;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$AwUHdh7CYhroUMaGm35a4uvZcnY;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 327
    new-instance v0, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 339
    new-instance v0, Lcom/android/server/UiModeManagerService$8;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 358
    new-instance v0, Lcom/android/server/UiModeManagerService$9;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    .line 457
    new-instance v0, Lcom/android/server/UiModeManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$10;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    .line 617
    new-instance v0, Lcom/android/server/UiModeManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$11;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 182
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 183
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setupWizardComplete"    # Z
    .param p3, "tm"    # Lcom/android/server/twilight/TwilightManager;

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V

    .line 189
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 190
    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/res/Resources;
    .param p3, "x3"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOpForceDarkAllow:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOpInForceDarkMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/time/LocalTime;

    .line 90
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/time/LocalTime;

    .line 90
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object p1
.end method

.method static synthetic access$3500(Ljava/time/LocalTime;)J
    .locals 2
    .param p0, "x0"    # Ljava/time/LocalTime;

    .line 90
    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->toMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3600(J)Ljava/time/LocalTime;
    .locals 1
    .param p0, "x0"    # J

    .line 90
    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->fromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 10

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1493
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 1494
    nop

    .line 1495
    const-string/jumbo v0, "statusbar"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 1504
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1

    .line 1505
    const/high16 v1, 0x80000

    goto :goto_0

    .line 1506
    :cond_1
    const/4 v1, 0x0

    .line 1504
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1509
    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_3

    .line 1510
    nop

    .line 1511
    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1514
    :cond_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    .line 1515
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    .line 1516
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1518
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10807ff

    .line 1520
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 1521
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1522
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1523
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106001c

    .line 1524
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10401b2

    .line 1527
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1526
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x10401b1

    .line 1529
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1528
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1531
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1530
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1534
    .local v0, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1535
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1534
    invoke-virtual {v1, v8, v7, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1536
    .end local v0    # "n":Landroid/app/Notification$Builder;
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1537
    :cond_4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1541
    :cond_5
    :goto_1
    return-void
.end method

.method private applyConfigurationExternallyLocked()V
    .locals 4

    .line 1254
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1259
    .local v0, "dark":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Externally uiMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Night ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpUiMode"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/OpAccentColorUtils;->preProcessForUiMode(Landroid/content/Context;Z)V

    .line 1267
    invoke-static {v0}, Lcom/android/server/OpVibratorServiceInjector;->setGlobalDarkMode(Z)V

    .line 1270
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 1272
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->clearSnapshotCache()V

    .line 1274
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1277
    :catch_0
    move-exception v1

    .line 1278
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Activity does not have the "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1275
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1276
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    .end local v0    # "dark":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    return-object v0
.end method

.method private cancelCustomAlarm()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 591
    return-void
.end method

.method private computeCustomNightMode()Z
    .locals 3

    .line 1248
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    move-result v0

    return v0
.end method

.method private disableCarMode(IILjava/lang/String;)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "priority"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1038
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1039
    .local v0, "isDisableAll":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1040
    .local v3, "isPriorityTracked":Z
    if-nez p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1041
    .local v4, "isDefaultPriority":Z
    :goto_1
    if-nez v4, :cond_5

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1045
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 1049
    .local v1, "isChangeAllowed":Z
    :goto_3
    if-eqz v1, :cond_8

    .line 1050
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableCarMode: disabling, priority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-eqz v0, :cond_7

    .line 1053
    new-instance v2, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1054
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1055
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1057
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1058
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    .line 1059
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_4

    .line 1060
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_6
    goto :goto_5

    .line 1061
    :cond_7
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-direct {p0, p2, p3}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    .line 1065
    :cond_8
    :goto_5
    return-void
.end method

.method private enableCarMode(ILjava/lang/String;)V
    .locals 5
    .param p1, "priority"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1079
    .local v0, "isPriorityTracked":Z
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    .line 1080
    .local v1, "isPackagePresent":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1081
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCarMode: enabled at priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeEnabled(ILjava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_0
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCarMode: car mode at priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " already enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_0
    return-void
.end method

.method private static fromMilliseconds(J)Ljava/time/LocalTime;
    .locals 2
    .param p0, "t"    # J

    .line 577
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method private getComputedUiModeConfiguration(I)I
    .locals 1
    .param p1, "uiMode"    # I

    .line 1240
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    .line 1241
    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int/2addr p1, v0

    .line 1242
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x11

    goto :goto_1

    .line 1243
    :cond_1
    const/16 v0, -0x21

    :goto_1
    and-int/2addr p1, v0

    .line 1244
    return p1
.end method

.method private getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 3
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .param p2, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1305
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1308
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private initPowerSave()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 475
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 477
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/-$$Lambda$UiModeManagerService$VLNn_GQ5Eu6ftBtzL1gH0sSXyCk;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$VLNn_GQ5Eu6ftBtzL1gH0sSXyCk;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 488
    return-void
.end method

.method private isCarModeEnabled()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDeskDockState(I)Z
    .locals 2
    .param p0, "state"    # I

    .line 1129
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 1135
    const/4 v0, 0x0

    return v0

    .line 1133
    :cond_0
    return v0
.end method

.method private notifyCarModeDisabled(ILjava/lang/String;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const-string v1, "android.app.extra.PRIORITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method private notifyCarModeEnabled(ILjava/lang/String;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1092
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.CALLING_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v1, "android.app.extra.PRIORITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method private onCustomTimeUpdated(I)V
    .locals 2
    .param p1, "user"    # I

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 924
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 925
    :cond_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    const-string v1, "OpUiMode"

    if-eqz v0, :cond_1

    .line 929
    const-string/jumbo v0, "onCustomTimeUpdated updateLocked Immediately"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    .line 933
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    .line 938
    :cond_1
    const-string/jumbo v0, "onCustomTimeUpdated updateLocked Next Screen Off"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    .line 943
    :goto_0
    return-void
.end method

.method private persistNightMode(I)V
    .locals 6
    .param p1, "user"    # I

    .line 1141
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 1146
    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1144
    const-string v5, "dark_theme_custom_start_time"

    invoke-static {v0, v5, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 1149
    invoke-virtual {v1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    div-long/2addr v1, v3

    .line 1147
    const-string v3, "dark_theme_custom_end_time"

    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1150
    return-void
.end method

.method private persistNightModeOverrides(I)V
    .locals 3
    .param p1, "user"    # I

    .line 1154
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1156
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 1155
    const-string/jumbo v2, "ui_night_mode_override_on"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1158
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 1157
    const-string/jumbo v2, "ui_night_mode_override_off"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1159
    return-void
.end method

.method private registerScreenOffEventLocked()V
    .locals 3

    .line 581
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_0

    return-void

    .line 583
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 584
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 587
    return-void
.end method

.method private registerTimeChangeEvent()V
    .locals 3

    .line 603
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    return-void
.end method

.method private registerVrStateListener()V
    .locals 5

    .line 1571
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 1574
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_0

    .line 1575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v1

    .line 1578
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1579
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 1580
    :goto_1
    return-void
.end method

.method private resetNightModeOverrideLocked()Z
    .locals 2

    .line 1560
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1567
    :cond_0
    return v1

    .line 1561
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 1562
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 1563
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    .line 1564
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 1565
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleNextCustomTimeListener()V
    .locals 13

    .line 1288
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    .line 1289
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1290
    .local v0, "now":Ljava/time/LocalDateTime;
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    .line 1291
    .local v1, "active":Z
    if-eqz v1, :cond_0

    .line 1292
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    goto :goto_0

    .line 1293
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-direct {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    :goto_0
    nop

    .line 1294
    .local v2, "next":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    .line 1295
    .local v11, "millis":J
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x1

    sget-object v8, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v10, 0x0

    move-wide v6, v11

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "next customTime alarm-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpUiMode"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 18
    .param p1, "category"    # Ljava/lang/String;

    .line 1450
    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1451
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 1454
    const/4 v3, 0x0

    .line 1455
    .local v3, "dockAppStarted":Z
    if-eqz p1, :cond_3

    .line 1463
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 1464
    .local v15, "homeIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    const/16 v16, -0x2

    .line 1466
    move-object v8, v15

    move-object/from16 v17, v15

    .end local v15    # "homeIntent":Landroid/content/Intent;
    .local v17, "homeIntent":Landroid/content/Intent;
    move-object v15, v0

    :try_start_1
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1470
    .local v0, "result":I
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1471
    const/4 v2, 0x1

    move v3, v2

    move-object/from16 v6, v17

    .end local v3    # "dockAppStarted":Z
    .local v2, "dockAppStarted":Z
    goto :goto_0

    .line 1472
    .end local v2    # "dockAppStarted":Z
    .restart local v3    # "dockAppStarted":Z
    :cond_0
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_1

    .line 1473
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, v17

    .end local v17    # "homeIntent":Landroid/content/Intent;
    .local v6, "homeIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", startActivityWithConfig result "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1476
    .end local v0    # "result":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1472
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v0    # "result":I
    .restart local v17    # "homeIntent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v6, v17

    .line 1478
    .end local v0    # "result":I
    .end local v17    # "homeIntent":Landroid/content/Intent;
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    :goto_0
    goto :goto_2

    .line 1476
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v17    # "homeIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    .end local v17    # "homeIntent":Landroid/content/Intent;
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    goto :goto_1

    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v15    # "homeIntent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v6, v15

    .line 1477
    .end local v15    # "homeIntent":Landroid/content/Intent;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    :goto_1
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1464
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .restart local v15    # "homeIntent":Landroid/content/Intent;
    :cond_2
    move-object v6, v15

    .line 1483
    .end local v15    # "homeIntent":Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 1486
    if-eqz p1, :cond_4

    if-nez v3, :cond_4

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 1489
    :cond_4
    return-void
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1409
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1411
    return-void
.end method

.method private setupWizardCompleteForCurrentUser()Z
    .locals 4

    .line 515
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 516
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 515
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method private shouldApplyAutomaticChangesImmediately()Z
    .locals 1

    .line 1284
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

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

.method private static toMilliSeconds(Ljava/time/LocalTime;)J
    .locals 4
    .param p0, "t"    # Ljava/time/LocalTime;

    .line 573
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private unregisterScreenOffEventLocked()V
    .locals 2

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 600
    :goto_0
    return-void
.end method

.method private unregisterTimeChangeEvent()V
    .locals 2

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 615
    :goto_0
    return-void
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v1, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1421
    const-string v0, "android.intent.category.CAR_DOCK"

    goto :goto_0

    .line 1423
    :cond_0
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1427
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1429
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_0

    .line 1433
    :cond_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 1434
    const-string v0, "android.intent.category.HOME"

    .line 1445
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 1446
    return-void
.end method

.method private updateComputedNightModeLocked(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .line 1544
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1545
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1548
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1549
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1550
    return-void

    .line 1552
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v0, :cond_2

    .line 1553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1554
    return-void

    .line 1556
    :cond_2
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 1557
    return-void

    .line 1546
    :cond_3
    :goto_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 8

    .line 1162
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 1163
    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_1

    .line 1166
    const/4 v0, 0x4

    goto :goto_0

    .line 1167
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_2

    .line 1168
    const/4 v0, 0x6

    goto :goto_0

    .line 1169
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_3

    .line 1170
    const/4 v0, 0x3

    goto :goto_0

    .line 1171
    :cond_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1172
    const/4 v0, 0x2

    goto :goto_0

    .line 1173
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_5

    .line 1174
    const/4 v0, 0x7

    .line 1177
    :cond_5
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_6

    if-ne v1, v4, :cond_8

    .line 1178
    :cond_6
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-ne v1, v3, :cond_7

    move v1, v4

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1181
    :cond_8
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_b

    .line 1182
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1183
    .local v1, "activateNightMode":Z
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v5, :cond_a

    .line 1184
    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v5, v6, v7}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 1185
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v5}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v5

    .line 1186
    .local v5, "lastState":Lcom/android/server/twilight/TwilightState;
    if-nez v5, :cond_9

    iget-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_2

    :cond_9
    invoke-virtual {v5}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v6

    :goto_2
    move v1, v6

    .line 1188
    .end local v5    # "lastState":Lcom/android/server/twilight/TwilightState;
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1189
    .end local v1    # "activateNightMode":Z
    goto :goto_3

    .line 1190
    :cond_b
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_c

    .line 1191
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v5}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 1195
    :cond_c
    :goto_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_d

    .line 1196
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V

    .line 1197
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    .line 1198
    .local v1, "activate":Z
    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1199
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 1200
    .end local v1    # "activate":Z
    goto :goto_4

    .line 1201
    :cond_d
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V

    .line 1205
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v1, :cond_e

    .line 1206
    and-int/lit8 v0, v0, -0x11

    .line 1207
    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    .line 1209
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->getComputedUiModeConfiguration(I)I

    move-result v0

    .line 1214
    :goto_5
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOpForceDarkAllow:Z

    if-eqz v1, :cond_f

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_6

    :cond_f
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOpInForceDarkMode:Z

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1216
    iget v5, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-ne v5, v3, :cond_10

    move v2, v4

    :cond_10
    const/4 v3, -0x2

    .line 1215
    const-string/jumbo v4, "op_force_dark_mode"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1232
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 1233
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_12

    .line 1234
    :cond_11
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1236
    :cond_12
    return-void
.end method

.method private updateCustomTimeLocked()V
    .locals 3

    .line 520
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    const-string v1, "OpUiMode"

    if-eqz v0, :cond_1

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCustomTimeLocked Immediately @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    .line 533
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCustomTimeLocked Immediately Next Screen Off. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    .line 538
    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 539
    return-void
.end method

.method private updateDockState(I)V
    .locals 5
    .param p1, "newState"    # I

    .line 1116
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1

    .line 1118
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 1119
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, ""

    invoke-virtual {p0, v1, v3, v3, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 1121
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    .line 1122
    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 1125
    :cond_1
    monitor-exit v0

    .line 1126
    return-void

    .line 1125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "userId"    # I

    .line 551
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 552
    .local v0, "oldNightMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v5, "ui_night_mode"

    invoke-static {v1, v5, v4, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "ui_night_mode_override_on"

    invoke-static {v1, v4, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "ui_night_mode_override_off"

    invoke-static {v1, v4, v3, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 559
    nop

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 562
    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 560
    const-string v8, "dark_theme_custom_start_time"

    invoke-static {v1, v8, v4, v5, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    mul-long/2addr v4, v6

    .line 559
    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 563
    nop

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 566
    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 564
    const-string v8, "dark_theme_custom_end_time"

    invoke-static {v1, v8, v4, v5, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    mul-long/2addr v4, v6

    .line 563
    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 569
    :cond_2
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method private updateSystemProperties()V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 368
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x2

    .line 371
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.theme"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private verifySetupWizardCompleted()V
    .locals 6

    .line 502
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 503
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 504
    .local v1, "userId":I
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 506
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 507
    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 506
    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 510
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 512
    :goto_0
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 946
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_0
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 949
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 951
    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->access$3400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    const-string v1, " mOverrideOn/Off="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 954
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 956
    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 958
    const-string v1, "  mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 959
    const-string v1, " (carModeApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 961
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 962
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 963
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 965
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 966
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    const-string v1, " waitScreenOff="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 968
    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 969
    const-string v1, " customStart="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 970
    const-string v1, " customEnd"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 971
    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 972
    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 974
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 976
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 979
    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 981
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_1

    .line 983
    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 986
    :cond_1
    monitor-exit v0

    .line 987
    return-void

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getService()Landroid/app/IUiModeManager;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method public synthetic lambda$initPowerSave$2$UiModeManagerService(Landroid/os/PowerSaveState;)V
    .locals 3
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 478
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, v2, :cond_0

    .line 480
    monitor-exit v0

    return-void

    .line 482
    :cond_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 483
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    .line 484
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 486
    :cond_1
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$UiModeManagerService()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    const-string v1, "OpUiMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeChanged Receive @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 323
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    .line 324
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onStart$1$UiModeManagerService(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 445
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    .line 447
    .local v1, "twilightManager":Lcom/android/server/twilight/TwilightManager;
    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 448
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 449
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    .line 450
    .end local v1    # "twilightManager":Lcom/android/server/twilight/TwilightManager;
    monitor-exit v0

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    .line 383
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 386
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 387
    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 388
    const/16 v4, 0x1a

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 389
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 390
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 391
    const-class v3, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    .line 392
    .local v3, "twilightManager":Lcom/android/server/twilight/TwilightManager;
    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 393
    :cond_0
    const-class v4, Landroid/os/PowerManagerInternal;

    .line 394
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 395
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->initPowerSave()V

    .line 396
    iget v4, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 397
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 399
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode"

    .line 400
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 402
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "batteryFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.os.action.SETTING_RESTORED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    new-instance v5, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 411
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 412
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 413
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "batteryFilter":Landroid/content/IntentFilter;
    .end local v3    # "twilightManager":Lcom/android/server/twilight/TwilightManager;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 415
    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 419
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 424
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 425
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 427
    const v2, 0x10e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 429
    const v2, 0x10e002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 431
    const v2, 0x10e0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 433
    const v2, 0x1110071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 435
    const v2, 0x111009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 436
    const v2, 0x111009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 437
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 438
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 439
    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 440
    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    .line 441
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 444
    new-instance v3, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".onStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 453
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v4, "uimode"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 454
    const-class v3, Lcom/android/server/UiModeManagerInternal;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 376
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 378
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 379
    return-void
.end method

.method setCarModeLocked(ZIILjava/lang/String;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I
    .param p3, "priority"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    invoke-direct {p0, p3, p4}, Lcom/android/server/UiModeManagerService;->enableCarMode(ILjava/lang/String;)V

    goto :goto_0

    .line 1007
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/UiModeManagerService;->disableCarMode(IILjava/lang/String;)V

    .line 1009
    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->isCarModeEnabled()Z

    move-result v0

    .line 1011
    .local v0, "isCarModeNowEnabled":Z
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v1, v0, :cond_1

    .line 1012
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 1014
    if-nez v0, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1016
    .local v1, "context":Landroid/content/Context;
    nop

    .line 1017
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1018
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1016
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 1021
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 1022
    return-void
.end method

.method updateLocked(II)V
    .locals 18
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .line 1312
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1313
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1314
    .local v4, "oldAction":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1315
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1316
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_0

    .line 1317
    :cond_0
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1318
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 1321
    :cond_1
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 1322
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v5, v6, :cond_6

    .line 1323
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1324
    if-eqz v4, :cond_2

    .line 1325
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 1327
    :cond_2
    iput v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1328
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_1

    .line 1330
    :cond_3
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1331
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1332
    if-eqz v4, :cond_4

    .line 1333
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 1335
    :cond_4
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1336
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_1

    .line 1339
    :cond_5
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1340
    move-object v3, v4

    .line 1343
    :cond_6
    :goto_1
    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 1356
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "enableFlags"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1358
    const-string v9, "disableFlags"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1366
    iput-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1367
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 1368
    .end local v8    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 1369
    :cond_7
    const/4 v8, 0x0

    .line 1370
    .local v8, "category":Ljava/lang/String;
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v9, :cond_8

    .line 1371
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v9, :cond_a

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a

    .line 1373
    const-string v8, "android.intent.category.CAR_DOCK"

    goto :goto_2

    .line 1375
    :cond_8
    iget v9, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v9}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1376
    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a

    .line 1378
    const-string v8, "android.intent.category.DESK_DOCK"

    goto :goto_2

    .line 1381
    :cond_9
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_a

    .line 1382
    const-string v8, "android.intent.category.HOME"

    .line 1391
    :cond_a
    :goto_2
    invoke-direct {v0, v8}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 1395
    .end local v8    # "category":Ljava/lang/String;
    :goto_3
    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v8, :cond_b

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v8, :cond_b

    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_c

    :cond_b
    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v8, v6, :cond_d

    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v6, :cond_d

    :cond_c
    move v7, v5

    :cond_d
    move v5, v7

    .line 1399
    .local v5, "keepScreenOn":Z
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eq v5, v6, :cond_f

    .line 1400
    if-eqz v5, :cond_e

    .line 1401
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_4

    .line 1403
    :cond_e
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1406
    :cond_f
    :goto_4
    return-void
.end method
