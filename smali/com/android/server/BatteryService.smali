.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$HealthHalCallback;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;
    }
.end annotation


# static fields
.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

.field private mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private mInvalidCharger:I

.field private mIsInitted:Z

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private final mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPlugType:I

.field private mReportLock:Ljava/lang/Object;

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mShutdownBatteryTemperature:I

.field private mUpdatesStopped:Z

.field private rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 144
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 183
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 519
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsInitted:Z

    .line 520
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    .line 212
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 213
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 215
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 216
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 218
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 220
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 222
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 224
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 227
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 228
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 233
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/apsd_not_done"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 246
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string v1, "DEVPATH=/devices/platform/soc/c440000.qcom,spmi/spmi-0/spmi0-02/c440000.qcom,spmi:qcom,pm8150b@2:qcom,qpnp-smb5/power_supply/battery"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 257
    .end local v0    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->init(Landroid/content/Context;Landroid/os/Handler;)Z

    .line 263
    invoke-static {p1}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->initContext(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-object v0, p0, Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsInitted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsInitted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_1/HealthInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/hardware/health/V2_1/HealthInfo;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_1/HealthInfo;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 128
    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()V
    .locals 0

    .line 128
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 128
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1
    .param p0, "dst"    # Landroid/hardware/health/V1_0/HealthInfo;
    .param p1, "src"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 499
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 500
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 501
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 502
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 503
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 504
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 505
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 506
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 507
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 508
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 509
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 510
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 511
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 512
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 513
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 514
    iget-object v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 515
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 1065
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    if-eqz p3, :cond_1

    :try_start_0
    array-length v1, p3

    if-eqz v1, :cond_1

    const-string v1, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1238
    :cond_0
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1239
    .local v2, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_1

    .line 1215
    .end local v2    # "shell":Lcom/android/server/BatteryService$Shell;
    :cond_1
    :goto_0
    const-string v1, "Current Battery Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v1, :cond_2

    .line 1217
    const-string v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AC powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USB powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Wireless powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Charge counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  health: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1229
    const-string v1, "  scale: 100"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  fastChargeStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->getFastChargeStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    :goto_1
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1245
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1247
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1248
    const-wide v2, 0x10800000001L

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1249
    const/4 v2, 0x0

    .line 1250
    .local v2, "batteryPluggedValue":I
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_0

    .line 1251
    const/4 v2, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_1

    .line 1253
    const/4 v2, 0x2

    goto :goto_0

    .line 1254
    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2

    .line 1255
    const/4 v2, 0x4

    .line 1257
    :cond_2
    :goto_0
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1258
    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1259
    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1260
    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1261
    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1262
    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1263
    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1264
    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1265
    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1266
    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1267
    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1268
    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1269
    .end local v2    # "batteryPluggedValue":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1271
    return-void

    .line 1269
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    .line 1034
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v1, 0x1080819

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1035
    return v1

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x108080b

    if-ne v0, v2, :cond_1

    .line 1037
    return v3

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 1047
    :cond_2
    const v0, 0x1080827

    return v0

    .line 1040
    :cond_3
    :goto_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_4

    .line 1042
    return v1

    .line 1044
    :cond_4
    return v3
.end method

.method private isPoweredLocked(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    return v1

    .line 370
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_1

    .line 371
    return v1

    .line 373
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    .line 374
    return v1

    .line 382
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 383
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->isFakingWirelessCharging()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_4

    .line 386
    :cond_3
    return v1

    .line 388
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$D1kwd7L7yyqN5niz3KWkTepVmUk(Lcom/android/server/BatteryService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 913
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .locals 9

    .line 969
    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 970
    .local v2, "batteryInfoService":Landroid/os/IBinder;
    if-nez v2, :cond_0

    return-void

    .line 972
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 973
    .local v3, "db":Landroid/os/DropBoxManager;
    if-eqz v3, :cond_7

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 975
    :cond_1
    const/4 v5, 0x0

    .line 976
    .local v5, "dumpFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 979
    .local v6, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/batterystats.dump"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 980
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 981
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 982
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 985
    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    nop

    .line 994
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 997
    goto :goto_0

    .line 995
    :catch_0
    move-exception v4

    .line 996
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1000
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 992
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 988
    :catch_1
    move-exception v4

    .line 989
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 992
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_2

    .line 994
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 997
    goto :goto_2

    .line 995
    :catch_2
    move-exception v4

    .line 996
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1000
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 986
    :catch_3
    move-exception v4

    .line 987
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 992
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_3

    .line 994
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 997
    goto :goto_3

    .line 995
    :catch_4
    move-exception v4

    .line 996
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1000
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 1004
    :cond_4
    :goto_4
    return-void

    .line 992
    :goto_5
    if-eqz v6, :cond_5

    .line 994
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 997
    goto :goto_6

    .line 995
    :catch_5
    move-exception v7

    .line 996
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1000
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_6
    throw v4

    .line 973
    .end local v5    # "dumpFile":Ljava/io/File;
    .end local v6    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_7
    :goto_7
    return-void
.end method

.method private logOutlierLocked(J)V
    .locals 8
    .param p1, "duration"    # J

    .line 1007
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1008
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "dischargeThresholdString":Ljava/lang/String;
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "durationThresholdString":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1015
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1016
    .local v3, "durationThreshold":J
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1017
    .local v5, "dischargeThreshold":I
    cmp-long v6, p1, v3

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    .end local v3    # "durationThreshold":J
    .end local v5    # "dischargeThreshold":I
    :cond_0
    goto :goto_0

    .line 1026
    :catch_0
    move-exception v3

    .line 1027
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "opts"    # I

    .line 1206
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1207
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 1208
    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1210
    :cond_1
    return-void
.end method

.method private processValuesLocked(Z)V
    .locals 28
    .param p1, "force"    # Z

    .line 525
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 526
    .local v2, "logOutlier":Z
    const-wide/16 v3, 0x0

    .line 528
    .local v3, "dischargeDuration":J
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_0

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v7, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 531
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v0, :cond_1

    .line 532
    iput v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    .line 533
    :cond_1
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    .line 534
    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    .line 535
    :cond_2
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    .line 536
    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    .line 538
    :cond_3
    iput v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 543
    :goto_1
    const/4 v0, 0x0

    .line 544
    .local v0, "abortPowerConnectedBroadcast":Z
    const/4 v9, 0x0

    .line 545
    .local v9, "deferWirelessDisconnection":Z
    iget v10, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v10, :cond_4

    iget v11, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v11, :cond_4

    .line 547
    nop

    .line 548
    invoke-static {v10}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->shouldAbortPowerConnectedBroadcast(I)Z

    move-result v0

    move v10, v9

    move v9, v0

    goto :goto_2

    .line 549
    :cond_4
    iget v10, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v10, :cond_5

    iget v10, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v10, v7, :cond_5

    .line 552
    invoke-static {}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->shouldDeferWirelessDisconnection()Z

    move-result v9

    move v10, v9

    move v9, v0

    goto :goto_2

    .line 559
    :cond_5
    move v10, v9

    move v9, v0

    .end local v0    # "abortPowerConnectedBroadcast":Z
    .local v9, "abortPowerConnectedBroadcast":Z
    .local v10, "deferWirelessDisconnection":Z
    :goto_2
    if-nez v10, :cond_6

    .line 560
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->update(Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 562
    :cond_6
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->getFastChargeStatus()Z

    move-result v11

    .line 563
    .local v11, "fastChargeStatus":Z
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->getLastFastChargeStatus()Z

    move-result v12

    .line 571
    .local v12, "lastFastChargeStatus":Z
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v0, :cond_b

    .line 572
    iget-object v13, v1, Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;

    monitor-enter v13

    .line 573
    :try_start_0
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_7

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_7

    .line 574
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v14, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v0, v14, v11}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyPlugEvent(Ljava/lang/Boolean;IZ)V

    goto :goto_3

    .line 575
    :cond_7
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_8

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_8

    .line 576
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v14, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v0, v14, v11}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyPlugEvent(Ljava/lang/Boolean;IZ)V

    .line 579
    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    if-nez v12, :cond_9

    .line 580
    invoke-static {v11}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyFastChargeEvent(Z)V

    .line 583
    :cond_9
    iget-object v0, v1, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    if-nez v0, :cond_a

    .line 584
    new-instance v0, Lcom/android/server/BatteryService$7;

    invoke-direct {v0, v1, v11}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;Z)V

    iput-object v0, v1, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    .line 598
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V

    .line 600
    :cond_a
    monitor-exit v13

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 613
    :cond_b
    :goto_4
    :try_start_1
    iget-object v14, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v15, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v13, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v25, v2

    .end local v2    # "logOutlier":Z
    .local v25, "logOutlier":Z
    :try_start_2
    iget-object v2, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v26, v3

    .end local v3    # "dischargeDuration":J
    .local v26, "dischargeDuration":J
    :try_start_3
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    iget-wide v3, v3, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    move/from16 v16, v0

    move/from16 v17, v13

    move/from16 v18, v8

    move/from16 v19, v6

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v2

    move-wide/from16 v23, v3

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 620
    goto :goto_5

    .line 618
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v26    # "dischargeDuration":J
    .restart local v3    # "dischargeDuration":J
    :catch_1
    move-exception v0

    move-wide/from16 v26, v3

    .end local v3    # "dischargeDuration":J
    .restart local v26    # "dischargeDuration":J
    goto :goto_5

    .end local v25    # "logOutlier":Z
    .end local v26    # "dischargeDuration":J
    .restart local v2    # "logOutlier":Z
    .restart local v3    # "dischargeDuration":J
    :catch_2
    move-exception v0

    move/from16 v25, v2

    move-wide/from16 v26, v3

    .line 622
    .end local v2    # "logOutlier":Z
    .end local v3    # "dischargeDuration":J
    .restart local v25    # "logOutlier":Z
    .restart local v26    # "dischargeDuration":J
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 627
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->updateLastFastChargeStatus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 628
    const/4 v0, 0x1

    .end local p1    # "force":Z
    .local v0, "force":Z
    goto :goto_6

    .line 627
    .end local v0    # "force":Z
    .restart local p1    # "force":Z
    :cond_c
    move/from16 v0, p1

    .line 634
    .end local p1    # "force":Z
    .restart local v0    # "force":Z
    :goto_6
    const/4 v2, 0x0

    .line 635
    .local v2, "isIgnoreUpdateForDeepSleep":Z
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/BatteryServiceInjector;->ignoreUpdate(Landroid/hardware/health/V1_0/HealthInfo;IIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 638
    const/4 v2, 0x1

    .line 642
    :cond_d
    if-nez v0, :cond_f

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v3, v4, :cond_f

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v3, v4, :cond_f

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v3, v4, :cond_f

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v3, v4, :cond_f

    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v3, v4, :cond_f

    iget v3, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v3, v4, :cond_f

    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    move/from16 v3, v25

    goto/16 :goto_f

    .line 665
    :cond_f
    :goto_7
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    if-eq v3, v4, :cond_13

    .line 666
    const/16 v13, 0x58a

    const/16 v14, 0x58d

    const/16 v15, 0x589

    if-nez v4, :cond_11

    .line 668
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v3, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 671
    new-instance v3, Landroid/metrics/LogMaker;

    invoke-direct {v3, v15}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 672
    .local v3, "builder":Landroid/metrics/LogMaker;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 673
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 674
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 675
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 674
    invoke-virtual {v3, v13, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 676
    iget-object v4, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 680
    iget-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v4, v13, v7

    if-eqz v4, :cond_10

    iget v4, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v13, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v13, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v4, v13, :cond_10

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v13, v7

    .line 682
    .end local v26    # "dischargeDuration":J
    .local v7, "dischargeDuration":J
    const/4 v4, 0x1

    .line 683
    .end local v25    # "logOutlier":Z
    .local v4, "logOutlier":Z
    const/16 v13, 0xaaa

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v14, v18

    iget v15, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 684
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x1

    aput-object v15, v14, v18

    iget-object v15, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v15, v15, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x2

    aput-object v15, v14, v18

    .line 683
    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 686
    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    move-wide/from16 v26, v7

    goto :goto_8

    .line 688
    .end local v3    # "builder":Landroid/metrics/LogMaker;
    .end local v4    # "logOutlier":Z
    .end local v7    # "dischargeDuration":J
    .restart local v25    # "logOutlier":Z
    .restart local v26    # "dischargeDuration":J
    :cond_10
    move/from16 v4, v25

    .end local v25    # "logOutlier":Z
    .restart local v4    # "logOutlier":Z
    :goto_8
    goto :goto_9

    .end local v4    # "logOutlier":Z
    .restart local v25    # "logOutlier":Z
    :cond_11
    if-nez v3, :cond_13

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 691
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v3, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v3, v7

    .line 694
    .local v3, "chargeDuration":J
    const-wide/16 v16, 0x0

    cmp-long v7, v7, v16

    if-eqz v7, :cond_12

    cmp-long v7, v3, v16

    if-eqz v7, :cond_12

    .line 695
    new-instance v7, Landroid/metrics/LogMaker;

    invoke-direct {v7, v15}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 696
    .local v7, "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v7, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 697
    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 698
    const/16 v8, 0x58c

    .line 699
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 698
    invoke-virtual {v7, v8, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 700
    iget v8, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 701
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 700
    invoke-virtual {v7, v13, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 702
    const/16 v8, 0x58b

    iget-object v13, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v13, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 703
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 702
    invoke-virtual {v7, v8, v13}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 704
    iget-object v8, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 706
    .end local v7    # "builder":Landroid/metrics/LogMaker;
    :cond_12
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 709
    .end local v3    # "chargeDuration":J
    :cond_13
    move/from16 v4, v25

    .end local v25    # "logOutlier":Z
    .restart local v4    # "logOutlier":Z
    :goto_9
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v3, v7, :cond_14

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v3, v7, :cond_14

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v3, v7, :cond_14

    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v3, v7, :cond_15

    .line 713
    :cond_14
    const/16 v3, 0xaa3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 714
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 715
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v7, v5, v8

    .line 713
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 717
    :cond_15
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v3, v5, :cond_16

    .line 720
    const/16 v3, 0xaa2

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 721
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 720
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 723
    :cond_16
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v3, :cond_17

    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v3, :cond_17

    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v3, :cond_17

    .line 727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v5, v7

    .line 728
    .end local v26    # "dischargeDuration":J
    .local v5, "dischargeDuration":J
    const/4 v3, 0x1

    .end local v4    # "logOutlier":Z
    .local v3, "logOutlier":Z
    goto :goto_a

    .line 731
    .end local v3    # "logOutlier":Z
    .end local v5    # "dischargeDuration":J
    .restart local v4    # "logOutlier":Z
    .restart local v26    # "dischargeDuration":J
    :cond_17
    move v3, v4

    move-wide/from16 v5, v26

    .end local v4    # "logOutlier":Z
    .end local v26    # "dischargeDuration":J
    .restart local v3    # "logOutlier":Z
    .restart local v5    # "dischargeDuration":J
    :goto_a
    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v4, :cond_18

    .line 733
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_1b

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v7, 0x1

    if-eq v4, v7, :cond_1b

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v8, :cond_1b

    .line 737
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_b

    .line 741
    :cond_18
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_19

    .line 742
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_b

    .line 743
    :cond_19
    const/4 v4, 0x0

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v7, v8, :cond_1a

    .line 744
    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_b

    .line 745
    :cond_1a
    if-eqz v0, :cond_1b

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v7, v8, :cond_1b

    .line 748
    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 752
    :cond_1b
    :goto_b
    iget v4, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    iput v4, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 763
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const/high16 v7, 0x4000000

    if-eqz v4, :cond_1c

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v4, :cond_1c

    if-nez v9, :cond_1c

    .line 766
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v4, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 768
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v13, "seq"

    invoke-virtual {v4, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/BatteryService$8;

    invoke-direct {v13, v1, v4}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    .end local v4    # "statusIntent":Landroid/content/Intent;
    goto :goto_c

    .line 776
    :cond_1c
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_1e

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_1e

    .line 777
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .restart local v4    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 779
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v13, "seq"

    invoke-virtual {v4, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    if-eqz v10, :cond_1d

    .line 792
    invoke-static {v4}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->copyPowerDisconnectedBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 794
    :cond_1d
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/BatteryService$9;

    invoke-direct {v13, v1, v4}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    .end local v4    # "statusIntent":Landroid/content/Intent;
    :cond_1e
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 805
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 806
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .restart local v4    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 808
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v8, "seq"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$10;

    invoke-direct {v8, v1, v4}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v4    # "statusIntent":Landroid/content/Intent;
    goto :goto_d

    .line 815
    :cond_1f
    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v4, :cond_20

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v4, v8, :cond_20

    .line 817
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 818
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .restart local v4    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 820
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v8, "seq"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$11;

    invoke-direct {v8, v1, v4}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 815
    .end local v4    # "statusIntent":Landroid/content/Intent;
    :cond_20
    :goto_d
    nop

    .line 832
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 833
    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-ne v4, v7, :cond_21

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v4, v7, :cond_22

    .line 834
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 845
    :cond_22
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->updateLightsLocked()Z

    move-result v4

    if-nez v4, :cond_23

    .line 846
    iget-object v4, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 851
    :cond_23
    if-eqz v3, :cond_24

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-eqz v4, :cond_24

    .line 852
    invoke-direct {v1, v5, v6}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 855
    :cond_24
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 856
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 857
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 858
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 859
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 860
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 861
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 862
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 863
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 864
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 865
    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 866
    iget v4, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v4, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 871
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->updateLastFastChargeStatus()Z

    move-wide/from16 v26, v5

    .line 874
    .end local v5    # "dischargeDuration":J
    .restart local v26    # "dischargeDuration":J
    :goto_f
    return-void
.end method

.method private registerHealthCallback()V
    .locals 8

    .line 306
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 308
    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    new-instance v2, Lcom/android/server/BatteryService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 322
    nop

    .line 324
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 329
    .local v0, "beforeWait":J
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_0

    .line 331
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    goto :goto_0

    .line 335
    :catch_0
    move-exception v3

    .line 336
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    nop

    .end local v3    # "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 340
    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms and received the update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 345
    return-void

    .line 340
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 321
    .end local v0    # "beforeWait":J
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/util/NoSuchElementException;
    :try_start_5
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    nop

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v0

    .line 314
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :catch_2
    move-exception v0

    .line 315
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 321
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 322
    throw v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .locals 4

    .line 878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 882
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 884
    .local v1, "icon":I
    iget v2, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 888
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v3, "battery_low"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    const-string v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 892
    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v3, "voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v3, "temperature"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v3, "technology"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string/jumbo v3, "invalid_charger"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-string/jumbo v3, "max_charging_current"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 898
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-string/jumbo v3, "max_charging_voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v3, "charge_counter"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    invoke-static {v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->addIntentExtra(Landroid/content/Intent;)V

    .line 906
    invoke-static {v0}, Lcom/android/server/OpWirelessChargeDisconnectDetectorInjector;->fakeBatteryChangedBroadcast(Landroid/content/Intent;)V

    .line 913
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v3, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 914
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .locals 10

    .line 917
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 918
    .local v0, "event":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 919
    .local v1, "now":J
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 920
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 921
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 923
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 924
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 925
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 928
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 929
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 932
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 933
    .local v3, "queueWasEmpty":Z
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 936
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 939
    :cond_0
    if-eqz v3, :cond_2

    .line 941
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v6, v1, v4

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 942
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v4, v8

    sub-long/2addr v4, v1

    .line 943
    .local v4, "delay":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 945
    .end local v4    # "delay":J
    :cond_2
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .locals 5

    .line 949
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 951
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 952
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 955
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 957
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 963
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyBatteryLevelEvent(I)V

    .line 965
    return-void

    .line 952
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    .line 392
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 393
    .local v0, "plugged":Z
    :goto_0
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 401
    .local v3, "oldPlugged":Z
    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_3

    if-nez v3, :cond_2

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-le v4, v5, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private shouldShutdownLocked()Z
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-lez v0, :cond_2

    .line 412
    return v2

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-nez v0, :cond_3

    .line 417
    return v2

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 2

    .line 430
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_0
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    :cond_0
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1274
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1275
    return-void
.end method

.method private static traceEnd()V
    .locals 2

    .line 1278
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    return-void
.end method

.method private update(Landroid/hardware/health/V2_1/HealthInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/hardware/health/V2_1/HealthInfo;

    .line 477
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 479
    iget-object v0, p1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v0, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-wide/32 v1, 0x20000

    const-string v3, "BatteryChargeCounter"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 481
    iget-object v0, p1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v0, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-string v3, "BatteryCurrent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 484
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_0

    .line 486
    iget-object v1, p1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 487
    iput-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo2p1:Landroid/hardware/health/V2_1/HealthInfo;

    .line 489
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 490
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, p1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 494
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 351
    .local v1, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 353
    if-nez v2, :cond_0

    .line 354
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 356
    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1

    .line 357
    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 359
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 361
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 362
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 280
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    new-instance v1, Lcom/android/server/BatteryService$2;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 291
    .local v1, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 292
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 295
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 296
    .end local v1    # "obs":Landroid/database/ContentObserver;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->registerObserver(ILandroid/os/Handler;)Z

    .line 303
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .locals 11
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1093
    if-nez p2, :cond_0

    .line 1094
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1096
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1097
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x32165859    # -4.90009824E8f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_4

    const v2, 0x1bc62

    if-eq v1, v2, :cond_3

    const v2, 0x6761d4f

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "set"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "unplug"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    const/4 v2, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    if-eqz v1, :cond_11

    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_5

    .line 1200
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1185
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1186
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1190
    .local v2, "ident":J
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v4, :cond_6

    .line 1191
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1192
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1193
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    nop

    .line 1198
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    goto/16 :goto_b

    .line 1196
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    throw v4

    .line 1117
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1118
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 1122
    const-string v3, "No property specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    return v4

    .line 1126
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1127
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 1128
    const-string v3, "No value specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    return v4

    .line 1133
    :cond_9
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v8, :cond_a

    .line 1134
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1136
    :cond_a
    const/4 v8, 0x1

    .line 1137
    .local v8, "update":Z
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_b
    goto :goto_2

    :sswitch_0
    const-string/jumbo v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_1
    const-string v3, "counter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_2
    const-string/jumbo v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_3
    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x7

    goto :goto_3

    :sswitch_4
    const-string/jumbo v9, "usb"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_3

    :sswitch_5
    const-string v3, "ac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v5

    goto :goto_3

    :sswitch_6
    const-string/jumbo v3, "present"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    goto :goto_3

    :sswitch_7
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x4

    goto :goto_3

    :sswitch_8
    const-string/jumbo v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    goto :goto_3

    :goto_2
    move v3, v4

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1163
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 1164
    goto/16 :goto_9

    .line 1160
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 1161
    goto/16 :goto_9

    .line 1157
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 1158
    goto/16 :goto_9

    .line 1154
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1155
    goto :goto_9

    .line 1151
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1152
    goto :goto_9

    .line 1148
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_c

    move v9, v5

    goto :goto_4

    :cond_c
    move v9, v6

    :goto_4
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1149
    goto :goto_9

    .line 1145
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_d

    move v9, v5

    goto :goto_5

    :cond_d
    move v9, v6

    :goto_5
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1146
    goto :goto_9

    .line 1142
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_e

    move v9, v5

    goto :goto_6

    :cond_e
    move v9, v6

    :goto_6
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1143
    goto :goto_9

    .line 1139
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_f

    move v9, v5

    goto :goto_7

    :cond_f
    move v9, v6

    :goto_7
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 1140
    goto :goto_9

    .line 1166
    :goto_8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown set option: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    const/4 v8, 0x0

    .line 1170
    :goto_9
    if-eqz v8, :cond_10

    .line 1171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1173
    .local v9, "ident":J
    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1174
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1176
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    goto :goto_a

    .line 1176
    :catchall_1
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    nop

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/BatteryService;
    .end local p1    # "shell":Lcom/android/server/BatteryService$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1182
    .end local v8    # "update":Z
    .end local v9    # "ident":J
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "opts":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    .restart local p1    # "shell":Lcom/android/server/BatteryService$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_10
    :goto_a
    nop

    .line 1183
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_b

    .line 1179
    .restart local v1    # "opts":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1180
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    return v4

    .line 1099
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1100
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_12

    .line 1103
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1105
    :cond_12
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1106
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1107
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1110
    .local v2, "ident":J
    :try_start_4
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1111
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1113
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    nop

    .line 1202
    :goto_b
    return v6

    .line 1113
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b9b7862 -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x12f88745 -> :sswitch_6
        0xc22 -> :sswitch_5
        0x1c584 -> :sswitch_4
        0x3643d4 -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x391755fc -> :sswitch_1
        0x74cff1f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .line 269
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 271
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 272
    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 274
    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 275
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 3
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "opts":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1085
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    return v0
.end method
