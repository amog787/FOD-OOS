.class public Lcom/android/server/stats/StatsCompanionService;
.super Landroid/os/IStatsCompanionService$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;,
        Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;,
        Lcom/android/server/stats/StatsCompanionService$Lifecycle;,
        Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;,
        Lcom/android/server/stats/StatsCompanionService$CompanionHandler;
    }
.end annotation


# static fields
.field private static final APPLICATION_INFO_FIELD_ID:I = 0x1

.field public static final CODE_ACTIVE_CONFIGS_BROADCAST:I = 0x1

.field public static final CODE_DATA_BROADCAST:I = 0x1

.field public static final CODE_SUBSCRIBER_BROADCAST:I = 0x1

.field public static final CONFIG_DIR:Ljava/lang/String; = "/data/misc/stats-service"

.field private static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field public static final DEATH_THRESHOLD:I = 0xa

.field static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final EXTRA_LAST_REPORT_TIME:Ljava/lang/String; = "android.app.extra.LAST_REPORT_TIME"

.field private static final INSTALLER_FIELD_ID:I = 0x5

.field private static final MAX_BATTERY_STATS_HELPER_FREQUENCY_MS:I = 0x3e8

.field private static final MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

.field private static final MILLIS_IN_A_DAY:J

.field private static final PACKAGE_NAME_FIELD_ID:I = 0x4

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field static final TAG:Ljava/lang/String; = "StatsCompanionService"

.field private static final UID_FIELD_ID:I = 0x1

.field private static final VERSION_FIELD_ID:I = 0x2

.field private static final VERSION_STRING_FIELD_ID:I = 0x3

.field private static sStatsd:Landroid/os/IStatsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation
.end field

.field private static final sStatsdLock:Ljava/lang/Object;

.field private static sThermalService:Landroid/os/IThermalService;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBaseDir:Ljava/io/File;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsHelperTimestampMs:J

.field private final mContext:Landroid/content/Context;

.field private mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field private mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field private mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field private mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field private final mDeathTimeMillis:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugElapsedClockPreviousValue:J

.field private mDebugElapsedClockPullCount:J

.field private mDebugFailingElapsedClockPreviousValue:J

.field private mDebugFailingElapsedClockPullCount:J

.field private final mDeletedFiles:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mNetworkStatsService:Landroid/net/INetworkStatsService;

.field private final mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private final mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

.field private mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 184
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    .line 221
    const-string v2, "/system/bin/statsd"

    const-string v3, "/system/bin/surfaceflinger"

    const-string v4, "/system/bin/apexd"

    const-string v5, "/system/bin/audioserver"

    const-string v6, "/system/bin/cameraserver"

    const-string v7, "/system/bin/drmserver"

    const-string v8, "/system/bin/healthd"

    const-string v9, "/system/bin/incidentd"

    const-string v10, "/system/bin/installd"

    const-string v11, "/system/bin/lmkd"

    const-string v12, "/system/bin/logd"

    const-string/jumbo v13, "media.codec"

    const-string/jumbo v14, "media.extractor"

    const-string/jumbo v15, "media.metrics"

    const-string v16, "/system/bin/mediadrmserver"

    const-string v17, "/system/bin/mediaserver"

    const-string v18, "/system/bin/performanced"

    const-string v19, "/system/bin/tombstoned"

    const-string v20, "/system/bin/traced"

    const-string v21, "/system/bin/traced_probes"

    const-string/jumbo v22, "webview_zygote"

    const-string/jumbo v23, "zygote"

    const-string/jumbo v24, "zygote64"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 308
    invoke-direct {p0}, Landroid/os/IStatsCompanionService$Stub;-><init>()V

    .line 262
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 263
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 264
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 268
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 269
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 271
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 272
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 279
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 282
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 284
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 286
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 288
    new-instance v1, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v1}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 293
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    .line 294
    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    .line 295
    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    .line 296
    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    .line 297
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 299
    const-wide/16 v1, -0x3e8

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    .line 302
    new-instance v1, Ljava/io/File;

    .line 303
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "stats_companion"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    .line 304
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 1614
    nop

    .line 1615
    const-string/jumbo v1, "procstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    .line 309
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 310
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 311
    nop

    .line 312
    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 311
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 313
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 314
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/stats/StatsCompanionService$1;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-direct {v1}, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    .line 337
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    .line 339
    .local v2, "numClusters":I
    new-array v3, v2, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "firstCpuOfCluster":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 342
    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v5

    .line 343
    .local v5, "numSpeedSteps":I
    iget-object v6, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v7, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v7, v3, v5}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v7, v6, v4

    .line 345
    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 341
    .end local v5    # "numSpeedSteps":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    .end local v4    # "i":I
    :cond_0
    const-string/jumbo v4, "thermalservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 352
    .local v4, "b":Landroid/os/IBinder;
    const-string v5, "StatsCompanionService"

    if-eqz v4, :cond_1

    .line 353
    invoke-static {v4}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v6

    sput-object v6, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    .line 355
    :try_start_0
    sget-object v6, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    new-instance v7, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;

    invoke-direct {v7, v0}, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-interface {v6, v7}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 357
    const-string/jumbo v6, "register thermal listener successfully"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 358
    :catch_0
    move-exception v6

    .line 360
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "register thermal listener error"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 363
    :cond_1
    const-string v6, "cannot find thermalservice, no throttling push notifications"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_2
    new-instance v6, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v6}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 368
    .local v6, "request":Landroid/net/NetworkRequest;
    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 369
    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 370
    .local v7, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v8, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;

    invoke-direct {v8, v0}, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-virtual {v7, v6, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 372
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 374
    new-instance v5, Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/server/stats/StatsCompanionService$CompanionHandler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    .line 376
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 377
    invoke-static {v5}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 378
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 179
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 179
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100()J
    .locals 2

    .line 179
    sget-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 179
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/IStatsManager;
    .locals 1

    .line 179
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .locals 0
    .param p0, "x0"    # Landroid/os/IStatsManager;

    .line 179
    sput-object p0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/IStatsManager;
    .locals 1

    .line 179
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 179
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 179
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->systemReady()V

    return-void
.end method

.method private addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    .locals 15
    .param p1, "tag"    # I
    .param p3, "stats"    # Landroid/net/NetworkStats;
    .param p4, "withFGBG"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Landroid/net/NetworkStats;",
            "Z)V"
        }
    .end annotation

    .line 777
    .local p2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkStats;->size()I

    move-result v0

    .line 778
    .local v0, "size":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 779
    .local v7, "elapsedNanos":J
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    .line 780
    .local v9, "wallClockNanos":J
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v11, v1

    .line 781
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    move v12, v1

    .local v12, "j":I
    :goto_0
    if-ge v12, v0, :cond_1

    .line 782
    move-object/from16 v13, p3

    invoke-virtual {v13, v12, v11}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 783
    new-instance v14, Landroid/os/StatsLogEventWrapper;

    move-object v1, v14

    move/from16 v2, p1

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 784
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    iget v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 785
    if-eqz p4, :cond_0

    .line 786
    iget v2, v11, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 788
    :cond_0
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 789
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 790
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 791
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 792
    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v1    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .line 794
    .end local v12    # "j":I
    return-void
.end method

.method private static anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I
    .locals 4
    .param p0, "memoryStat"    # Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 1230
    iget-wide v0, p0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->anonRssInBytes:J

    iget-wide v2, p0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 5
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 835
    const-string v0, "StatsCompanionService"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 836
    return-object v1

    .line 840
    :cond_0
    const-wide/16 v2, 0x7d0

    .line 841
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 842
    .local v2, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 844
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 846
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v4, "controller_activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 848
    .local v3, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v3, :cond_1

    .line 849
    return-object v3

    .line 852
    .end local v3    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    nop

    .end local v2    # "result":Landroid/os/SynchronousResultReceiver$Result;
    goto :goto_0

    .line 853
    :catch_0
    move-exception v2

    .line 854
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-object v1
.end method

.method private enforceCallingPermission()V
    .locals 3

    .line 2515
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2516
    return-void

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.STATSCOMPANION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    return-void
.end method

.method private declared-synchronized fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 3

    monitor-enter p0

    .line 1141
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1142
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1143
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v1, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 1146
    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1148
    .end local v1    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    .end local p0    # "this":Lcom/android/server/stats/StatsCompanionService;
    :cond_0
    :try_start_1
    const-string v1, "StatsCompanionService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1140
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static fetchStatsdService()Landroid/os/IStatsManager;
    .locals 1

    .line 2527
    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method private forgetEverythingLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "StatsCompanionService.sStatsdLock"
        }
    .end annotation

    .line 2669
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 2670
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2671
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2672
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2673
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelAnomalyAlarm()V

    .line 2674
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelPullingAlarm()V

    .line 2676
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2677
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2678
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-eqz v0, :cond_0

    .line 2679
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2682
    :cond_0
    const-class v1, Lcom/android/internal/os/LooperStats;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats;

    .line 2683
    .local v1, "looperStats":Lcom/android/internal/os/LooperStats;
    if-eqz v1, :cond_1

    .line 2684
    invoke-virtual {v1}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2686
    :cond_1
    return-void
.end method

.method private getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 8

    .line 1710
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1714
    .local v2, "callingToken":J
    :try_start_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1717
    nop

    .line 1718
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1716
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1720
    .end local v2    # "callingToken":J
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1721
    .local v2, "currentTime":J
    iget-wide v4, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 1725
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 1726
    iput-wide v2, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method private final informAllUidsLocked(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    const-string v0, "StatsCompanionService"

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 466
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 467
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 474
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    .local v5, "fds":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 479
    sget-object v6, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v6, v8}, Landroid/os/IStatsManager;->informAllUidData(Landroid/os/ParcelFileDescriptor;)V

    .line 481
    :try_start_1
    aget-object v6, v5, v7

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    goto :goto_0

    .line 482
    :catch_0
    move-exception v6

    .line 483
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Failed to close the read side of the pipe."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    aget-object v0, v5, v3

    .line 486
    .local v0, "writeFd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v6, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;

    invoke-direct {v6, v0, v4, v2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void

    .line 475
    .end local v0    # "writeFd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 476
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "Failed to create a pipe to send uid map data."

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    return-void
.end method

.method static synthetic lambda$informAllUidsLocked$0(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 16
    .param p0, "writeFd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "users"    # Ljava/util/List;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 487
    move-object/from16 v1, p2

    const-string v2, ""

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 489
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 490
    .local v5, "output":Landroid/util/proto/ProtoOutputStream;
    const/4 v0, 0x0

    .line 492
    .local v0, "numRecords":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 493
    .local v7, "profile":Landroid/content/pm/UserInfo;
    const v8, 0x402000

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 494
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    .line 496
    .local v8, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v9, 0x0

    move v10, v0

    .end local v0    # "numRecords":I
    .local v9, "j":I
    .local v10, "numRecords":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 497
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 500
    :try_start_1
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .local v0, "installer":Ljava/lang/String;
    goto :goto_2

    .line 501
    .end local v0    # "installer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v2

    .line 504
    .local v0, "installer":Ljava/lang/String;
    :goto_2
    const-wide v11, 0x20b00000001L

    .line 505
    :try_start_2
    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 508
    .local v11, "applicationInfoToken":J
    const-wide v13, 0x10500000001L

    .line 510
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 508
    invoke-virtual {v5, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 511
    nop

    .line 513
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    .line 511
    move-object v15, v2

    const-wide v1, 0x10300000002L

    invoke-virtual {v5, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 514
    const-wide v1, 0x10900000003L

    .line 516
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 514
    invoke-virtual {v5, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 517
    const-wide v1, 0x10900000004L

    .line 519
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 517
    invoke-virtual {v5, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 520
    const-wide v1, 0x10900000005L

    .line 523
    if-nez v0, :cond_0

    move-object v13, v15

    goto :goto_3

    :cond_0
    move-object v13, v0

    .line 520
    :goto_3
    invoke-virtual {v5, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 524
    add-int/lit8 v10, v10, 0x1

    .line 525
    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4

    .line 497
    .end local v0    # "installer":Ljava/lang/String;
    .end local v11    # "applicationInfoToken":J
    :cond_1
    move-object v15, v2

    .line 496
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-object v2, v15

    goto/16 :goto_1

    :cond_2
    move-object v15, v2

    .line 528
    .end local v7    # "profile":Landroid/content/pm/UserInfo;
    .end local v8    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "j":I
    move-object/from16 v1, p2

    move v0, v10

    goto/16 :goto_0

    .line 529
    .end local v10    # "numRecords":I
    .local v0, "numRecords":I
    :cond_3
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    .end local v0    # "numRecords":I
    .end local v5    # "output":Landroid/util/proto/ProtoOutputStream;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 535
    nop

    .line 536
    return-void

    .line 534
    :catchall_0
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method static synthetic lambda$pullDiskIo$6(IJJLjava/util/List;IJJJJJJJJJJ)V
    .locals 16
    .param p0, "tagId"    # I
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .param p5, "pulledData"    # Ljava/util/List;
    .param p6, "uid"    # I
    .param p7, "fgCharsRead"    # J
    .param p9, "fgCharsWrite"    # J
    .param p11, "fgBytesRead"    # J
    .param p13, "fgBytesWrite"    # J
    .param p15, "bgCharsRead"    # J
    .param p17, "bgCharsWrite"    # J
    .param p19, "bgBytesRead"    # J
    .param p21, "bgBytesWrite"    # J
    .param p23, "fgFsync"    # J
    .param p25, "bgFsync"    # J

    .line 1786
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1788
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1789
    move-wide/from16 v2, p7

    invoke-virtual {v0, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1790
    move-wide/from16 v4, p9

    invoke-virtual {v0, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1791
    move-wide/from16 v6, p11

    invoke-virtual {v0, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1792
    move-wide/from16 v8, p13

    invoke-virtual {v0, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1793
    move-wide/from16 v10, p15

    invoke-virtual {v0, v10, v11}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1794
    move-wide/from16 v12, p17

    invoke-virtual {v0, v12, v13}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1795
    move-wide/from16 v14, p19

    invoke-virtual {v0, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1796
    move-wide/from16 v1, p21

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1797
    move-wide/from16 v1, p23

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1798
    move-wide/from16 v1, p25

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1799
    move-object/from16 v3, p5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuActiveTime$4(IJJLjava/util/List;ILjava/lang/Long;)V
    .locals 7
    .param p0, "tagId"    # I
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .param p5, "pulledData"    # Ljava/util/List;
    .param p6, "uid"    # I
    .param p7, "cpuActiveTimesMs"    # Ljava/lang/Long;

    .line 1056
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1057
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1058
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1059
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuClusterTime$3(IJJLjava/util/List;I[J)V
    .locals 8
    .param p0, "tagId"    # I
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .param p5, "pulledData"    # Ljava/util/List;
    .param p6, "uid"    # I
    .param p7, "cpuClusterTimesMs"    # [J

    .line 1041
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_0

    .line 1042
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1044
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v1, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1045
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1046
    aget-wide v2, p7, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1047
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    .end local v1    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1049
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuFreqTime$2(IJJLjava/util/List;I[J)V
    .locals 8
    .param p0, "tagId"    # I
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .param p5, "pulledData"    # Ljava/util/List;
    .param p6, "uid"    # I
    .param p7, "cpuFreqTimeMs"    # [J

    .line 1024
    const/4 v0, 0x0

    .local v0, "freqIndex":I
    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_1

    .line 1025
    aget-wide v1, p7, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1026
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1028
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v1, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1029
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1030
    aget-wide v2, p7, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1031
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    .end local v1    # "e":Landroid/os/StatsLogEventWrapper;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    .end local v0    # "freqIndex":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuTime$1(IJJLjava/util/List;I[J)V
    .locals 11
    .param p0, "tagId"    # I
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .param p5, "pulledData"    # Ljava/util/List;
    .param p6, "uid"    # I
    .param p7, "timesUs"    # [J

    .line 1011
    const/4 v0, 0x0

    aget-wide v0, p7, v0

    .local v0, "userTimeUs":J
    const/4 v2, 0x1

    aget-wide v2, p7, v2

    .line 1012
    .local v2, "systemTimeUs":J
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1013
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    move/from16 v5, p6

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1014
    invoke-virtual {v4, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1015
    invoke-virtual {v4, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1016
    move-object/from16 v6, p5

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    return-void
.end method

.method static synthetic lambda$readProcStatsHighWaterMark$5(ILjava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "section"    # I
    .param p1, "d"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 1597
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private milliAmpHrsToNanoAmpSecs(D)J
    .locals 6
    .param p1, "mAh"    # D

    .line 1732
    const-wide v0, 0xd693a400L

    .line 1733
    .local v0, "MILLI_AMP_HR_TO_NANO_AMP_SECS":J
    const-wide v2, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private pullAppOps(JJLjava/util/List;)V
    .locals 17
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2037
    .local p5, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2039
    .local v2, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2041
    .local v0, "appOps":Landroid/app/AppOpsManager;
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2042
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 2044
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 2045
    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 2046
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    iget-object v6, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/stats/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;

    invoke-direct {v7, v4}, Lcom/android/server/stats/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2048
    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 2051
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    new-instance v13, Landroid/os/StatsLogEventWrapper;

    const/16 v8, 0x274c

    move-object v7, v13

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v7, v13

    .line 2054
    .local v7, "e":Landroid/os/StatsLogEventWrapper;
    const/4 v8, 0x0

    move v9, v8

    .local v9, "uidIdx":I
    :goto_0
    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 2055
    invoke-virtual {v6, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v10

    .line 2056
    .local v10, "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v11

    .line 2057
    .local v11, "uid":I
    move v12, v8

    .local v12, "pkgIdx":I
    :goto_1
    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 2058
    invoke-virtual {v10, v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v13

    .line 2059
    .local v13, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    move v14, v8

    .local v14, "opIdx":I
    :goto_2
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 2060
    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v15

    .line 2061
    .local v15, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {v7, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2062
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2064
    const/16 v8, 0xd

    move-object/from16 v16, v0

    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .local v16, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2065
    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2066
    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2067
    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2068
    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2069
    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2070
    move-object/from16 v1, p5

    :try_start_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    nop

    .end local v15    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_2

    .line 2074
    .end local v4    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v5    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v6    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7    # "e":Landroid/os/StatsLogEventWrapper;
    .end local v9    # "uidIdx":I
    .end local v10    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v11    # "uid":I
    .end local v12    # "pkgIdx":I
    .end local v13    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v14    # "opIdx":I
    .end local v16    # "appOps":Landroid/app/AppOpsManager;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2059
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v4    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v5    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .restart local v6    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v7    # "e":Landroid/os/StatsLogEventWrapper;
    .restart local v9    # "uidIdx":I
    .restart local v10    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .restart local v11    # "uid":I
    .restart local v12    # "pkgIdx":I
    .restart local v13    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .restart local v14    # "opIdx":I
    :cond_0
    move-object/from16 v1, p5

    move-object/from16 v16, v0

    .line 2057
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v13    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v14    # "opIdx":I
    .restart local v16    # "appOps":Landroid/app/AppOpsManager;
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto :goto_1

    .end local v16    # "appOps":Landroid/app/AppOpsManager;
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    :cond_1
    move-object/from16 v1, p5

    move-object/from16 v16, v0

    .line 2054
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v10    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v11    # "uid":I
    .end local v12    # "pkgIdx":I
    .restart local v16    # "appOps":Landroid/app/AppOpsManager;
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .end local v16    # "appOps":Landroid/app/AppOpsManager;
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    :cond_2
    move-object/from16 v1, p5

    move-object/from16 v16, v0

    .line 2077
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v5    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v6    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7    # "e":Landroid/os/StatsLogEventWrapper;
    .end local v9    # "uidIdx":I
    goto :goto_4

    .line 2074
    :catchall_1
    move-exception v0

    move-object/from16 v1, p5

    .line 2075
    .local v0, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_2
    const-string v4, "StatsCompanionService"

    const-string v5, "Could not read appops"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2077
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    nop

    .line 2079
    return-void

    .line 2077
    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullAppSize(IJJLjava/util/List;)V
    .locals 20
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1455
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string v1, "StatsCompanionService"

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1458
    .local v6, "cache_time":J
    const-string/jumbo v3, "packageNames"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1459
    .local v3, "pkg_names":Lorg/json/JSONArray;
    const-string v8, "appSizes"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1460
    .local v8, "app_sizes":Lorg/json/JSONArray;
    const-string v9, "appDataSizes"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1461
    .local v9, "app_data_sizes":Lorg/json/JSONArray;
    const-string v10, "cacheSizes"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1463
    .local v10, "app_cache_sizes":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 1464
    .local v11, "length":I
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v11, :cond_2

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v11, :cond_2

    .line 1465
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-eq v12, v11, :cond_0

    move-object/from16 v14, p6

    goto :goto_1

    .line 1469
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 1470
    new-instance v19, Landroid/os/StatsLogEventWrapper;

    move-object/from16 v13, v19

    move/from16 v14, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object/from16 v13, v19

    .line 1472
    .local v13, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v8, v12, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1474
    invoke-virtual {v9, v12, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1475
    invoke-virtual {v10, v12, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1476
    invoke-virtual {v13, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1477
    move-object/from16 v14, p6

    :try_start_1
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    nop

    .end local v13    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v14, p6

    .line 1481
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "pkg_names":Lorg/json/JSONArray;
    .end local v6    # "cache_time":J
    .end local v8    # "app_sizes":Lorg/json/JSONArray;
    .end local v9    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v10    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v11    # "length":I
    .end local v12    # "i":I
    goto :goto_3

    .line 1464
    .restart local v0    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "pkg_names":Lorg/json/JSONArray;
    .restart local v6    # "cache_time":J
    .restart local v8    # "app_sizes":Lorg/json/JSONArray;
    .restart local v9    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v10    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v11    # "length":I
    :cond_2
    move-object/from16 v14, p6

    .line 1466
    :goto_1
    const-string v4, "formatting error in diskstats cache file!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1467
    return-void

    .line 1479
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "pkg_names":Lorg/json/JSONArray;
    .end local v6    # "cache_time":J
    .end local v8    # "app_sizes":Lorg/json/JSONArray;
    .end local v9    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v10    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v11    # "length":I
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v14, p6

    .line 1480
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private pullAppsOnExternalStorageInfo(IJJLjava/util/List;)V
    .locals 17
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2191
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2192
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 2193
    .local v2, "storage":Landroid/os/storage/StorageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 2194
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 2195
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2196
    .local v6, "storageUuid":Ljava/util/UUID;
    if-eqz v6, :cond_6

    .line 2197
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 2198
    .local v7, "volumeInfo":Landroid/os/storage/VolumeInfo;
    if-eqz v7, :cond_5

    .line 2199
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    .line 2200
    .local v8, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v8, :cond_4

    .line 2201
    const/4 v9, -0x1

    .line 2202
    .local v9, "externalStorageType":I
    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2203
    const/4 v9, 0x1

    goto :goto_1

    .line 2204
    :cond_0
    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2205
    const/4 v9, 0x2

    goto :goto_1

    .line 2206
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2207
    const/4 v9, 0x3

    .line 2210
    :cond_2
    :goto_1
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 2211
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v11, v10

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2213
    .local v10, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v10, v9}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2214
    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2215
    move-object/from16 v11, p6

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2210
    .end local v10    # "e":Landroid/os/StatsLogEventWrapper;
    :cond_3
    move-object/from16 v11, p6

    goto :goto_2

    .line 2200
    .end local v9    # "externalStorageType":I
    :cond_4
    move-object/from16 v11, p6

    goto :goto_2

    .line 2198
    .end local v8    # "diskInfo":Landroid/os/storage/DiskInfo;
    :cond_5
    move-object/from16 v11, p6

    goto :goto_2

    .line 2196
    .end local v7    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    :cond_6
    move-object/from16 v11, p6

    .line 2220
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "storageUuid":Ljava/util/UUID;
    :goto_2
    goto :goto_0

    .line 2221
    :cond_7
    move-object/from16 v11, p6

    return-void
.end method

.method private pullBinderCallsStats(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1294
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1295
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1296
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-eqz v0, :cond_1

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 1301
    .local v1, "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 1302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1303
    .local v3, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1304
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    iget v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1305
    iget-object v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1306
    iget-object v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1307
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1308
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1309
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1310
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1311
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1312
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1313
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1314
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1315
    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1316
    iget-boolean v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1317
    iget v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1318
    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    .end local v3    # "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1320
    :cond_0
    move-object/from16 v5, p6

    return-void

    .line 1297
    .end local v1    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_1
    move-object/from16 v5, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "binderStats is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullBinderCallsStatsExceptions(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1325
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1326
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 1327
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-eqz v0, :cond_1

    .line 1331
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 1334
    .local v1, "exceptionStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1335
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1336
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1337
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1338
    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1340
    :cond_0
    move-object/from16 v5, p6

    return-void

    .line 1328
    .end local v1    # "exceptionStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    move-object/from16 v5, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "binderStats is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullBluetoothActivityInfo(IJJLjava/util/List;)V
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1129
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1130
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1131
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1132
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1133
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1134
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1135
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1136
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1137
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    return-void
.end method

.method private pullBluetoothBytesTransfer(IJJLjava/util/List;)V
    .locals 12
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 952
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 953
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 954
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 955
    .local v4, "traffic":Landroid/bluetooth/UidTraffic;
    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 957
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 958
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 959
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 960
    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v4    # "traffic":Landroid/bluetooth/UidTraffic;
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p6

    goto :goto_1

    .line 953
    :cond_1
    move-object/from16 v6, p6

    .line 963
    :goto_1
    return-void
.end method

.method private pullBuildInformation(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1696
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1697
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1698
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1699
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1700
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1701
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1702
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1703
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1704
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1705
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1706
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    return-void
.end method

.method private pullCategorySize(IJJLjava/util/List;)V
    .locals 16
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v1, p6

    .line 1487
    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1491
    .local v6, "cacheTime":J
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v8, v3

    move/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1492
    .local v3, "e":Landroid/os/StatsLogEventWrapper;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1493
    const-string v8, "appSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1494
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1495
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1498
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1499
    const-string v8, "appDataSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1500
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1501
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1504
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1505
    const-string v8, "cacheSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1506
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1507
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1510
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1511
    const-string/jumbo v8, "photosSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1512
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1513
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1516
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1517
    const-string/jumbo v8, "videosSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1518
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1519
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1522
    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1523
    const-string v8, "audioSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1524
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1525
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1528
    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1529
    const-string v8, "downloadsSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1530
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1531
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1534
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1535
    const-string/jumbo v8, "systemSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1536
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1537
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    .line 1540
    const/16 v8, 0x9

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1541
    const-string/jumbo v8, "otherSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1542
    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1543
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    nop

    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "e":Landroid/os/StatsLogEventWrapper;
    .end local v6    # "cacheTime":J
    goto :goto_0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StatsCompanionService"

    const-string v3, "exception reading diskstats cache file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private pullCoolingDevices(IJJLjava/util/List;)V
    .locals 12
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1903
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1905
    .local v1, "callingToken":J
    :try_start_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()Ljava/util/List;

    move-result-object v0

    .line 1906
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CoolingDevice;

    .line 1907
    .local v4, "device":Landroid/os/CoolingDevice;
    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v5, v11

    .line 1909
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v4}, Landroid/os/CoolingDevice;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1910
    invoke-virtual {v4}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v4}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1912
    move-object/from16 v6, p6

    :try_start_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1913
    nop

    .end local v4    # "device":Landroid/os/CoolingDevice;
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1914
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1906
    .restart local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    :cond_0
    move-object/from16 v6, p6

    .line 1918
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_3

    .line 1914
    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    .line 1916
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1918
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1919
    nop

    .line 1920
    return-void

    .line 1918
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullCpuTimePerFreq(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 992
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_0
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 993
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v2

    .line 994
    .local v2, "clusterTimeMs":[J
    if-eqz v2, :cond_1

    .line 995
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "speed":I
    :goto_1
    if-ltz v3, :cond_0

    .line 996
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 998
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v4, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 999
    invoke-virtual {v4, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1000
    aget-wide v5, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1001
    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    move-object/from16 v5, p6

    goto :goto_2

    .line 994
    .end local v3    # "speed":I
    :cond_1
    move-object/from16 v5, p6

    .line 992
    .end local v2    # "clusterTimeMs":[J
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v5, p6

    .line 1005
    .end local v0    # "cluster":I
    return-void
.end method

.method private pullCpuTimePerThreadFreq(IJJLjava/util/List;)V
    .locals 18
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1826
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    if-eqz v1, :cond_7

    .line 1829
    nop

    .line 1830
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    .line 1831
    .local v1, "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    if-eqz v1, :cond_6

    .line 1834
    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v2

    .line 1835
    .local v2, "cpuFrequencies":[I
    array-length v3, v2

    const-string v4, "StatsCompanionService"

    const/16 v5, 0x8

    if-gt v3, v5, :cond_5

    .line 1841
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1842
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 1843
    .local v6, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    iget-object v7, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 1845
    .local v7, "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1846
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 1847
    .local v9, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    iget-object v10, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v10, v10

    array-length v11, v2

    if-ne v10, v11, :cond_2

    .line 1855
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v12, v10

    move/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v12 .. v17}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1857
    .local v10, "e":Landroid/os/StatsLogEventWrapper;
    iget v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1858
    iget v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1859
    iget v11, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1860
    iget-object v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1861
    iget-object v11, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1862
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    if-ge v11, v5, :cond_1

    .line 1863
    array-length v12, v2

    if-ge v11, v12, :cond_0

    .line 1864
    aget v12, v2, v11

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1865
    iget-object v12, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v12, v12, v11

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    goto :goto_3

    .line 1870
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1871
    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1862
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1874
    .end local v11    # "k":I
    :cond_1
    move-object/from16 v11, p6

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1845
    .end local v9    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .end local v10    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1848
    .restart local v9    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    :cond_2
    move-object/from16 v11, p6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected number of usage times, expected "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v2

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but got "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1851
    .local v5, "message":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1845
    .end local v5    # "message":Ljava/lang/String;
    .end local v9    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    :cond_3
    move-object/from16 v11, p6

    .line 1841
    .end local v6    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .end local v7    # "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    .end local v8    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v11, p6

    .line 1877
    .end local v3    # "i":I
    return-void

    .line 1836
    :cond_5
    move-object/from16 v11, p6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1838
    .local v3, "message":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1832
    .end local v2    # "cpuFrequencies":[I
    .end local v3    # "message":Ljava/lang/String;
    :cond_6
    move-object/from16 v11, p6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "processCpuUsages is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1827
    .end local v1    # "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    :cond_7
    move-object/from16 v11, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mKernelCpuThreadReader is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullDangerousPermissionState(JJLjava/util/List;)V
    .locals 25
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1974
    .local p5, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1976
    .local v2, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    .line 1978
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 1980
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    .line 1981
    .local v6, "numUsers":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "userNum":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 1982
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    move-object v8, v0

    .line 1984
    .local v8, "user":Landroid/os/UserHandle;
    const/16 v0, 0x1000

    .line 1985
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 1984
    invoke-virtual {v4, v0, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    .line 1987
    .local v9, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move v10, v0

    .line 1988
    .local v10, "numPkgs":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "pkgNum":I
    :goto_1
    if-ge v11, v10, :cond_4

    .line 1989
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v12, v0

    .line 1991
    .local v12, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1992
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    goto/16 :goto_5

    .line 1995
    :cond_0
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    move v13, v0

    .line 1996
    .local v13, "numPerms":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "permNum":I
    :goto_2
    if-ge v14, v13, :cond_3

    .line 1997
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v0

    .line 2000
    .local v15, "permName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2002
    .local v16, "permissionFlags":I
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v4, v15, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    .line 2003
    .local v17, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2004
    invoke-virtual {v4, v15, v0, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2008
    .end local v16    # "permissionFlags":I
    .local v0, "permissionFlags":I
    nop

    .line 2010
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    move-object/from16 v18, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    .line 2011
    move-object/from16 v4, p5

    goto :goto_4

    .line 2014
    :cond_1
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/16 v20, 0x2742

    move-object/from16 v19, v1

    move-wide/from16 v21, p1

    move-wide/from16 v23, p3

    invoke-direct/range {v19 .. v24}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2017
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v1, v15}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2018
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2019
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2020
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v14

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2022
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2024
    move-object/from16 v4, p5

    :try_start_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2028
    .end local v0    # "permissionFlags":I
    .end local v1    # "e":Landroid/os/StatsLogEventWrapper;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "numUsers":I
    .end local v7    # "userNum":I
    .end local v8    # "user":Landroid/os/UserHandle;
    .end local v9    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "numPkgs":I
    .end local v11    # "pkgNum":I
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "numPerms":I
    .end local v14    # "permNum":I
    .end local v15    # "permName":Ljava/lang/String;
    .end local v17    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 2006
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "numUsers":I
    .restart local v7    # "userNum":I
    .restart local v8    # "user":Landroid/os/UserHandle;
    .restart local v9    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "numPkgs":I
    .restart local v11    # "pkgNum":I
    .restart local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v13    # "numPerms":I
    .restart local v14    # "permNum":I
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v16    # "permissionFlags":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v4, p5

    .line 2007
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    nop

    .line 1996
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v16    # "permissionFlags":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto :goto_2

    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    .line 1988
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "numPerms":I
    .end local v14    # "permNum":I
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_1

    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    .line 1981
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "user":Landroid/os/UserHandle;
    .end local v9    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "numPkgs":I
    .end local v11    # "pkgNum":I
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_0

    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    .line 2031
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "numUsers":I
    .end local v7    # "userNum":I
    goto :goto_7

    .line 2028
    :catchall_1
    move-exception v0

    move-object/from16 v4, p5

    .line 2029
    .local v0, "t":Ljava/lang/Throwable;
    :goto_6
    :try_start_4
    const-string v1, "StatsCompanionService"

    const-string v5, "Could not read permissions"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2031
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2032
    nop

    .line 2033
    return-void

    .line 2031
    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullDebugElapsedClock(IJJLjava/util/List;)V
    .locals 17
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1924
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1925
    .local v2, "elapsedMillis":J
    iget-wide v4, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1926
    goto :goto_0

    :cond_0
    sub-long v6, v2, v4

    :goto_0
    move-wide v4, v6

    .line 1928
    .local v4, "clockDiffMillis":J
    new-instance v12, Landroid/os/StatsLogEventWrapper;

    move-object v6, v12

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1929
    .local v6, "e":Landroid/os/StatsLogEventWrapper;
    iget-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1930
    invoke-virtual {v6, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1932
    invoke-virtual {v6, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1933
    invoke-virtual {v6, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1934
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1935
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1937
    iget-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    const-wide/16 v9, 0x2

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 1938
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v11, v7

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1939
    .local v7, "e2":Landroid/os/StatsLogEventWrapper;
    iget-wide v11, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    invoke-virtual {v7, v11, v12}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1940
    invoke-virtual {v7, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1942
    invoke-virtual {v7, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1943
    invoke-virtual {v7, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1944
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1945
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1948
    .end local v7    # "e2":Landroid/os/StatsLogEventWrapper;
    :cond_1
    iget-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    .line 1949
    iput-wide v2, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    .line 1950
    return-void
.end method

.method private pullDebugFailingElapsedClock(IJJLjava/util/List;)V
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1954
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1955
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1957
    .local v1, "elapsedMillis":J
    iget-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v5, 0x5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1962
    iget-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    invoke-virtual {v0, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1963
    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1965
    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1966
    iget-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 1967
    goto :goto_0

    :cond_0
    sub-long v5, v1, v3

    .line 1966
    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1968
    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    .line 1969
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1970
    return-void

    .line 1958
    :cond_1
    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    .line 1959
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failing debug elapsed clock"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private pullDeviceCalculatedPowerBlameOther(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1763
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 1764
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v0, :cond_0

    .line 1765
    return-void

    .line 1767
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 1768
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    .line 1769
    goto :goto_0

    .line 1771
    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_2

    .line 1772
    goto :goto_0

    .line 1774
    :cond_2
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v5, v3

    move v6, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1775
    .local v3, "e":Landroid/os/StatsLogEventWrapper;
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1776
    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v6, p0

    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1777
    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v3    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1779
    :cond_3
    move-object v6, p0

    move-object/from16 v4, p6

    return-void
.end method

.method private pullDeviceCalculatedPowerBlameUid(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1746
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 1747
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v0, :cond_0

    .line 1748
    return-void

    .line 1750
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 1751
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v3, v4, :cond_1

    .line 1752
    goto :goto_0

    .line 1754
    :cond_1
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v5, v3

    move v6, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1755
    .local v3, "e":Landroid/os/StatsLogEventWrapper;
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1756
    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v6, p0

    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1757
    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1758
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v3    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1759
    :cond_2
    move-object v6, p0

    move-object/from16 v4, p6

    return-void
.end method

.method private pullDeviceCalculatedPowerUse(IJJLjava/util/List;)V
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1738
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    .line 1739
    .local v0, "bsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1740
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1741
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1742
    return-void
.end method

.method private pullDirectoryUsage(IJJLjava/util/List;)V
    .locals 13
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1429
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p6

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v1, "statFsData":Landroid/os/StatFs;
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v2, "statFsSystem":Landroid/os/StatFs;
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v3, "statFsCache":Landroid/os/StatFs;
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1434
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1435
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1436
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1437
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    move-object v7, v5

    move v8, p1

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v4, v5

    .line 1440
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1441
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1442
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1443
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v4, v5

    .line 1446
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1447
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1448
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1449
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    return-void
.end method

.method private pullDiskIo(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1783
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    .line 1801
    return-void
.end method

.method private pullDiskStats(IJJLjava/util/List;)V
    .locals 19
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1375
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string/jumbo v1, "storaged not found"

    const/16 v0, 0x200

    new-array v2, v0, [B

    .line 1376
    .local v2, "junk":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1378
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/statsdperftest.tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 1379
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x0

    .line 1380
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1382
    .local v5, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1384
    .local v6, "before":J
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 1385
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1393
    :cond_1
    :goto_1
    goto :goto_4

    .line 1391
    :catch_0
    move-exception v0

    .line 1394
    goto :goto_4

    .line 1389
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1390
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1391
    :catch_1
    move-exception v0

    goto :goto_3

    .line 1393
    :cond_2
    :goto_2
    nop

    :goto_3
    throw v1

    .line 1386
    :catch_2
    move-exception v0

    .line 1387
    .local v0, "e":Ljava/io/IOException;
    move-object v5, v0

    .line 1390
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1396
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 1397
    .local v8, "latency":J
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1399
    :cond_3
    const-string v10, "StatsCompanionService"

    if-eqz v5, :cond_4

    .line 1400
    const-string v0, "Error performing diskstats latency test"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-wide/16 v8, -0x1

    .line 1404
    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v11

    .line 1407
    .local v11, "fileBased":Z
    const/4 v12, -0x1

    .line 1409
    .local v12, "writeSpeed":I
    :try_start_4
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1410
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_5

    .line 1411
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_5
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v13

    .line 1414
    .local v13, "storaged":Landroid/os/IStoraged;
    invoke-interface {v13}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move v12, v1

    .line 1417
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v13    # "storaged":Landroid/os/IStoraged;
    goto :goto_5

    .line 1415
    :catch_3
    move-exception v0

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    move-object v13, v0

    move/from16 v14, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1421
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1422
    invoke-virtual {v0, v11}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 1423
    invoke-virtual {v0, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1424
    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    return-void
.end method

.method private pullExternalStorageInfo(IJJLjava/util/List;)V
    .locals 16
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2152
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 2153
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_7

    .line 2154
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 2155
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 2156
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    .line 2157
    .local v5, "envState":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    .line 2158
    .local v6, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v6, :cond_5

    .line 2159
    const-string/jumbo v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2161
    const/4 v7, 0x3

    .line 2162
    .local v7, "volumeType":I
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-nez v8, :cond_0

    .line 2163
    const/4 v7, 0x1

    goto :goto_1

    .line 2164
    :cond_0
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2165
    const/4 v7, 0x2

    .line 2170
    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2171
    const/4 v8, 0x1

    .local v8, "externalStorageType":I
    goto :goto_2

    .line 2172
    .end local v8    # "externalStorageType":I
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2173
    const/4 v8, 0x2

    .restart local v8    # "externalStorageType":I
    goto :goto_2

    .line 2175
    .end local v8    # "externalStorageType":I
    :cond_3
    const/4 v8, 0x3

    .line 2177
    .restart local v8    # "externalStorageType":I
    :goto_2
    new-instance v15, Landroid/os/StatsLogEventWrapper;

    move-object v9, v15

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2179
    .local v9, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v9, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2180
    invoke-virtual {v9, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2181
    iget-wide v10, v6, Landroid/os/storage/DiskInfo;->size:J

    invoke-virtual {v9, v10, v11}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 2182
    move-object/from16 v10, p6

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2159
    .end local v7    # "volumeType":I
    .end local v8    # "externalStorageType":I
    .end local v9    # "e":Landroid/os/StatsLogEventWrapper;
    :cond_4
    move-object/from16 v10, p6

    goto :goto_3

    .line 2158
    :cond_5
    move-object/from16 v10, p6

    .line 2185
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "envState":Ljava/lang/String;
    .end local v6    # "diskInfo":Landroid/os/storage/DiskInfo;
    :goto_3
    goto :goto_0

    .line 2155
    :cond_6
    move-object/from16 v10, p6

    goto :goto_4

    .line 2153
    .end local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :cond_7
    move-object/from16 v10, p6

    .line 2187
    :goto_4
    return-void
.end method

.method private pullFaceSettings(IJJLjava/util/List;)V
    .locals 14
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2225
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2227
    .local v2, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2228
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 2229
    .local v4, "numUsers":I
    const/4 v5, 0x0

    .local v5, "userNum":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 2230
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 2232
    .local v6, "userId":I
    new-instance v13, Landroid/os/StatsLogEventWrapper;

    move-object v7, v13

    move v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v7, v13

    .line 2234
    .local v7, "e":Landroid/os/StatsLogEventWrapper;
    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_keyguard_enabled"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    move v8, v9

    :goto_1
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2237
    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_dismisses_keyguard"

    invoke-static {v8, v11, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2240
    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_attention_required"

    invoke-static {v8, v11, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_3

    :cond_2
    move v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2243
    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_app_enabled"

    invoke-static {v8, v11, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    goto :goto_4

    :cond_3
    move v8, v9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2246
    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_always_require_confirmation"

    invoke-static {v8, v11, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v10

    goto :goto_5

    :cond_4
    move v8, v9

    :goto_5
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 2249
    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_diversity_required"

    invoke-static {v8, v11, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_5

    move v9, v10

    :cond_5
    invoke-virtual {v7, v9}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2253
    move-object/from16 v8, p6

    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2229
    nop

    .end local v6    # "userId":I
    .end local v7    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2256
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "numUsers":I
    .end local v5    # "userNum":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 2229
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "numUsers":I
    .restart local v5    # "userNum":I
    :cond_6
    move-object/from16 v8, p6

    .line 2256
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "numUsers":I
    .end local v5    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2257
    nop

    .line 2258
    return-void

    .line 2256
    :catchall_1
    move-exception v0

    move-object/from16 v8, p6

    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullKernelUidCpuActiveTime(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1055
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$xPc-EMoQkRUC4lkJfxYah3VZObc;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$xPc-EMoQkRUC4lkJfxYah3VZObc;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1061
    return-void
.end method

.method private pullKernelUidCpuClusterTime(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1040
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$8XwH_9_4XyR23VE4UEw0TLmPhXk;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$8XwH_9_4XyR23VE4UEw0TLmPhXk;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1050
    return-void
.end method

.method private pullKernelUidCpuFreqTime(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1023
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1035
    return-void
.end method

.method private pullKernelUidCpuTime(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1010
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$UBm3QCI0bvsnm37DPdPZCp_VPm0;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$UBm3QCI0bvsnm37DPdPZCp_VPm0;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1018
    return-void
.end method

.method private pullKernelWakelock(IJJLjava/util/List;)V
    .locals 13
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 862
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 863
    invoke-virtual {v1, v2}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v1

    .line 864
    .local v1, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    invoke-virtual {v1}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 865
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 866
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 867
    .local v5, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    new-instance v12, Landroid/os/StatsLogEventWrapper;

    move-object v6, v12

    move v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 868
    .local v6, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v6, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 869
    iget v7, v5, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 870
    iget v7, v5, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 871
    iget-wide v7, v5, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 872
    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v6    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 874
    :cond_0
    move-object/from16 v7, p6

    return-void
.end method

.method private pullLooperStats(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1344
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 1345
    .local v0, "looperStats":Lcom/android/internal/os/LooperStats;
    if-eqz v0, :cond_1

    .line 1349
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 1350
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 1351
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 1352
    .local v3, "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1353
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    iget v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1354
    iget-object v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1355
    iget-object v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1356
    iget-object v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1357
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1358
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1359
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1360
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1361
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1362
    iget-boolean v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    .line 1363
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1364
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1365
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1366
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1367
    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1368
    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    .end local v3    # "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1370
    :cond_0
    move-object/from16 v5, p6

    return-void

    .line 1346
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    :cond_1
    move-object/from16 v5, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "looperStats null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullMobileBytesTransfer(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 928
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 930
    .local v1, "token":J
    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    .line 931
    .local v3, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "ifaces":[Ljava/lang/String;
    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 945
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    return-void

    .line 935
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    .line 936
    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    return-void

    .line 940
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    .line 941
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v6, 0x0

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    .end local v3    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v4    # "ifaces":[Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 942
    :catch_0
    move-exception v3

    .line 943
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Pulling netstats for mobile bytes has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 945
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    nop

    .line 947
    return-void

    .line 945
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullMobileBytesTransferByFgBg(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 968
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 970
    .local v1, "token":J
    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    .line 971
    .local v3, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "ifaces":[Ljava/lang/String;
    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 985
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    return-void

    .line 975
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    .line 976
    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    return-void

    .line 979
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 980
    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 979
    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 981
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v6, 0x1

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 985
    .end local v3    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v4    # "ifaces":[Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 982
    :catch_0
    move-exception v3

    .line 983
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Pulling netstats for mobile bytes w/ fg/bg has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 985
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    nop

    .line 987
    return-void

    .line 985
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullModemActivityInfo(IJJLjava/util/List;)V
    .locals 12
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1101
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1102
    .local v2, "token":J
    monitor-enter p0

    .line 1103
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 1106
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1108
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "telephony"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v0, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v4, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1110
    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/telephony/ModemActivityInfo;

    .line 1111
    .local v4, "modemInfo":Landroid/telephony/ModemActivityInfo;
    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1112
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1113
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1114
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1115
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1116
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1117
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1118
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1119
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1120
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1121
    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1122
    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1107
    .end local v0    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v4    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    :cond_1
    move-object/from16 v6, p6

    .line 1124
    :goto_0
    return-void

    .line 1106
    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private pullNativeProcessMemoryState(IJJLjava/util/List;)V
    .locals 14
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1199
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1200
    .local v0, "processNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 1201
    .local v1, "pids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1202
    aget v3, v1, v2

    .line 1203
    .local v3, "pid":I
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v4

    .line 1204
    .local v4, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v4, :cond_0

    .line 1205
    move-object/from16 v8, p6

    goto :goto_1

    .line 1207
    :cond_0
    invoke-static {v3}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 1208
    .local v5, "uid":I
    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v6

    .line 1212
    .local v6, "processName":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1213
    move-object/from16 v8, p6

    goto :goto_1

    .line 1215
    :cond_1
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v8, v7

    move v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1216
    .local v7, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v7, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1217
    invoke-virtual {v7, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1218
    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1219
    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1220
    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1221
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1222
    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1223
    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1224
    invoke-static {v4}, Lcom/android/server/stats/StatsCompanionService;->anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1225
    move-object/from16 v8, p6

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    .end local v3    # "pid":I
    .end local v4    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .end local v5    # "uid":I
    .end local v6    # "processName":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/StatsLogEventWrapper;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p6

    .line 1227
    .end local v2    # "i":I
    return-void
.end method

.method private pullNumBiometricsEnrolled(IIJJLjava/util/List;)V
    .locals 21
    .param p1, "modality"    # I
    .param p2, "tagId"    # I
    .param p3, "elapsedNanos"    # J
    .param p5, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1551
    .local p7, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1552
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1553
    .local v3, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v4, 0x0

    .line 1555
    .local v4, "faceManager":Landroid/hardware/face/FaceManager;
    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1556
    iget-object v5, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1559
    :cond_0
    const-string v5, "android.hardware.biometrics.face"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1560
    iget-object v5, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/hardware/face/FaceManager;

    .line 1563
    :cond_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    if-nez v3, :cond_2

    .line 1564
    return-void

    .line 1566
    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    if-nez v4, :cond_3

    .line 1567
    return-void

    .line 1569
    :cond_3
    iget-object v7, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 1570
    .local v7, "userManager":Landroid/os/UserManager;
    if-nez v7, :cond_4

    .line 1571
    return-void

    .line 1574
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1575
    .local v8, "token":J
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 1576
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 1577
    .local v12, "userId":I
    const/4 v13, 0x0

    .line 1578
    .local v13, "numEnrolled":I
    if-ne v1, v5, :cond_5

    .line 1579
    invoke-virtual {v3, v12}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_1

    .line 1580
    :cond_5
    if-ne v1, v6, :cond_6

    .line 1581
    invoke-virtual {v4, v12}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 1585
    :goto_1
    new-instance v20, Landroid/os/StatsLogEventWrapper;

    move-object/from16 v14, v20

    move/from16 v15, p2

    move-wide/from16 v16, p3

    move-wide/from16 v18, p5

    invoke-direct/range {v14 .. v19}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1586
    .local v14, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v14, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1587
    invoke-virtual {v14, v13}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1588
    move-object/from16 v15, p7

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    .end local v14    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1583
    .restart local v11    # "user":Landroid/content/pm/UserInfo;
    .restart local v12    # "userId":I
    .restart local v13    # "numEnrolled":I
    :cond_6
    move-object/from16 v15, p7

    return-void

    .line 1590
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    :cond_7
    move-object/from16 v15, p7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    return-void
.end method

.method private pullPowerProfile(IJJLjava/util/List;)V
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1682
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1683
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1687
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1688
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v0, v2}, Lcom/android/internal/os/PowerProfile;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1689
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1690
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/StatsLogEventWrapper;->writeStorage([B)V

    .line 1691
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    return-void
.end method

.method private pullProcessCpuTime(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1805
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    monitor-enter p0

    .line 1806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1807
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 1808
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1811
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1812
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v1

    .line 1813
    .local v1, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v2, v8

    .line 1815
    .local v2, "e":Landroid/os/StatsLogEventWrapper;
    iget v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v2, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1816
    iget-object v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1817
    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1818
    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1819
    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1811
    nop

    .end local v1    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v2    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1821
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 1822
    return-void

    .line 1821
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pullProcessMemoryHighWaterMark(IJJLjava/util/List;)V
    .locals 16
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1236
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v0, p6

    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 1237
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1238
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 1239
    .local v1, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProcessMemoryState;

    .line 1240
    .local v3, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v4, v3, Landroid/app/ProcessMemoryState;->pid:I

    .line 1241
    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readRssHighWaterMarkFromProcfs(I)J

    move-result-wide v4

    .line 1242
    .local v4, "rssHighWaterMarkInBytes":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 1243
    goto :goto_0

    .line 1245
    :cond_0
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v7, v6

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1246
    .local v6, "e":Landroid/os/StatsLogEventWrapper;
    iget v7, v3, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1247
    iget-object v7, v3, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v6, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1249
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    .end local v3    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v4    # "rssHighWaterMarkInBytes":J
    .end local v6    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1251
    :cond_1
    sget-object v2, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 1252
    .local v2, "pids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1253
    aget v4, v2, v3

    .line 1254
    .local v4, "pid":I
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 1255
    .local v5, "uid":I
    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v6

    .line 1256
    .local v6, "processName":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readRssHighWaterMarkFromProcfs(I)J

    move-result-wide v7

    .line 1257
    .local v7, "rssHighWaterMarkInBytes":J
    new-instance v15, Landroid/os/StatsLogEventWrapper;

    move-object v9, v15

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1258
    .local v9, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v9, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1259
    invoke-virtual {v9, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v9, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1261
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .end local v6    # "processName":Ljava/lang/String;
    .end local v7    # "rssHighWaterMarkInBytes":J
    .end local v9    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1264
    .end local v3    # "i":I
    :cond_2
    const-string/jumbo v3, "sys.rss_hwm_reset.on"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    return-void
.end method

.method private pullProcessMemoryState(IJJLjava/util/List;)V
    .locals 11
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1171
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1172
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1173
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 1174
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 1175
    .local v2, "processMemoryState":Landroid/app/ProcessMemoryState;
    iget v3, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget v4, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v3

    .line 1177
    .local v3, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v3, :cond_0

    .line 1178
    goto :goto_0

    .line 1180
    :cond_0
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1181
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    iget v5, v2, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1182
    iget-object v5, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1183
    iget v5, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1184
    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1185
    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1186
    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1187
    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1188
    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1189
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1190
    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1191
    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1192
    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    .end local v2    # "processMemoryState":Landroid/app/ProcessMemoryState;
    .end local v3    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1194
    :cond_1
    move-object/from16 v5, p6

    return-void
.end method

.method private pullProcessStats(IIJJLjava/util/List;)V
    .locals 18
    .param p1, "section"    # I
    .param p2, "tagId"    # I
    .param p3, "elapsedNanos"    # J
    .param p5, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1619
    .local p7, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v1, p0

    move/from16 v8, p1

    monitor-enter p0

    .line 1621
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/StatsCompanionService;->readProcStatsHighWaterMark(I)J

    move-result-wide v2

    move-wide v9, v2

    .line 1622
    .local v9, "lastHighWaterMark":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1623
    .local v0, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v2, v1, Lcom/android/server/stats/StatsCompanionService;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    const/4 v6, 0x1

    move-wide v3, v9

    move/from16 v5, p1

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStats(JIZLjava/util/List;)J

    move-result-wide v2

    .line 1625
    .local v2, "highWaterMark":J
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1626
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1628
    :cond_0
    :try_start_2
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 1629
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v4, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1630
    .local v4, "stream":Ljava/io/InputStream;
    new-array v5, v5, [I

    .line 1631
    .local v5, "len":[I
    invoke-static {v4, v5}, Lcom/android/server/stats/StatsCompanionService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v7

    .line 1632
    .local v7, "stats":[B
    new-instance v17, Landroid/os/StatsLogEventWrapper;

    move-object/from16 v11, v17

    move/from16 v12, p2

    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object/from16 v11, v17

    .line 1634
    .local v11, "e":Landroid/os/StatsLogEventWrapper;
    aget v6, v5, v6

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/os/StatsLogEventWrapper;->writeStorage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1635
    move-object/from16 v6, p7

    :try_start_3
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 1638
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    .line 1639
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1647
    nop

    .end local v0    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v2    # "highWaterMark":J
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v5    # "len":[I
    .end local v7    # "stats":[B
    .end local v9    # "lastHighWaterMark":J
    .end local v11    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_3

    .line 1645
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1643
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1641
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1648
    :catchall_0
    move-exception v0

    move-object/from16 v6, p7

    goto :goto_4

    .line 1645
    :catch_3
    move-exception v0

    move-object/from16 v6, p7

    .line 1646
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    :try_start_4
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1643
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    move-object/from16 v6, p7

    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 1641
    :catch_5
    move-exception v0

    move-object/from16 v6, p7

    .line 1642
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    nop

    .line 1648
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    monitor-exit p0

    .line 1649
    return-void

    .line 1648
    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private pullProcessSystemIonHeapSize(IJJLjava/util/List;)V
    .locals 10
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1279
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object v0

    .line 1280
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/MemoryStatUtil$IonAllocations;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    .line 1281
    .local v2, "allocations":Lcom/android/server/am/MemoryStatUtil$IonAllocations;
    new-instance v9, Landroid/os/StatsLogEventWrapper;

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1282
    .local v3, "e":Landroid/os/StatsLogEventWrapper;
    iget v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1283
    iget v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1284
    iget-wide v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1285
    iget v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1286
    iget-wide v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1287
    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    .end local v2    # "allocations":Lcom/android/server/am/MemoryStatUtil$IonAllocations;
    .end local v3    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1289
    :cond_0
    move-object/from16 v4, p6

    return-void
.end method

.method private pullRoleHolders(JJLjava/util/List;)V
    .locals 24
    .param p1, "elapsedNanos"    # J
    .param p3, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2091
    .local p5, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2093
    .local v2, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    .line 2094
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/server/role/RoleManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/role/RoleManagerInternal;

    move-object v5, v0

    .line 2096
    .local v5, "rmi":Lcom/android/server/role/RoleManagerInternal;
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 2098
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 2099
    .local v7, "numUsers":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "userNum":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 2100
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v9, v0

    .line 2102
    .local v9, "userId":I
    invoke-virtual {v5, v9}, Lcom/android/server/role/RoleManagerInternal;->getRolesAndHolders(I)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v10, v0

    .line 2105
    .local v10, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v11, v0

    .line 2106
    .local v11, "numRoles":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "roleNum":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 2107
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 2108
    .local v13, "roleName":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    move-object v14, v0

    .line 2110
    .local v14, "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v15, v0

    .line 2111
    .local v15, "numHolders":I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "holderNum":I
    :goto_2
    if-ge v1, v15, :cond_0

    .line 2112
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v0

    .line 2116
    .local v16, "holderName":Ljava/lang/String;
    const/4 v0, 0x0

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .end local v16    # "holderName":Ljava/lang/String;
    .local v5, "holderName":Ljava/lang/String;
    .local v17, "rmi":Lcom/android/server/role/RoleManagerInternal;
    :try_start_1
    invoke-virtual {v4, v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2120
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 2122
    :try_start_2
    new-instance v16, Landroid/os/StatsLogEventWrapper;

    const/16 v19, 0x2741

    move-object/from16 v18, v16

    move-wide/from16 v20, p1

    move-wide/from16 v22, p3

    invoke-direct/range {v18 .. v23}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object/from16 v18, v16

    .line 2124
    .local v18, "e":Landroid/os/StatsLogEventWrapper;
    move-object/from16 v16, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v16, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "e":Landroid/os/StatsLogEventWrapper;
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    .local v19, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 2125
    invoke-virtual {v0, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v0, v13}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2127
    move-object/from16 v4, p5

    :try_start_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    nop

    .end local v0    # "e":Landroid/os/StatsLogEventWrapper;
    .end local v5    # "holderName":Ljava/lang/String;
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_2

    .line 2132
    .end local v1    # "holderNum":I
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    .end local v9    # "userId":I
    .end local v10    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "numRoles":I
    .end local v12    # "roleNum":I
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "numHolders":I
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    :catchall_0
    move-exception v0

    move-object/from16 v4, p5

    goto :goto_3

    .line 2117
    .restart local v1    # "holderNum":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "holderName":Ljava/lang/String;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "numUsers":I
    .restart local v8    # "userNum":I
    .restart local v9    # "userId":I
    .restart local v10    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v11    # "numRoles":I
    .restart local v12    # "roleNum":I
    .restart local v13    # "roleName":Ljava/lang/String;
    .restart local v14    # "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "numHolders":I
    .restart local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v4, p5

    move-object/from16 v18, v0

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v18

    .line 2118
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "StatsCompanionService"

    move/from16 v19, v1

    .end local v1    # "holderNum":I
    .local v19, "holderNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Role holder "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    return-void

    .line 2111
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "holderNum":I
    .restart local v1    # "holderNum":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "rmi":Lcom/android/server/role/RoleManagerInternal;
    :cond_0
    move/from16 v19, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 2106
    .end local v1    # "holderNum":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "numHolders":I
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 2099
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v9    # "userId":I
    .end local v10    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "numRoles":I
    .end local v12    # "roleNum":I
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    :cond_2
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 2132
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    nop

    .line 2134
    return-void

    .line 2132
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullSystemElapsedRealtime(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1157
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1158
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    return-void
.end method

.method private pullSystemIonHeapSize(IJJLjava/util/List;)V
    .locals 9
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1270
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 1271
    .local v0, "systemIonHeapSizeInBytes":J
    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1272
    .local v2, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v2, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1273
    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    return-void
.end method

.method private pullSystemUpTime(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1163
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 1164
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1165
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-void
.end method

.method private pullTemperature(IJJLjava/util/List;)V
    .locals 12
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1881
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1883
    .local v1, "callingToken":J
    :try_start_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentTemperatures()Ljava/util/List;

    move-result-object v0

    .line 1884
    .local v0, "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Temperature;

    .line 1885
    .local v4, "temp":Landroid/os/Temperature;
    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v5, v11

    .line 1887
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v4}, Landroid/os/Temperature;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1888
    invoke-virtual {v4}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v4}, Landroid/os/Temperature;->getValue()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1890
    invoke-virtual {v4}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    move-object/from16 v6, p6

    :try_start_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1892
    nop

    .end local v4    # "temp":Landroid/os/Temperature;
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_0

    .line 1893
    .end local v0    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1884
    .restart local v0    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :cond_0
    move-object/from16 v6, p6

    .line 1897
    .end local v0    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_3

    .line 1893
    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1897
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1898
    nop

    .line 1899
    return-void

    .line 1897
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullTimeZoneDataInfo(IJJLjava/util/List;)V
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 2138
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string v0, "Unknown"

    .line 2140
    .local v0, "tzDbVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2143
    goto :goto_0

    .line 2141
    :catch_0
    move-exception v1

    .line 2142
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting tzdb version failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    .line 2146
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 2147
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    return-void
.end method

.method private pullWifiActivityInfo(IJJLjava/util/List;)V
    .locals 12
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1066
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1067
    .local v2, "token":J
    monitor-enter p0

    .line 1068
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_0

    .line 1069
    const-string/jumbo v0, "wifi"

    .line 1071
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 1073
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1074
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_1

    .line 1076
    :try_start_1
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "wifi"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v4, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v4, v0}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1078
    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1079
    .local v4, "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v5, v11

    .line 1081
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1082
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 1083
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1084
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1085
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 1086
    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    move-object/from16 v6, p6

    :try_start_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1093
    nop

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_1

    .line 1088
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_2

    .line 1088
    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    .line 1089
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_3
    const-string v4, "StatsCompanionService"

    const-string v5, "Pulling wifiManager for wifi controller activity energy info has error"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1093
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    goto :goto_3

    .line 1093
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1074
    :cond_1
    move-object/from16 v6, p6

    .line 1096
    :goto_3
    return-void

    .line 1073
    :catchall_2
    move-exception v0

    move-object/from16 v6, p6

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method private pullWifiBytesTransfer(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 879
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 882
    .local v1, "token":J
    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    .line 883
    .local v3, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "ifaces":[Ljava/lang/String;
    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 897
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    return-void

    .line 887
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    .line 888
    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-void

    .line 892
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    .line 893
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v6, 0x0

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    .end local v3    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v4    # "ifaces":[Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 894
    :catch_0
    move-exception v3

    .line 895
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Pulling netstats for wifi bytes has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 897
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    nop

    .line 899
    return-void

    .line 897
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullWifiBytesTransferByFgBg(IJJLjava/util/List;)V
    .locals 7
    .param p1, "tagId"    # I
    .param p2, "elapsedNanos"    # J
    .param p4, "wallClockNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 904
    .local p6, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 906
    .local v1, "token":J
    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    .line 907
    .local v3, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 908
    .local v4, "ifaces":[Ljava/lang/String;
    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 921
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    return-void

    .line 911
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    .line 912
    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 921
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    return-void

    .line 915
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 916
    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 915
    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 917
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v6, 0x1

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 921
    .end local v3    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v4    # "ifaces":[Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 918
    :catch_0
    move-exception v3

    .line 919
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Pulling netstats for wifi bytes w/ fg/bg has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 921
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    nop

    .line 923
    return-void

    .line 921
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1652
    const/4 v0, 0x0

    .line 1653
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1654
    .local v1, "initialAvail":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4000

    :goto_0
    new-array v2, v2, [B

    .line 1656
    .local v2, "data":[B
    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1660
    .local v3, "amt":I
    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 1664
    aput v0, p1, v4

    .line 1665
    return-object v2

    .line 1667
    :cond_1
    add-int/2addr v0, v3

    .line 1668
    array-length v5, v2

    if-lt v0, v5, :cond_2

    .line 1669
    add-int/lit16 v5, v0, 0x4000

    new-array v5, v5, [B

    .line 1673
    .local v5, "newData":[B
    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1674
    move-object v2, v5

    .line 1676
    .end local v3    # "amt":I
    .end local v5    # "newData":[B
    :cond_2
    goto :goto_1
.end method

.method private readProcStatsHighWaterMark(I)J
    .locals 7
    .param p1, "section"    # I

    .line 1596
    const-string v0, "StatsCompanionService"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$BNidAMcUS8SzzhAyVRAjvZQ7-Gc;

    invoke-direct {v4, p1}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$BNidAMcUS8SzzhAyVRAjvZQ7-Gc;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1599
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 1602
    :cond_0
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only 1 file expected for high water mark. Found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1600
    :cond_2
    :goto_0
    return-wide v1

    .line 1608
    .end local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1609
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse file name."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1606
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 1607
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "Failed to get procstats high watermark file."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1610
    .end local v3    # "e":Ljava/lang/SecurityException;
    nop

    .line 1611
    :goto_1
    return-wide v1
.end method

.method private rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 801
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 803
    .local v0, "ret":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 804
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 805
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 806
    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 807
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 809
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v2

    .line 810
    .local v2, "size":I
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 811
    .local v3, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 812
    invoke-virtual {p1, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 815
    iget v5, v3, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_0

    goto :goto_1

    .line 817
    :cond_0
    iget v5, v3, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 818
    iget v5, v3, Landroid/net/NetworkStats$Entry;->uid:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 819
    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 820
    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 821
    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 822
    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 824
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 811
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 826
    .end local v4    # "i":I
    :cond_1
    return-object v0
.end method

.method private sayHiToStatsd()V
    .locals 10

    .line 2571
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2572
    :try_start_0
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-eqz v1, :cond_0

    .line 2573
    const-string v1, "StatsCompanionService"

    const-string v2, "Trying to fetch statsd, but it was already fetched"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "sStatsd is not null when being fetched"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2576
    monitor-exit v0

    return-void

    .line 2578
    :cond_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 2579
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-nez v1, :cond_1

    .line 2580
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not yet find statsd to tell it that StatsCompanion is alive."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 2587
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->statsCompanionReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2590
    :try_start_2
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2594
    goto :goto_0

    .line 2591
    :catch_0
    move-exception v1

    .line 2592
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "StatsCompanionService"

    const-string/jumbo v3, "linkToDeath(StatsdDeathRecipient) failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2593
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 2596
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2597
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2598
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2599
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2600
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2607
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 2608
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2609
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2613
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 2614
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2615
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2621
    .local v2, "token":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2623
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    .line 2624
    nop

    .line 2625
    const-string v4, "StatsCompanionService"

    const-string v5, "Told statsd that StatsCompanionService is alive."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    nop

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "token":J
    goto :goto_1

    .line 2623
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/stats/StatsCompanionService;
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2626
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/stats/StatsCompanionService;
    :catch_1
    move-exception v1

    .line 2627
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd that statscompanion is ready"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2628
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 2630
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 2631
    return-void

    .line 2630
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private systemReady()V
    .locals 0

    .line 2563
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 2564
    return-void
.end method

.method private static final toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 447
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 448
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 449
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static final toLongArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 455
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 456
    .local v0, "ret":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 457
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelAlarmForSubscriberTriggering()V
    .locals 4

    .line 731
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, "callingToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    nop

    .line 741
    return-void

    .line 739
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAnomalyAlarm()V
    .locals 4

    .line 700
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 704
    .local v0, "callingToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    nop

    .line 708
    return-void

    .line 706
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelPullingAlarm()V
    .locals 4

    .line 763
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 767
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 769
    .local v0, "callingToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    nop

    .line 773
    return-void

    .line 771
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2690
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "StatsCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2692
    :cond_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2693
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of configuration files deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 2694
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2693
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2696
    const-string v1, "  timestamp, deleted file name"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2700
    .local v1, "lastBootMillis":J
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2701
    .local v4, "elapsedMillis":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 2702
    .local v5, "deletionMillis":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 2703
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2702
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    .end local v4    # "elapsedMillis":Ljava/lang/Long;
    .end local v5    # "deletionMillis":J
    goto :goto_0

    .line 2705
    .end local v1    # "lastBootMillis":J
    :cond_2
    monitor-exit v0

    .line 2706
    return-void

    .line 2705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullData(I)[Landroid/os/StatsLogEventWrapper;
    .locals 13
    .param p1, "tagId"    # I

    .line 2265
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 2269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2270
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    .line 2271
    .local v9, "elapsedNanos":J
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v11, v1, v3

    .line 2272
    .local v11, "wallClockNanos":J
    packed-switch p1, :pswitch_data_0

    .line 2481
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such tagId data as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatsCompanionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const/4 v1, 0x0

    return-object v1

    .line 2354
    :pswitch_1
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessSystemIonHeapSize(IJJLjava/util/List;)V

    .line 2355
    goto/16 :goto_0

    .line 2477
    :pswitch_2
    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullAppOps(JJLjava/util/List;)V

    .line 2478
    goto/16 :goto_0

    .line 2441
    :pswitch_3
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCoolingDevices(IJJLjava/util/List;)V

    .line 2442
    goto/16 :goto_0

    .line 2473
    :pswitch_4
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullFaceSettings(IJJLjava/util/List;)V

    .line 2474
    goto/16 :goto_0

    .line 2469
    :pswitch_5
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullAppsOnExternalStorageInfo(IJJLjava/util/List;)V

    .line 2470
    goto/16 :goto_0

    .line 2350
    :pswitch_6
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullSystemIonHeapSize(IJJLjava/util/List;)V

    .line 2351
    goto/16 :goto_0

    .line 2465
    :pswitch_7
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullExternalStorageInfo(IJJLjava/util/List;)V

    .line 2466
    goto/16 :goto_0

    .line 2461
    :pswitch_8
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullTimeZoneDataInfo(IJJLjava/util/List;)V

    .line 2462
    goto/16 :goto_0

    .line 2457
    :pswitch_9
    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDangerousPermissionState(JJLjava/util/List;)V

    .line 2458
    goto/16 :goto_0

    .line 2453
    :pswitch_a
    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullRoleHolders(JJLjava/util/List;)V

    .line 2454
    goto/16 :goto_0

    .line 2391
    :pswitch_b
    const/4 v2, 0x4

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullNumBiometricsEnrolled(IIJJLjava/util/List;)V

    .line 2393
    goto/16 :goto_0

    .line 2449
    :pswitch_c
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDebugFailingElapsedClock(IJJLjava/util/List;)V

    .line 2450
    goto/16 :goto_0

    .line 2445
    :pswitch_d
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDebugElapsedClock(IJJLjava/util/List;)V

    .line 2446
    goto/16 :goto_0

    .line 2413
    :pswitch_e
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBuildInformation(IJJLjava/util/List;)V

    .line 2414
    goto/16 :goto_0

    .line 2346
    :pswitch_f
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryHighWaterMark(IJJLjava/util/List;)V

    .line 2347
    goto/16 :goto_0

    .line 2433
    :pswitch_10
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerBlameOther(IJJLjava/util/List;)V

    .line 2434
    goto/16 :goto_0

    .line 2429
    :pswitch_11
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerBlameUid(IJJLjava/util/List;)V

    .line 2430
    goto/16 :goto_0

    .line 2425
    :pswitch_12
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerUse(IJJLjava/util/List;)V

    .line 2426
    goto/16 :goto_0

    .line 2421
    :pswitch_13
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerThreadFreq(IJJLjava/util/List;)V

    .line 2422
    goto/16 :goto_0

    .line 2342
    :pswitch_14
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullNativeProcessMemoryState(IJJLjava/util/List;)V

    .line 2343
    goto/16 :goto_0

    .line 2417
    :pswitch_15
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessCpuTime(IJJLjava/util/List;)V

    .line 2418
    goto/16 :goto_0

    .line 2400
    :pswitch_16
    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullProcessStats(IIJJLjava/util/List;)V

    .line 2402
    goto/16 :goto_0

    .line 2409
    :pswitch_17
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullPowerProfile(IJJLjava/util/List;)V

    .line 2410
    goto/16 :goto_0

    .line 2405
    :pswitch_18
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDiskIo(IJJLjava/util/List;)V

    .line 2406
    goto/16 :goto_0

    .line 2386
    :pswitch_19
    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullNumBiometricsEnrolled(IIJJLjava/util/List;)V

    .line 2388
    goto/16 :goto_0

    .line 2396
    :pswitch_1a
    const/16 v2, 0xf

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullProcessStats(IIJJLjava/util/List;)V

    .line 2397
    goto/16 :goto_0

    .line 2382
    :pswitch_1b
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCategorySize(IJJLjava/util/List;)V

    .line 2383
    goto/16 :goto_0

    .line 2378
    :pswitch_1c
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullAppSize(IJJLjava/util/List;)V

    .line 2379
    goto/16 :goto_0

    .line 2374
    :pswitch_1d
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDirectoryUsage(IJJLjava/util/List;)V

    .line 2375
    goto/16 :goto_0

    .line 2370
    :pswitch_1e
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDiskStats(IJJLjava/util/List;)V

    .line 2371
    goto/16 :goto_0

    .line 2366
    :pswitch_1f
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullLooperStats(IJJLjava/util/List;)V

    .line 2367
    goto/16 :goto_0

    .line 2362
    :pswitch_20
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBinderCallsStatsExceptions(IJJLjava/util/List;)V

    .line 2363
    goto/16 :goto_0

    .line 2358
    :pswitch_21
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBinderCallsStats(IJJLjava/util/List;)V

    .line 2359
    goto/16 :goto_0

    .line 2437
    :pswitch_22
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullTemperature(IJJLjava/util/List;)V

    .line 2438
    goto/16 :goto_0

    .line 2310
    :pswitch_23
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuClusterTime(IJJLjava/util/List;)V

    .line 2311
    goto/16 :goto_0

    .line 2314
    :pswitch_24
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuActiveTime(IJJLjava/util/List;)V

    .line 2315
    goto/16 :goto_0

    .line 2330
    :pswitch_25
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullSystemUpTime(IJJLjava/util/List;)V

    .line 2331
    goto/16 :goto_0

    .line 2334
    :pswitch_26
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullSystemElapsedRealtime(IJJLjava/util/List;)V

    .line 2335
    goto/16 :goto_0

    .line 2338
    :pswitch_27
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryState(IJJLjava/util/List;)V

    .line 2339
    goto/16 :goto_0

    .line 2322
    :pswitch_28
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullModemActivityInfo(IJJLjava/util/List;)V

    .line 2323
    goto/16 :goto_0

    .line 2318
    :pswitch_29
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullWifiActivityInfo(IJJLjava/util/List;)V

    .line 2319
    goto/16 :goto_0

    .line 2306
    :pswitch_2a
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuFreqTime(IJJLjava/util/List;)V

    .line 2307
    goto/16 :goto_0

    .line 2302
    :pswitch_2b
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuTime(IJJLjava/util/List;)V

    .line 2303
    goto/16 :goto_0

    .line 2298
    :pswitch_2c
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerFreq(IJJLjava/util/List;)V

    .line 2299
    goto/16 :goto_0

    .line 2326
    :pswitch_2d
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothActivityInfo(IJJLjava/util/List;)V

    .line 2327
    goto :goto_0

    .line 2290
    :pswitch_2e
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothBytesTransfer(IJJLjava/util/List;)V

    .line 2291
    goto :goto_0

    .line 2294
    :pswitch_2f
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelWakelock(IJJLjava/util/List;)V

    .line 2295
    goto :goto_0

    .line 2286
    :pswitch_30
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransferByFgBg(IJJLjava/util/List;)V

    .line 2287
    goto :goto_0

    .line 2278
    :pswitch_31
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransfer(IJJLjava/util/List;)V

    .line 2279
    goto :goto_0

    .line 2282
    :pswitch_32
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransferByFgBg(IJJLjava/util/List;)V

    .line 2283
    goto :goto_0

    .line 2274
    :pswitch_33
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransfer(IJJLjava/util/List;)V

    .line 2275
    nop

    .line 2484
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/StatsLogEventWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/StatsLogEventWrapper;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendActiveConfigsChangedBroadcast(Landroid/os/IBinder;[J)V
    .locals 7
    .param p1, "intentSenderBinder"    # Landroid/os/IBinder;
    .param p2, "configIds"    # [J

    .line 395
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 396
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 397
    .local v0, "intentSender":Landroid/content/IntentSender;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v6, v1

    .line 398
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.STATS_ACTIVE_CONFIG_KEYS"

    invoke-virtual {v6, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v2, "StatsCompanionService"

    const-string v3, "Unable to send active configs changed broadcast using IntentSender"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    return-void
.end method

.method public sendDataBroadcast(Landroid/os/IBinder;J)V
    .locals 7
    .param p1, "intentSenderBinder"    # Landroid/os/IBinder;
    .param p2, "lastReportTimeNs"    # J

    .line 382
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 383
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 384
    .local v0, "intentSender":Landroid/content/IntentSender;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v6, v1

    .line 385
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.LAST_REPORT_TIME"

    invoke-virtual {v6, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v2, "StatsCompanionService"

    const-string v3, "Unable to send using IntentSender"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    return-void
.end method

.method public sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V
    .locals 20
    .param p1, "intentSenderBinder"    # Landroid/os/IBinder;
    .param p2, "configUid"    # J
    .param p4, "configKey"    # J
    .param p6, "subscriptionId"    # J
    .param p8, "subscriptionRuleId"    # J
    .param p10, "cookies"    # [Ljava/lang/String;
    .param p11, "dimensionsValue"    # Landroid/os/StatsDimensionsValue;

    .line 413
    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 414
    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v10, p1

    invoke-direct {v4, v10}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 415
    .local v4, "intentSender":Landroid/content/IntentSender;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    const-string v5, "android.app.extra.STATS_CONFIG_UID"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 418
    const-string v5, "android.app.extra.STATS_CONFIG_KEY"

    move-wide/from16 v11, p4

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 419
    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_ID"

    move-wide/from16 v13, p6

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 420
    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

    move-wide/from16 v8, p8

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 421
    const-string v5, "android.app.extra.STATS_DIMENSIONS_VALUE"

    move-object/from16 v15, p11

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 423
    .local v7, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 424
    .local v6, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v0, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    move/from16 v16, v0

    aget-object v0, v3, v5

    .line 425
    .local v0, "cookie":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v0    # "cookie":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_0

    .line 427
    :cond_0
    const-string v0, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 438
    move-object/from16 v5, p0

    :try_start_0
    iget-object v0, v5, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v0

    move-object/from16 v19, v6

    .end local v6    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v6, v16

    move-object/from16 v16, v7

    .end local v7    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v8, v17

    move-object/from16 v9, v18

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    goto :goto_2

    .line 439
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v16, v7

    .line 440
    .end local v6    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to send using IntentSender from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; presumably it had been cancelled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StatsCompanionService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_2
    return-void
.end method

.method public setAlarmForSubscriberTriggering(J)V
    .locals 9
    .param p1, "timestampMs"    # J

    .line 712
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 722
    .local v0, "callingToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.periodic"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    nop

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnomalyAlarm(J)V
    .locals 9
    .param p1, "timestampMs"    # J

    .line 684
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 691
    .local v0, "callingToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.anomaly"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    nop

    .line 696
    return-void

    .line 694
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPullingAlarm(J)V
    .locals 9
    .param p1, "nextPullTimeMs"    # J

    .line 745
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 754
    .local v0, "callingToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.pull"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    nop

    .line 759
    return-void

    .line 757
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public statsdReady()V
    .locals 4

    .line 2489
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 2493
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 2494
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.STATSD_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2495
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2494
    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2497
    return-void
.end method

.method public triggerUidSnapshot()V
    .locals 6

    .line 2501
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 2502
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2503
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2505
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2509
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2510
    :goto_0
    goto :goto_1

    .line 2509
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2506
    :catch_0
    move-exception v3

    .line 2507
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "StatsCompanionService"

    const-string v5, "Failed to trigger uid snapshot."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2509
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2511
    .end local v1    # "token":J
    :goto_1
    monitor-exit v0

    .line 2512
    return-void

    .line 2509
    .restart local v1    # "token":J
    :goto_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/stats/StatsCompanionService;
    throw v3

    .line 2511
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/stats/StatsCompanionService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
