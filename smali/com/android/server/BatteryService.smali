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

    .line 122
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 137
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

    .line 202
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 484
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsInitted:Z

    .line 485
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;

    .line 486
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    .line 204
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 205
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 207
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 208
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 210
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 212
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 214
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 216
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 219
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 220
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 223
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 235
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 241
    .end local v0    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->init(Landroid/content/Context;)Z

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-object v0, p0, Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 121
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsInitted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsInitted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_0/HealthInfo;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()V
    .locals 0

    .line 121
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 121
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1
    .param p0, "dst"    # Landroid/hardware/health/V1_0/HealthInfo;
    .param p1, "src"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 464
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 465
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 466
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 467
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 468
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 469
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 470
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 471
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 472
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 473
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 474
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 475
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 476
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 477
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 478
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 479
    iget-object v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 480
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 978
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
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

    .line 1151
    :cond_0
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1152
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

    .line 1128
    .end local v2    # "shell":Lcom/android/server/BatteryService$Shell;
    :cond_1
    :goto_0
    const-string v1, "Current Battery Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v1, :cond_2

    .line 1130
    const-string v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
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

    .line 1133
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

    .line 1134
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

    .line 1135
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

    .line 1136
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

    .line 1137
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

    .line 1138
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

    .line 1139
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

    .line 1140
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

    .line 1141
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

    .line 1142
    const-string v1, "  scale: 100"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
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

    .line 1144
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

    .line 1145
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

    .line 1148
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

    .line 1154
    :goto_1
    monitor-exit v0

    .line 1155
    return-void

    .line 1154
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

    .line 1158
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1160
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1161
    const-wide v2, 0x10800000001L

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1162
    const/4 v2, 0x0

    .line 1163
    .local v2, "batteryPluggedValue":I
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_0

    .line 1164
    const/4 v2, 0x1

    goto :goto_0

    .line 1165
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_1

    .line 1166
    const/4 v2, 0x2

    goto :goto_0

    .line 1167
    :cond_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2

    .line 1168
    const/4 v2, 0x4

    .line 1170
    :cond_2
    :goto_0
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1171
    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1172
    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1173
    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1174
    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1175
    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1176
    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1177
    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1178
    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1179
    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1180
    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1181
    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1182
    .end local v2    # "batteryPluggedValue":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1184
    return-void

    .line 1182
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

    .line 947
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v1, 0x10807fe

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 948
    return v1

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x10807f0

    if-ne v0, v2, :cond_1

    .line 950
    return v3

    .line 951
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

    .line 960
    :cond_2
    const v0, 0x108080c

    return v0

    .line 953
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

    .line 955
    return v1

    .line 957
    :cond_4
    return v3
.end method

.method private isPoweredLocked(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    return v1

    .line 348
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_1

    .line 349
    return v1

    .line 351
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    .line 352
    return v1

    .line 354
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    .line 355
    return v1

    .line 357
    :cond_3
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

    .line 831
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .locals 9

    .line 882
    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 883
    .local v2, "batteryInfoService":Landroid/os/IBinder;
    if-nez v2, :cond_0

    return-void

    .line 885
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 886
    .local v3, "db":Landroid/os/DropBoxManager;
    if-eqz v3, :cond_7

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 888
    :cond_1
    const/4 v5, 0x0

    .line 889
    .local v5, "dumpFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 892
    .local v6, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/batterystats.dump"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 893
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v7

    .line 894
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 895
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 898
    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    nop

    .line 907
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 910
    goto :goto_0

    .line 908
    :catch_0
    move-exception v4

    .line 909
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 913
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 905
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 901
    :catch_1
    move-exception v4

    .line 902
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_2

    .line 907
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 910
    goto :goto_2

    .line 908
    :catch_2
    move-exception v4

    .line 909
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 913
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 899
    :catch_3
    move-exception v4

    .line 900
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 905
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v6, :cond_3

    .line 907
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 910
    goto :goto_3

    .line 908
    :catch_4
    move-exception v4

    .line 909
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 913
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 917
    :cond_4
    :goto_4
    return-void

    .line 905
    :goto_5
    if-eqz v6, :cond_5

    .line 907
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 910
    goto :goto_6

    .line 908
    :catch_5
    move-exception v7

    .line 909
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 913
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v4

    .line 886
    .end local v5    # "dumpFile":Ljava/io/File;
    .end local v6    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_7
    :goto_7
    return-void
.end method

.method private logOutlierLocked(J)V
    .locals 8
    .param p1, "duration"    # J

    .line 920
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 921
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "dischargeThresholdString":Ljava/lang/String;
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "durationThresholdString":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 928
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 929
    .local v3, "durationThreshold":J
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 930
    .local v5, "dischargeThreshold":I
    cmp-long v6, p1, v3

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v3    # "durationThreshold":J
    .end local v5    # "dischargeThreshold":I
    :cond_0
    goto :goto_0

    .line 939
    :catch_0
    move-exception v3

    .line 940
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

    .line 944
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "opts"    # I

    .line 1119
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1120
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 1121
    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1123
    :cond_1
    return-void
.end method

.method private processValuesLocked(Z)V
    .locals 21
    .param p1, "force"    # Z

    .line 490
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 491
    .local v2, "logOutlier":Z
    const-wide/16 v3, 0x0

    .line 493
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

    .line 496
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v0, :cond_1

    .line 497
    iput v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    .line 498
    :cond_1
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    .line 499
    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    .line 500
    :cond_2
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    .line 501
    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_1

    .line 503
    :cond_3
    iput v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 508
    :goto_1
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->update(Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 509
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->getFastChargeStatus()Z

    move-result v9

    .line 510
    .local v9, "fastChargeStatus":Z
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->getLastFastChargeStatus()Z

    move-result v10

    .line 518
    .local v10, "lastFastChargeStatus":Z
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v0, :cond_8

    .line 519
    iget-object v11, v1, Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;

    monitor-enter v11

    .line 520
    :try_start_0
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_4

    .line 521
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v12, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v0, v12, v9}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyPlugEvent(Ljava/lang/Boolean;IZ)V

    goto :goto_2

    .line 522
    :cond_4
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_5

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_5

    .line 523
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v12, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v0, v12, v9}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyPlugEvent(Ljava/lang/Boolean;IZ)V

    .line 526
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    if-nez v10, :cond_6

    .line 527
    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyFastChargeEvent(Z)V

    .line 530
    :cond_6
    iget-object v0, v1, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    if-nez v0, :cond_7

    .line 531
    new-instance v0, Lcom/android/server/BatteryService$7;

    invoke-direct {v0, v1, v9}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;Z)V

    iput-object v0, v1, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    .line 545
    iget-object v0, v1, Lcom/android/server/BatteryService;->rl:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V

    .line 547
    :cond_7
    monitor-exit v11

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 560
    :cond_8
    :goto_3
    :try_start_1
    iget-object v12, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v15, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    move/from16 v16, v0

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v6

    move/from16 v20, v5

    invoke-interface/range {v12 .. v20}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    goto :goto_4

    .line 564
    :catch_0
    move-exception v0

    .line 568
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 573
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->updateLastFastChargeStatus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 574
    const/4 v0, 0x1

    .end local p1    # "force":Z
    .local v0, "force":Z
    goto :goto_5

    .line 573
    .end local v0    # "force":Z
    .restart local p1    # "force":Z
    :cond_9
    move/from16 v0, p1

    .line 580
    .end local p1    # "force":Z
    .restart local v0    # "force":Z
    :goto_5
    const/4 v5, 0x0

    .line 581
    .local v5, "isIgnoreUpdateForDeepSleep":Z
    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v12, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    iget v13, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    iget v14, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    iget v15, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/android/server/BatteryServiceInjector;->ignoreUpdate(Landroid/hardware/health/V1_0/HealthInfo;IIIII)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 584
    const/4 v5, 0x1

    .line 588
    :cond_a
    if-nez v0, :cond_b

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v6, v8, :cond_b

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v6, v8, :cond_b

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v8, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v6, v8, :cond_b

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v6, v8, :cond_b

    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v6, v8, :cond_b

    iget v6, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v6, v8, :cond_b

    if-nez v5, :cond_20

    .line 611
    :cond_b
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v6, v8, :cond_f

    .line 612
    const/16 v15, 0x58a

    const/16 v11, 0x58d

    const/16 v12, 0x589

    if-nez v8, :cond_d

    .line 614
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v6, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 617
    new-instance v6, Landroid/metrics/LogMaker;

    invoke-direct {v6, v12}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 618
    .local v6, "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 619
    iget v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 620
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 621
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 620
    invoke-virtual {v6, v15, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 622
    iget-object v8, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 626
    iget-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-eqz v8, :cond_c

    iget v8, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v8, v11, :cond_c

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v3, v11, v13

    .line 628
    const/4 v2, 0x1

    .line 629
    const/16 v8, 0xaaa

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget v11, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 630
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v12, v13

    .line 629
    invoke-static {v8, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 632
    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 634
    .end local v6    # "builder":Landroid/metrics/LogMaker;
    :cond_c
    goto :goto_6

    :cond_d
    if-nez v6, :cond_c

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 637
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v6, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v13, v7

    .line 640
    .local v13, "chargeDuration":J
    const-wide/16 v17, 0x0

    cmp-long v7, v7, v17

    if-eqz v7, :cond_e

    cmp-long v7, v13, v17

    if-eqz v7, :cond_e

    .line 641
    new-instance v7, Landroid/metrics/LogMaker;

    invoke-direct {v7, v12}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 642
    .local v7, "builder":Landroid/metrics/LogMaker;
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 643
    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 644
    const/16 v8, 0x58c

    .line 645
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 644
    invoke-virtual {v7, v8, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 646
    iget v8, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 647
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 646
    invoke-virtual {v7, v15, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 648
    const/16 v8, 0x58b

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 649
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 648
    invoke-virtual {v7, v8, v11}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 650
    iget-object v8, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 652
    .end local v7    # "builder":Landroid/metrics/LogMaker;
    :cond_e
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 655
    .end local v13    # "chargeDuration":J
    :cond_f
    :goto_6
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v7, v8, :cond_10

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v7, v8, :cond_10

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v8, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v7, v8, :cond_10

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v7, v8, :cond_11

    .line 659
    :cond_10
    const/16 v7, 0xaa3

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 660
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v8, v12

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v8, v12

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v8, v12

    iget v11, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 661
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v8, v12

    iget-object v11, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v11, v11, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v11, v8, v6

    .line 659
    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 663
    :cond_11
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v6, v7, :cond_12

    .line 666
    const/16 v6, 0xaa2

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 667
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    .line 666
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 669
    :cond_12
    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v6, :cond_13

    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v6, :cond_13

    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v6, :cond_13

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v6, v11

    .line 674
    .end local v3    # "dischargeDuration":J
    .local v6, "dischargeDuration":J
    const/4 v2, 0x1

    move-wide v3, v6

    .line 677
    .end local v6    # "dischargeDuration":J
    .restart local v3    # "dischargeDuration":J
    :cond_13
    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v6, :cond_14

    .line 679
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v6, :cond_17

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_17

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v6, v8, :cond_17

    .line 683
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    .line 687
    :cond_14
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v6, :cond_15

    .line 688
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    .line 689
    :cond_15
    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v7, v8, :cond_16

    .line 690
    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_7

    .line 691
    :cond_16
    if-eqz v0, :cond_17

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v7, v8, :cond_17

    .line 694
    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 698
    :cond_17
    :goto_7
    iget v6, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 703
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const/high16 v7, 0x4000000

    if-eqz v6, :cond_18

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v6, :cond_18

    .line 704
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v6, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 706
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v11, "seq"

    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$8;

    invoke-direct {v11, v1, v6}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    .end local v6    # "statusIntent":Landroid/content/Intent;
    goto :goto_8

    .line 714
    :cond_18
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v6, :cond_19

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v6, :cond_19

    .line 715
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .restart local v6    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v11, "seq"

    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$9;

    invoke-direct {v11, v1, v6}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 726
    .end local v6    # "statusIntent":Landroid/content/Intent;
    :cond_19
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 727
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 728
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .restart local v6    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 730
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v8, "seq"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$10;

    invoke-direct {v8, v1, v6}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v6    # "statusIntent":Landroid/content/Intent;
    goto :goto_9

    .line 737
    :cond_1a
    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v6, :cond_1b

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v6, v8, :cond_1b

    .line 739
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 740
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v6    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 742
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v8, "seq"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$11;

    invoke-direct {v8, v1, v6}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 737
    .end local v6    # "statusIntent":Landroid/content/Intent;
    :cond_1b
    :goto_9
    nop

    .line 754
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 755
    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-ne v6, v7, :cond_1c

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v6, v7, :cond_1d

    .line 756
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 767
    :cond_1d
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->updateLightsLocked()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 768
    iget-object v6, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v6}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 773
    :cond_1e
    if-eqz v2, :cond_1f

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1f

    .line 774
    invoke-direct {v1, v3, v4}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 777
    :cond_1f
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 778
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 779
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 780
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 781
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 782
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 783
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 784
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 785
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 786
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 787
    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 788
    iget v6, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v6, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 793
    invoke-static {}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->updateLastFastChargeStatus()Z

    .line 796
    :cond_20
    return-void
.end method

.method private registerHealthCallback()V
    .locals 8

    .line 284
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 286
    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    new-instance v2, Lcom/android/server/BatteryService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$4;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 300
    nop

    .line 302
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 307
    .local v0, "beforeWait":J
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_0

    .line 309
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

    .line 312
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    goto :goto_0

    .line 313
    :catch_0
    move-exception v3

    .line 314
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    nop

    .end local v3    # "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 318
    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
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

    .line 322
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 323
    return-void

    .line 318
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 299
    .end local v0    # "beforeWait":J
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 295
    :catch_1
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/util/NoSuchElementException;
    :try_start_5
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    nop

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v0

    .line 292
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :catch_2
    move-exception v0

    .line 293
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Lcom/android/server/BatteryService;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 299
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/BatteryService;
    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    throw v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .locals 4

    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 804
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 806
    .local v1, "icon":I
    iget v2, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 808
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 810
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v3, "battery_low"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 812
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v3, "voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v3, "temperature"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v3, "technology"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string v3, "invalid_charger"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-string/jumbo v3, "max_charging_current"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-string/jumbo v3, "max_charging_voltage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v3, "charge_counter"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    invoke-static {v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->addIntentExtra(Landroid/content/Intent;)V

    .line 831
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v3, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .locals 11

    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v0, "event":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 837
    .local v1, "now":J
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 838
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 840
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 841
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 842
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 843
    const/16 v3, 0x64

    const-string/jumbo v4, "scale"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 845
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 846
    const-string v4, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 848
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    .line 849
    .local v4, "queueWasEmpty":Z
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 852
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 855
    :cond_0
    if-eqz v4, :cond_2

    .line 857
    iget-wide v5, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v7, v1, v5

    const-wide/32 v9, 0xea60

    cmp-long v3, v7, v9

    if-lez v3, :cond_1

    .line 858
    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v5, v9

    sub-long/2addr v5, v1

    .line 859
    .local v5, "delay":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 861
    .end local v5    # "delay":J
    :cond_2
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .locals 5

    .line 865
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 867
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 868
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 871
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 873
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 875
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 877
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyBatteryLevelEvent(I)V

    .line 878
    return-void

    .line 868
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

    .line 361
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 362
    .local v0, "plugged":Z
    :goto_0
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 370
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
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 378
    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-nez v0, :cond_1

    .line 383
    return v1

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 2

    .line 396
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_0
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    :cond_0
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1187
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1188
    return-void
.end method

.method private static traceEnd()V
    .locals 2

    .line 1191
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1192
    return-void
.end method

.method private update(Landroid/hardware/health/V2_0/HealthInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 443
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 445
    iget-object v0, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-wide/32 v1, 0x20000

    const-string v3, "BatteryChargeCounter"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 447
    iget-object v0, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-string v3, "BatteryCurrent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 450
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 454
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 455
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 459
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 461
    return-void

    .line 459
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

    .line 326
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 329
    .local v1, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 331
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_0

    .line 332
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 334
    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1

    .line 335
    iput v3, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 337
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 339
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 340
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .line 258
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    new-instance v1, Lcom/android/server/BatteryService$2;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 269
    .local v1, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 270
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 273
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 274
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

    .line 279
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/oneplus/android/server/power/OpFastChargeInjector;->registerObserver(ILandroid/os/Handler;)Z

    .line 281
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .locals 11
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1006
    if-nez p2, :cond_0

    .line 1007
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1009
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1010
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

    .line 1113
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1098
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1099
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1103
    .local v2, "ident":J
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v4, :cond_6

    .line 1104
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1105
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1106
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    nop

    .line 1111
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    goto/16 :goto_b

    .line 1109
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1030
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1031
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1034
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 1035
    const-string v3, "No property specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    return v4

    .line 1039
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 1040
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 1041
    const-string v3, "No value specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    return v4

    .line 1046
    :cond_9
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v8, :cond_a

    .line 1047
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1049
    :cond_a
    const/4 v8, 0x1

    .line 1050
    .local v8, "update":Z
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_b
    goto :goto_2

    :sswitch_0
    const-string v3, "invalid"

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

    .line 1079
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1076
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 1077
    goto/16 :goto_9

    .line 1073
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 1074
    goto/16 :goto_9

    .line 1070
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 1071
    goto/16 :goto_9

    .line 1067
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1068
    goto :goto_9

    .line 1064
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1065
    goto :goto_9

    .line 1061
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

    .line 1062
    goto :goto_9

    .line 1058
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

    .line 1059
    goto :goto_9

    .line 1055
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

    .line 1056
    goto :goto_9

    .line 1052
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

    .line 1053
    goto :goto_9

    .line 1079
    :goto_8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown set option: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    const/4 v8, 0x0

    .line 1083
    :goto_9
    if-eqz v8, :cond_10

    .line 1084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1086
    .local v9, "ident":J
    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1087
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1089
    :try_start_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1090
    goto :goto_a

    .line 1089
    :catchall_1
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 1095
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

    .line 1096
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_b

    .line 1092
    .restart local v1    # "opts":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1093
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    return v4

    .line 1012
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1013
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_12

    .line 1016
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1018
    :cond_12
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1019
    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1020
    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1023
    .local v2, "ident":J
    :try_start_4
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1024
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1026
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    nop

    .line 1028
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    nop

    .line 1115
    :goto_b
    return v6

    .line 1026
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 247
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 249
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 250
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 251
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 252
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 3
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;

    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "opts":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 998
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    :cond_1
    return v0
.end method
