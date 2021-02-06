.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;,
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    }
.end annotation


# static fields
.field private static final APP_OPS_SAMPLING_INITIALIZATION_DELAY_MILLIS:J = 0xafc8L

.field private static final APP_OPS_SIZE_ESTIMATE:I = 0x7d0

.field private static final APP_OPS_TARGET_COLLECTION_SIZE:Ljava/lang/String; = "app_ops_target_collection_size"

.field private static final COMMON_PERMISSION_PREFIX:Ljava/lang/String; = "android.permission."

.field private static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field private static final DANGEROUS_PERMISSION_STATE_SAMPLE_RATE:Ljava/lang/String; = "dangerous_permission_state_sample_rate"

.field private static final DEBUG:Z = true

.field private static final DIMENSION_KEY_SIZE_HARD_LIMIT:I = 0x320

.field private static final DIMENSION_KEY_SIZE_SOFT_LIMIT:I = 0x1f4

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_BATTERY_STATS_HELPER_FREQUENCY_MS:I = 0x3e8

.field private static final MAX_PROCSTATS_RAW_SHARD_SIZE:I = 0xe666

.field private static final MAX_PROCSTATS_SHARDS:I = 0x5

.field private static final MAX_PROCSTATS_SHARD_SIZE:I = 0xc000

.field private static final MILLIS_PER_SEC:J = 0x3e8L

.field private static final MILLI_AMP_HR_TO_NANO_AMP_SECS:J = 0xd693a400L

.field private static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field private static final OP_FLAGS_PULLED:I = 0x9

.field private static final RANDOM_SEED:I

.field private static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field private static final TAG:Ljava/lang/String; = "StatsPullAtomService"


# instance fields
.field private final mAppOpsLock:Ljava/lang/Object;

.field private mAppOpsSamplingRate:I

.field private final mAppSizeLock:Ljava/lang/Object;

.field private final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field private final mAttributedAppOpsLock:Ljava/lang/Object;

.field private mBaseDir:Ljava/io/File;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private final mBatteryStatsHelperLock:Ljava/lang/Object;

.field private mBatteryStatsHelperTimestampMs:J

.field private final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field private final mBinderCallsStatsLock:Ljava/lang/Object;

.field private final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field private final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field private final mBuildInformationLock:Ljava/lang/Object;

.field private final mCategorySizeLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mCooldownDeviceLock:Ljava/lang/Object;

.field private final mCpuActiveTimeLock:Ljava/lang/Object;

.field private final mCpuClusterTimeLock:Ljava/lang/Object;

.field private final mCpuTimePerFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerUidLock:Ljava/lang/Object;

.field private mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field private mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field private mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field private mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field private final mDangerousAppOpsList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDangerousAppOpsListLock:Ljava/lang/Object;

.field private final mDangerousPermissionStateLock:Ljava/lang/Object;

.field private final mDataBytesTransferLock:Ljava/lang/Object;

.field private final mDebugElapsedClockLock:Ljava/lang/Object;

.field private mDebugElapsedClockPreviousValue:J

.field private mDebugElapsedClockPullCount:J

.field private final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field private mDebugFailingElapsedClockPreviousValue:J

.field private mDebugFailingElapsedClockPullCount:J

.field private final mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;

.field private final mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;

.field private final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field private final mDirectoryUsageLock:Ljava/lang/Object;

.field private final mDiskIoLock:Ljava/lang/Object;

.field private final mDiskStatsLock:Ljava/lang/Object;

.field private final mExternalStorageInfoLock:Ljava/lang/Object;

.field private final mFaceSettingsLock:Ljava/lang/Object;

.field private final mHealthHalLock:Ljava/lang/Object;

.field private mHealthService:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private final mHistoricalSubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIonHeapSizeLock:Ljava/lang/Object;

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field private final mKernelWakelockLock:Ljava/lang/Object;

.field private mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mLooperStatsLock:Ljava/lang/Object;

.field private final mModemActivityInfoLock:Ljava/lang/Object;

.field private final mNetworkStatsBaselines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManagerService:Landroid/app/INotificationManager;

.field private final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field private final mNotificationStatsLock:Ljava/lang/Object;

.field private final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field private final mPowerProfileLock:Ljava/lang/Object;

.field private final mProcStatsLock:Ljava/lang/Object;

.field private final mProcessCpuTimeLock:Ljava/lang/Object;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field private final mProcessMemorySnapshotLock:Ljava/lang/Object;

.field private final mProcessMemoryStateLock:Ljava/lang/Object;

.field private mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

.field private final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field private final mRoleHolderLock:Ljava/lang/Object;

.field private final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field private final mSettingsStatsLock:Ljava/lang/Object;

.field private mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field private mStatsManager:Landroid/app/StatsManager;

.field private mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageService:Landroid/os/IStoraged;

.field private final mStoragedLock:Ljava/lang/Object;

.field private mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field private final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field private final mSystemUptimeLock:Ljava/lang/Object;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTemperatureLock:Ljava/lang/Object;

.field private final mThermalLock:Ljava/lang/Object;

.field private mThermalService:Landroid/os/IThermalService;

.field private final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field private mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mWifiActivityInfoLock:Ljava/lang/Object;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 210
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 229
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 270
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 273
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 275
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperLock:Ljava/lang/Object;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 318
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperTimestampMs:J

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    .line 326
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 343
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 344
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerFreqLock:Ljava/lang/Object;

    .line 346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 351
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 354
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemorySnapshotLock:Ljava/lang/Object;

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 359
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 364
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 366
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 368
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 369
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 372
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;

    .line 378
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;

    .line 379
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 381
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 382
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 383
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 384
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 386
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 389
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 390
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 391
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 392
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 393
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 397
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 398
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemorySnapshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerBlameOtherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerFreqLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5800()I
    .locals 1

    .line 205
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->estimateAppOpsSamplingRate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/stats/pull/StatsPullAtomService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/server/stats/pull/StatsPullAtomService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # I

    .line 205
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;
    .param p1, "x1"    # Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 5
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1127
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1128
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1129
    iget-object v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1130
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v2

    const/16 v3, 0x2763

    .line 1131
    invoke-virtual {v2, v3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 1132
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1133
    invoke-virtual {v2, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1134
    invoke-virtual {v2, v4, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget v3, v0, Landroid/net/NetworkStats$Entry;->metered:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 1135
    :goto_1
    invoke-virtual {v2, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1136
    invoke-virtual {v2, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1137
    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1138
    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1139
    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1140
    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1141
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    .line 1142
    .local v2, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    .end local v2    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 10
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1153
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget v0, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1155
    .local v0, "is5GNsa":Z
    :goto_0
    if-nez v0, :cond_1

    iget v3, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    :cond_1
    move v1, v2

    .line 1157
    .local v1, "isNR":Z
    :cond_2
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1158
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 1159
    iget-object v5, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v5, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1162
    iget v5, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 1163
    .local v5, "ratType":I
    if-nez v5, :cond_3

    .line 1164
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v5

    .line 1166
    :cond_3
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v6

    const/16 v7, 0x2762

    .line 1167
    invoke-virtual {v6, v7}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 1168
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget v8, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1169
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1170
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1171
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1172
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1173
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 1174
    if-eqz v0, :cond_4

    const/16 v8, 0xd

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-object v8, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v8, v8, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 1178
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-object v8, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v8, v8, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 1179
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    iget-object v8, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget v8, v8, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 1180
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 1181
    iget-object v8, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-boolean v8, v8, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz v8, :cond_5

    .line 1182
    goto :goto_3

    .line 1183
    :cond_5
    const/4 v7, 0x3

    .line 1181
    :goto_3
    invoke-virtual {v6, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 1184
    invoke-virtual {v6, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 1185
    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v6

    .line 1186
    .local v6, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    .end local v5    # "ratType":I
    .end local v6    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1188
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .locals 6
    .param p1, "atomTag"    # I
    .param p3, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ")V"
        }
    .end annotation

    .line 1099
    .local p2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    .line 1100
    .local v0, "size":I
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1101
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1102
    iget-object v3, p3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1103
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1104
    .local v3, "e":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 1105
    const/16 v4, 0x2712

    const/4 v5, 0x1

    if-eq p1, v4, :cond_0

    const/16 v4, 0x2713

    if-eq p1, v4, :cond_0

    goto :goto_1

    .line 1108
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1109
    nop

    .line 1112
    :goto_1
    iget v4, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1113
    invoke-virtual {v3, v5, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 1114
    iget-boolean v4, p3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-eqz v4, :cond_1

    .line 1115
    iget v4, v1, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1117
    :cond_1
    iget-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1118
    iget-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1119
    iget-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1120
    iget-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1121
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    .end local v3    # "e":Landroid/util/StatsEvent$Builder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4
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

    .line 1406
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1407
    return-object v0

    .line 1411
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 1412
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 1413
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1415
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1417
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    .line 1419
    return-object v2

    .line 1424
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    goto :goto_0

    .line 1422
    :catch_0
    move-exception v1

    .line 1423
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatsPullAtomService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-object v0
.end method

.method private collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;
    .locals 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/16 v1, 0x2762

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2763

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1052
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown atomTag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1022
    :pswitch_0
    nop

    .line 1023
    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1024
    .local v3, "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_3

    .line 1025
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v1, v6, v1

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1013
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :pswitch_1
    nop

    .line 1014
    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1015
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_3

    .line 1016
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    new-array v2, v2, [I

    aput v1, v2, v1

    invoke-direct {v4, v5, v2, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1005
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1006
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_3

    .line 1007
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v2, v6, v1

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 997
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 998
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_3

    .line 999
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v2, v6, v1

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1031
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :cond_0
    nop

    .line 1032
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1031
    invoke-direct {p0, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1033
    .local v1, "wifiStats":Landroid/net/NetworkStats;
    nop

    .line 1034
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1033
    invoke-direct {p0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1035
    .local v2, "cellularStats":Landroid/net/NetworkStats;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 1036
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1037
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    new-instance v12, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    .end local v3    # "stats":Landroid/net/NetworkStats;
    goto :goto_1

    .line 1046
    .end local v1    # "wifiStats":Landroid/net/NetworkStats;
    .end local v2    # "cellularStats":Landroid/net/NetworkStats;
    :cond_1
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 1047
    .local v2, "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1048
    .end local v2    # "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    goto :goto_0

    .line 1049
    :cond_2
    nop

    .line 1054
    :cond_3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method private estimateAppOpsSamplingRate()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3538
    move-object/from16 v1, p0

    const-string v0, "permissions"

    const-string v2, "app_ops_target_collection_size"

    const/16 v3, 0x7d0

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 3541
    .local v2, "appOpsTargetCollectionSize":I
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3543
    .local v3, "appOps":Landroid/app/AppOpsManager;
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v0

    .line 3544
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 3546
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v5, v7, v8, v6}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 3547
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v0

    .line 3548
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3549
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;

    invoke-direct {v6, v4}, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v0, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3550
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3552
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    nop

    .line 3553
    const/16 v0, 0x275b

    const/16 v7, 0x64

    invoke-direct {v1, v6, v0, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v7

    .line 3555
    .local v7, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const-wide/16 v8, 0x0

    .line 3556
    .local v8, "estimatedSize":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    .line 3557
    .local v10, "nOps":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 3558
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3559
    .local v11, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget-object v12, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x20

    iget-object v13, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    .line 3560
    :cond_0
    iget-object v13, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    :goto_1
    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v8, v12

    .line 3557
    .end local v11    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3563
    .end local v0    # "i":I
    :cond_1
    mul-int/lit8 v0, v2, 0x64

    int-to-long v11, v0

    div-long v13, v11, v8

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x64

    invoke-static/range {v13 .. v18}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 3565
    .local v11, "estimatedSamplingRate":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3566
    :try_start_0
    iget v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3567
    monitor-exit v12

    .line 3568
    return-void

    .line 3567
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 3

    .line 1429
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1430
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 1431
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v1, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 1434
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object v2

    .line 1436
    .end local v1    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_0
    const-string v1, "StatsPullAtomService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 9

    .line 2813
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2814
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2818
    .local v3, "callingToken":J
    :try_start_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2820
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2821
    nop

    .line 2822
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v5, 0x0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2820
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2821
    nop

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService;
    throw v1

    .line 2824
    .end local v3    # "callingToken":J
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2825
    .local v3, "currentTime":J
    iget-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperTimestampMs:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    .line 2828
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 2831
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 2832
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelperTimestampMs:J

    .line 2834
    .end local v3    # "currentTime":J
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2835
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0

    .line 2834
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 18
    .param p1, "subInfo"    # Lcom/android/server/stats/pull/netstats/SubInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1233
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    invoke-static {}, Landroid/net/NetworkTemplate;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v14, v2, v5

    .line 1235
    .local v14, "ratType":I
    move-object/from16 v15, p1

    iget-object v6, v15, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 1236
    invoke-static {v6, v14}, Landroid/net/NetworkTemplate;->buildTemplateMobileWithRatType(Ljava/lang/String;I)Landroid/net/NetworkTemplate;

    move-result-object v13

    .line 1237
    .local v13, "template":Landroid/net/NetworkTemplate;
    nop

    .line 1238
    invoke-direct {v0, v13, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v12

    .line 1239
    .local v12, "stats":Landroid/net/NetworkStats;
    if-eqz v12, :cond_0

    .line 1240
    new-instance v11, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {v0, v12}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    const/4 v6, 0x1

    new-array v8, v6, [I

    aput v4, v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v6, v11

    move-object v4, v11

    move/from16 v11, v16

    move-object/from16 v16, v12

    .end local v12    # "stats":Landroid/net/NetworkStats;
    .local v16, "stats":Landroid/net/NetworkStats;
    move v12, v14

    move-object/from16 v17, v13

    .end local v13    # "template":Landroid/net/NetworkTemplate;
    .local v17, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1239
    .end local v16    # "stats":Landroid/net/NetworkStats;
    .end local v17    # "template":Landroid/net/NetworkTemplate;
    .restart local v12    # "stats":Landroid/net/NetworkStats;
    .restart local v13    # "template":Landroid/net/NetworkTemplate;
    :cond_0
    move-object/from16 v16, v12

    move-object/from16 v17, v13

    .line 1234
    .end local v12    # "stats":Landroid/net/NetworkStats;
    .end local v13    # "template":Landroid/net/NetworkTemplate;
    .end local v14    # "ratType":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 1245
    :cond_1
    move-object/from16 v15, p1

    return-object v1
.end method

.method private getINotificationManagerService()Landroid/app/INotificationManager;
    .locals 4

    .line 936
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_0

    .line 938
    const-string v1, "notification"

    .line 939
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 938
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 943
    :try_start_1
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$SqdF4nK9ElmlOAiZ4Ki0RbhnyFQ;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$SqdF4nK9ElmlOAiZ4Ki0RbhnyFQ;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    goto :goto_0

    .line 948
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 953
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 954
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object v0

    .line 953
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .locals 4

    .line 958
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_0

    .line 960
    const-string v1, "procstats"

    .line 961
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 960
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 965
    :try_start_1
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$4tfrHblqmHrtPiB3WLHYY9Tgjx4;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$4tfrHblqmHrtPiB3WLHYY9Tgjx4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    goto :goto_0

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 975
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 976
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object v0

    .line 975
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private getIStoragedService()Landroid/os/IStoraged;
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_0

    .line 916
    const-string v1, "storaged"

    .line 917
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 916
    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 921
    :try_start_1
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    invoke-interface {v1}, Landroid/os/IStoraged;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$bGdd1XQKPBSlirlhMqL7Kyr4dKU;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$bGdd1XQKPBSlirlhMqL7Kyr4dKU;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    goto :goto_0

    .line 926
    :catch_0
    move-exception v1

    .line 927
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 931
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 932
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object v0

    .line 931
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private getIThermalService()Landroid/os/IThermalService;
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_0

    .line 894
    const-string v1, "thermalservice"

    .line 895
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 894
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    if-eqz v1, :cond_0

    .line 898
    :try_start_1
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$RPju9l8LZxvj1kR9SO_j3YArLwk;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$RPju9l8LZxvj1kR9SO_j3YArLwk;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    goto :goto_0

    .line 903
    :catch_0
    move-exception v1

    .line 904
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 909
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object v1

    .line 910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getNetworkStatsSession(Z)Landroid/net/INetworkStatsSession;
    .locals 5
    .param p1, "bypassRateLimit"    # Z

    .line 876
    nop

    .line 878
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 877
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 879
    .local v0, "networkStatsService":Landroid/net/INetworkStatsService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 882
    :cond_0
    const/4 v2, 0x4

    .line 883
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    .line 884
    :cond_1
    const/4 v3, 0x1

    :goto_0
    or-int/2addr v2, v3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 882
    invoke-interface {v0, v2, v3}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 885
    :catch_0
    move-exception v2

    .line 886
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "StatsPullAtomService"

    const-string v4, "Cannot get NetworkStats session"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    return-object v1
.end method

.method private getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .locals 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "includeTags"    # Z

    .line 1209
    move-object v1, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1210
    .local v2, "elapsedMillisSinceBoot":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 1211
    .local v4, "currentTimeInMillis":J
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-wide v6, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const-string v8, "netstats_uid_bucket_duration"

    invoke-static {v0, v8, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1219
    .local v13, "bucketDuration":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsSession(Z)Landroid/net/INetworkStatsSession;

    move-result-object v6

    sub-long v7, v4, v2

    sub-long v8, v7, v13

    .line 1220
    move-object/from16 v7, p1

    move-wide v10, v4

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .local v0, "stats":Landroid/net/NetworkStats;
    return-object v0

    .line 1224
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pulling netstats for template="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and includeTags="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " causes error"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "StatsPullAtomService"

    invoke-static {v9, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "transport"    # I

    .line 1194
    if-nez p1, :cond_0

    .line 1195
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileWithRatType(Ljava/lang/String;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    .line 1197
    :cond_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    :goto_0
    nop

    .line 1198
    .local v0, "template":Landroid/net/NetworkTemplate;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method private initAndRegisterNetworkStatsPullers()V
    .locals 3

    .line 836
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering NetworkStats pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 840
    const/16 v1, 0x2710

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 839
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 841
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 842
    const/16 v1, 0x2711

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 843
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 844
    const/16 v1, 0x2712

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 843
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 845
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 847
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2763

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 849
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 850
    const/16 v1, 0x2762

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 854
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 855
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 854
    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 857
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    .line 858
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    .line 859
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    .line 860
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    .line 861
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    .line 862
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    .line 863
    return-void
.end method

.method static synthetic lambda$pullCpuActiveTimeLocked$12(ILjava/util/List;ILjava/lang/Long;)V
    .locals 3
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "uid"    # I
    .param p3, "cpuActiveTimesMs"    # Ljava/lang/Long;

    .line 1596
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1597
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1598
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1599
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1600
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1601
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 1602
    .local v0, "e":Landroid/util/StatsEvent;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    return-void
.end method

.method static synthetic lambda$pullCpuClusterTimeLocked$13(ILjava/util/List;I[J)V
    .locals 4
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "uid"    # I
    .param p3, "cpuClusterTimesMs"    # [J

    .line 1624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 1625
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1626
    invoke-virtual {v1, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1627
    invoke-virtual {v1, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1628
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1629
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    aget-wide v2, p3, v0

    .line 1630
    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1631
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 1632
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    .end local v1    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$pullCpuTimePerUidFreqLocked$11(ILjava/util/List;I[J)V
    .locals 5
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "uid"    # I
    .param p3, "cpuFreqTimeMs"    # [J

    .line 1563
    const/4 v0, 0x0

    .local v0, "freqIndex":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1564
    aget-wide v1, p3, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1565
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1566
    invoke-virtual {v1, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1567
    invoke-virtual {v1, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1568
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1569
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    aget-wide v2, p3, v0

    .line 1570
    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1571
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 1572
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    .end local v1    # "e":Landroid/util/StatsEvent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1575
    .end local v0    # "freqIndex":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$pullCpuTimePerUidLocked$10(ILjava/util/List;I[J)V
    .locals 6
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "uid"    # I
    .param p3, "timesUs"    # [J

    .line 1533
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    .local v0, "userTimeUs":J
    const/4 v2, 0x1

    aget-wide v3, p3, v2

    .line 1534
    .local v3, "systemTimeUs":J
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1535
    invoke-virtual {v5, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1536
    invoke-virtual {v5, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1537
    invoke-virtual {v5, v2, v2}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1538
    invoke-virtual {v2, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1539
    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1540
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    .line 1541
    .local v2, "e":Landroid/util/StatsEvent;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    return-void
.end method

.method static synthetic lambda$pullDataBytesTransferLocked$6(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .param p1, "it"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1067
    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$pullDiskIOLocked$18(ILjava/util/List;IJJJJJJJJJJ)V
    .locals 16
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "uid"    # I
    .param p3, "fgCharsRead"    # J
    .param p5, "fgCharsWrite"    # J
    .param p7, "fgBytesRead"    # J
    .param p9, "fgBytesWrite"    # J
    .param p11, "bgCharsRead"    # J
    .param p13, "bgCharsWrite"    # J
    .param p15, "bgBytesRead"    # J
    .param p17, "bgBytesWrite"    # J
    .param p19, "fgFsync"    # J
    .param p21, "bgFsync"    # J

    .line 2663
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2664
    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2665
    move/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2666
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2667
    move-wide/from16 v3, p3

    invoke-virtual {v0, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2668
    move-wide/from16 v5, p5

    invoke-virtual {v0, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2669
    move-wide/from16 v7, p7

    invoke-virtual {v0, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2670
    move-wide/from16 v9, p9

    invoke-virtual {v0, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2671
    move-wide/from16 v11, p11

    invoke-virtual {v0, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2672
    move-wide/from16 v13, p13

    invoke-virtual {v0, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2673
    move-wide/from16 v1, p15

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2674
    move-wide/from16 v1, p17

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2675
    move-wide/from16 v1, p19

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2676
    move-wide/from16 v1, p21

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2677
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 2678
    .local v0, "e":Landroid/util/StatsEvent;
    move-object/from16 v15, p1

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2679
    return-void
.end method

.method static synthetic lambda$pullHealthHalLocked$19(ILjava/util/List;ILandroid/hardware/health/V2_0/HealthInfo;)V
    .locals 3
    .param p0, "atomTag"    # I
    .param p1, "pulledData"    # Ljava/util/List;
    .param p2, "result"    # I
    .param p3, "value"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 3808
    const/16 v0, 0x2723

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2724

    if-eq p0, v0, :cond_3

    const/16 v0, 0x272e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x273b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x273d

    if-ne p0, v0, :cond_0

    .line 3822
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 3823
    .local v0, "pulledValue":I
    goto :goto_0

    .line 3825
    .end local v0    # "pulledValue":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid atomTag in healthHal puller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3810
    :cond_1
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 3811
    .restart local v0    # "pulledValue":I
    goto :goto_0

    .line 3819
    .end local v0    # "pulledValue":I
    :cond_2
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 3820
    .restart local v0    # "pulledValue":I
    goto :goto_0

    .line 3816
    .end local v0    # "pulledValue":I
    :cond_3
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 3817
    .restart local v0    # "pulledValue":I
    goto :goto_0

    .line 3813
    .end local v0    # "pulledValue":I
    :cond_4
    iget-object v0, p3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 3814
    .restart local v0    # "pulledValue":I
    nop

    .line 3828
    :goto_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3829
    invoke-virtual {v1, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3830
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3831
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 3832
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3833
    return-void
.end method

.method static synthetic lambda$pullProcessMemoryHighWaterMarkLocked$15(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 1
    .param p0, "processCmdlines"    # Landroid/util/SparseArray;
    .param p1, "managedProcess"    # Landroid/app/ProcessMemoryState;

    .line 1873
    iget v0, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method static synthetic lambda$pullProcessMemorySnapshotLocked$16(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 1
    .param p0, "processCmdlines"    # Landroid/util/SparseArray;
    .param p1, "managedProcess"    # Landroid/app/ProcessMemoryState;

    .line 1933
    iget v0, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method static synthetic lambda$pullWifiActivityInfoLocked$14(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2
    .param p0, "wifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1663
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1664
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1665
    return-void
.end method

.method static synthetic lambda$readProcStatsHighWaterMark$17(ILjava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "section"    # I
    .param p1, "d"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 2628
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

.method static synthetic lambda$sliceNetworkStatsByFgbg$7(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 1
    .param p0, "newEntry"    # Landroid/net/NetworkStats$Entry;
    .param p1, "oldEntry"    # Landroid/net/NetworkStats$Entry;

    .line 1251
    iget v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 1252
    return-void
.end method

.method static synthetic lambda$sliceNetworkStatsByUidAndFgbg$8(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 1
    .param p0, "newEntry"    # Landroid/net/NetworkStats$Entry;
    .param p1, "oldEntry"    # Landroid/net/NetworkStats$Entry;

    .line 1258
    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1259
    iget v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 1260
    return-void
.end method

.method static synthetic lambda$sliceNetworkStatsByUidTagAndMetered$9(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 1
    .param p0, "newEntry"    # Landroid/net/NetworkStats$Entry;
    .param p1, "oldEntry"    # Landroid/net/NetworkStats$Entry;

    .line 1266
    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1267
    iget v0, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1268
    iget v0, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iput v0, p0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1269
    return-void
.end method

.method private milliAmpHrsToNanoAmpSecs(D)J
    .locals 4
    .param p1, "mAh"    # D

    .line 2839
    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private native nativeInit()V
.end method

.method private processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p3, "uid"    # I
    .param p4, "samplingRatio"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3604
    .local p2, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const/4 v0, 0x0

    .line 3605
    .local v0, "firstChar":I
    if-eqz p6, :cond_0

    invoke-virtual {p6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3606
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 3607
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 3608
    add-int/lit8 v0, v0, 0x1

    .line 3611
    :cond_0
    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3612
    if-nez p6, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    .line 3614
    .local v1, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge v2, p4, :cond_2

    .line 3615
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3617
    :cond_2
    return-void
.end method

.method private processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .locals 20
    .param p1, "histOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "atomTag"    # I
    .param p3, "samplingRatio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;"
        }
    .end annotation

    .line 3572
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3573
    .local v1, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const/4 v2, 0x0

    move v9, v2

    .local v9, "uidIdx":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    if-ge v9, v2, :cond_5

    .line 3574
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v11

    .line 3575
    .local v11, "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v12

    .line 3576
    .local v12, "uid":I
    const/4 v2, 0x0

    move v13, v2

    .local v13, "pkgIdx":I
    :goto_1
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 3577
    invoke-virtual {v11, v13}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v14

    .line 3578
    .local v14, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    const/16 v2, 0x275b

    if-ne v0, v2, :cond_2

    .line 3579
    const/4 v2, 0x0

    move v15, v2

    .line 3580
    .local v15, "attributionIdx":I
    :goto_2
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 3581
    nop

    .line 3582
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v8

    .line 3583
    .local v8, "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    const/4 v2, 0x0

    move v7, v2

    .local v7, "opIdx":I
    :goto_3
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 3584
    invoke-virtual {v8, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v16

    .line 3585
    .local v16, "op":Landroid/app/AppOpsManager$HistoricalOp;
    nop

    .line 3586
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v18

    .line 3585
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v1

    move v5, v12

    move/from16 v6, p3

    move/from16 v19, v7

    .end local v7    # "opIdx":I
    .local v19, "opIdx":I
    move-object/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .local v17, "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 3583
    .end local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v8, v17

    .end local v19    # "opIdx":I
    .restart local v7    # "opIdx":I
    goto :goto_3

    .end local v17    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .restart local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_0
    move/from16 v19, v7

    move-object/from16 v17, v8

    .line 3580
    .end local v7    # "opIdx":I
    .end local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v15    # "attributionIdx":I
    :cond_1
    goto :goto_5

    .line 3589
    :cond_2
    const/16 v2, 0x274c

    if-ne v0, v2, :cond_3

    .line 3590
    const/4 v2, 0x0

    move v15, v2

    .local v15, "opIdx":I
    :goto_4
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 3591
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v16

    .line 3592
    .restart local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    nop

    .line 3593
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 3592
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v1

    move v5, v12

    move/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 3590
    .end local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3576
    .end local v14    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v15    # "opIdx":I
    :cond_3
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3573
    .end local v11    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v12    # "uid":I
    .end local v13    # "pkgIdx":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v10, p1

    .line 3598
    .end local v9    # "uidIdx":I
    return-object v1
.end method

.method private pullDataBytesTransferLocked(ILjava/util/List;)I
    .locals 19
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1058
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v3

    .line 1060
    .local v3, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v4, 0x1

    const-string v5, ", return."

    const-string v6, "StatsPullAtomService"

    if-nez v3, :cond_0

    .line 1061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current snapshot is null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return v4

    .line 1065
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1066
    .local v8, "item":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$p7uT0a71EezJS5cR_M51T9WNkb4;

    invoke-direct {v10, v8}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$p7uT0a71EezJS5cR_M51T9WNkb4;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v9, v10}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1071
    .local v9, "baseline":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    if-nez v9, :cond_1

    .line 1072
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "baseline is null for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return v4

    .line 1075
    :cond_1
    new-instance v18, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v10, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v11, v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 1076
    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkStats;->removeEmptyEntries()Landroid/net/NetworkStats;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-boolean v13, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v14, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v15, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget v10, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget-object v4, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    move/from16 v16, v10

    move-object/from16 v10, v18

    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;)V

    move-object/from16 v4, v18

    .line 1081
    .local v4, "diff":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    iget-object v10, v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 1083
    :cond_2
    const/16 v10, 0x2762

    if-eq v1, v10, :cond_4

    const/16 v10, 0x2763

    if-eq v1, v10, :cond_3

    .line 1091
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_1

    .line 1085
    :cond_3
    invoke-direct {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1086
    goto :goto_1

    .line 1088
    :cond_4
    invoke-direct {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1089
    nop

    .line 1093
    .end local v4    # "diff":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .end local v8    # "item":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .end local v9    # "baseline":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1094
    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method private pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .locals 16
    .param p1, "modality"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2505
    .local p3, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2506
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 2507
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v4, 0x0

    .line 2509
    .local v4, "faceManager":Landroid/hardware/face/FaceManager;
    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2510
    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    move-object v5, v0

    goto :goto_0

    .line 2509
    :cond_0
    move-object v5, v0

    .line 2512
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .local v5, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :goto_0
    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2513
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/face/FaceManager;

    .line 2516
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    if-nez v5, :cond_2

    .line 2517
    return v0

    .line 2519
    :cond_2
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    if-nez v4, :cond_3

    .line 2520
    return v0

    .line 2522
    :cond_3
    iget-object v7, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 2523
    .local v7, "userManager":Landroid/os/UserManager;
    if-nez v7, :cond_4

    .line 2524
    return v0

    .line 2527
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2529
    .local v8, "token":J
    :try_start_0
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 2530
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 2531
    .local v12, "userId":I
    const/4 v13, 0x0

    .line 2532
    .local v13, "numEnrolled":I
    if-ne v2, v0, :cond_5

    .line 2533
    invoke-virtual {v5, v12}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v13, v14

    goto :goto_2

    .line 2534
    :cond_5
    if-ne v2, v6, :cond_6

    .line 2535
    invoke-virtual {v4, v12}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v13, v14

    .line 2539
    :goto_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2540
    move/from16 v15, p2

    :try_start_1
    invoke-virtual {v14, v15}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v14

    .line 2541
    invoke-virtual {v14, v12}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v14

    .line 2542
    invoke-virtual {v14, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v14

    .line 2543
    invoke-virtual {v14}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2544
    .local v14, "e":Landroid/util/StatsEvent;
    move-object/from16 v6, p3

    :try_start_2
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2545
    const/4 v6, 0x4

    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    .end local v14    # "e":Landroid/util/StatsEvent;
    goto :goto_1

    .line 2547
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2537
    .restart local v11    # "user":Landroid/content/pm/UserInfo;
    .restart local v12    # "userId":I
    .restart local v13    # "numEnrolled":I
    :cond_6
    move/from16 v15, p2

    move-object/from16 v6, p3

    .line 2547
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    return v0

    .line 2547
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    :cond_7
    move/from16 v15, p2

    move-object/from16 v6, p3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2548
    nop

    .line 2549
    const/4 v0, 0x0

    return v0

    .line 2547
    :catchall_2
    move-exception v0

    move/from16 v15, p2

    :goto_3
    move-object/from16 v6, p3

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2548
    throw v0
.end method

.method private pullProcStatsLocked(IILjava/util/List;)I
    .locals 20
    .param p1, "section"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2573
    .local p3, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v9, p1

    const-string v0, "_"

    const-string v10, "/"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v11

    .line 2574
    .local v11, "processStatsService":Lcom/android/internal/app/procstats/IProcessStats;
    const/4 v12, 0x1

    if-nez v11, :cond_0

    .line 2575
    return v12

    .line 2578
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2581
    .local v13, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v2

    move-wide v5, v2

    .line 2582
    .local v5, "lastHighWaterMark":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2584
    .local v7, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/util/proto/ProtoOutputStream;

    move-object v15, v2

    .line 2585
    .local v15, "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v15
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ge v2, v3, :cond_1

    .line 2586
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v3, v15, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2585
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2619
    .end local v2    # "i":I
    .end local v5    # "lastHighWaterMark":J
    .end local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception v0

    move-wide/from16 v18, v13

    move/from16 v14, p2

    goto/16 :goto_6

    .line 2615
    :catch_0
    move-exception v0

    move-wide/from16 v18, v13

    move/from16 v14, p2

    goto/16 :goto_5

    .line 2589
    .restart local v5    # "lastHighWaterMark":J
    .restart local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v3, v2

    .line 2591
    .local v3, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    const/16 v16, 0x1

    move-object v2, v11

    move-object/from16 v17, v3

    .end local v3    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v17, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-wide v3, v5

    move-wide/from16 v18, v13

    move-wide v12, v5

    .end local v5    # "lastHighWaterMark":J
    .end local v13    # "token":J
    .local v12, "lastHighWaterMark":J
    .local v18, "token":J
    move/from16 v5, p1

    move/from16 v6, v16

    move v14, v8

    move-object/from16 v8, v17

    :try_start_3
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v2

    .line 2593
    .local v2, "highWaterMark":J
    const-wide/32 v4, 0xe666

    move-object/from16 v6, v17

    .end local v17    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v6, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v6, v15, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 2595
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v15
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ge v4, v5, :cond_3

    .line 2596
    :try_start_4
    aget-object v5, v15, v4

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    .line 2597
    .local v5, "bytes":[B
    array-length v8, v5

    if-lez v8, :cond_2

    .line 2598
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2599
    move/from16 v14, p2

    :try_start_5
    invoke-virtual {v8, v14}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2600
    invoke-virtual {v8, v5}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2605
    invoke-virtual {v8, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2606
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2607
    .local v8, "e":Landroid/util/StatsEvent;
    move-object/from16 v17, v5

    move-object/from16 v5, p3

    .end local v5    # "bytes":[B
    .local v17, "bytes":[B
    :try_start_6
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2619
    .end local v2    # "highWaterMark":J
    .end local v4    # "i":I
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v8    # "e":Landroid/util/StatsEvent;
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    .end local v17    # "bytes":[B
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2615
    :catch_1
    move-exception v0

    goto :goto_4

    .line 2597
    .restart local v2    # "highWaterMark":J
    .restart local v4    # "i":I
    .restart local v5    # "bytes":[B
    .restart local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .restart local v12    # "lastHighWaterMark":J
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_2
    move/from16 v14, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    .line 2595
    .end local v5    # "bytes":[B
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v14, 0x0

    goto :goto_1

    .line 2619
    .end local v2    # "highWaterMark":J
    .end local v4    # "i":I
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :catchall_2
    move-exception v0

    move/from16 v14, p2

    :goto_3
    move-object/from16 v5, p3

    goto/16 :goto_6

    .line 2615
    :catch_2
    move-exception v0

    move/from16 v14, p2

    :goto_4
    move-object/from16 v5, p3

    goto :goto_5

    .line 2595
    .restart local v2    # "highWaterMark":J
    .restart local v4    # "i":I
    .restart local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .restart local v12    # "lastHighWaterMark":J
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_3
    move/from16 v14, p2

    move-object/from16 v5, p3

    .line 2611
    .end local v4    # "i":I
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2613
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2619
    nop

    .end local v2    # "highWaterMark":J
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v7    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    nop

    .line 2621
    const/4 v0, 0x0

    return v0

    .line 2615
    :catch_3
    move-exception v0

    goto :goto_5

    .line 2619
    :catchall_3
    move-exception v0

    move/from16 v14, p2

    goto :goto_6

    .line 2615
    :catch_4
    move-exception v0

    move/from16 v14, p2

    goto :goto_5

    .line 2619
    .end local v18    # "token":J
    .restart local v13    # "token":J
    :catchall_4
    move-exception v0

    move-wide/from16 v18, v13

    move/from16 v14, p2

    .end local v13    # "token":J
    .restart local v18    # "token":J
    goto :goto_6

    .line 2615
    .end local v18    # "token":J
    .restart local v13    # "token":J
    :catch_5
    move-exception v0

    move-wide/from16 v18, v13

    move/from16 v14, p2

    .line 2616
    .end local v13    # "token":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "token":J
    :goto_5
    :try_start_7
    const-string v2, "StatsPullAtomService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2617
    nop

    .line 2619
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2617
    const/4 v2, 0x1

    return v2

    .line 2619
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v0

    :goto_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    throw v0
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3669
    const/4 v0, 0x0

    .line 3670
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 3671
    .local v1, "initialAvail":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4000

    :goto_0
    new-array v2, v2, [B

    .line 3673
    .local v2, "data":[B
    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3675
    .local v3, "amt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsPullAtomService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 3679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** FINISHED READING: pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    aput v0, p1, v4

    .line 3682
    return-object v2

    .line 3684
    :cond_1
    add-int/2addr v0, v3

    .line 3685
    array-length v6, v2

    if-lt v0, v6, :cond_2

    .line 3686
    add-int/lit16 v6, v0, 0x4000

    new-array v6, v6, [B

    .line 3688
    .local v6, "newData":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes to new array len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    invoke-static {v2, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3691
    move-object v2, v6

    .line 3693
    .end local v3    # "amt":I
    .end local v6    # "newData":[B
    :cond_2
    goto :goto_1
.end method

.method private readProcStatsHighWaterMark(I)J
    .locals 7
    .param p1, "section"    # I

    .line 2627
    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$eb4Q1ue_bVXbLIAV2RxP5dbSYUw;

    invoke-direct {v4, p1}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$eb4Q1ue_bVXbLIAV2RxP5dbSYUw;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 2630
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    .line 2633
    :cond_0
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 2634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only 1 file expected for high water mark. Found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
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

    .line 2631
    :cond_2
    :goto_0
    return-wide v1

    .line 2639
    .end local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v3

    .line 2640
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse file name."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2637
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 2638
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "Failed to get procstats high watermark file."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2641
    .end local v3    # "e":Ljava/lang/SecurityException;
    nop

    .line 2642
    :goto_1
    return-wide v1
.end method

.method private registerAppOps()V
    .locals 5

    .line 3377
    const/16 v0, 0x274c

    .line 3378
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3384
    return-void
.end method

.method private registerAppSize()V
    .locals 5

    .line 2336
    const/16 v0, 0x272b

    .line 2337
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2343
    return-void
.end method

.method private registerAppsOnExternalStorageInfo()V
    .locals 5

    .line 3267
    const/16 v0, 0x2749

    .line 3268
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3274
    return-void
.end method

.method private registerAttributedAppOps()V
    .locals 5

    .line 3482
    const/16 v0, 0x275b

    .line 3483
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3489
    return-void
.end method

.method private registerBatteryCycleCount()V
    .locals 5

    .line 3791
    const/16 v0, 0x273d

    .line 3792
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3798
    return-void
.end method

.method private registerBatteryLevel()V
    .locals 5

    .line 3751
    const/16 v0, 0x273b

    .line 3752
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3758
    return-void
.end method

.method private registerBatteryVoltage()V
    .locals 5

    .line 3781
    const/16 v0, 0x272e

    .line 3782
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3788
    return-void
.end method

.method private registerBinderCallsStats()V
    .locals 5

    .line 2104
    const/16 v0, 0x2726

    .line 2105
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2106
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2107
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2108
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2114
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x8
        0xc
    .end array-data
.end method

.method private registerBinderCallsStatsExceptions()V
    .locals 5

    .line 2151
    const/16 v0, 0x2727

    .line 2152
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2158
    return-void
.end method

.method private registerBluetoothActivityInfo()V
    .locals 5

    .line 1729
    const/16 v0, 0x2717

    .line 1730
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1736
    return-void
.end method

.method private registerBluetoothBytesTransfer()V
    .locals 5

    .line 1388
    const/16 v0, 0x2716

    .line 1389
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1390
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1391
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1392
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1398
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private registerBuildInformation()V
    .locals 5

    .line 3011
    const/16 v0, 0x273c

    .line 3012
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3018
    return-void
.end method

.method private registerBytesTransferByTagAndMetered()V
    .locals 5

    .line 1362
    const/16 v0, 0x2763

    .line 1363
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1364
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1365
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1366
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1369
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1366
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1372
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private registerCategorySize()V
    .locals 5

    .line 2380
    const/16 v0, 0x272c

    .line 2381
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2387
    return-void
.end method

.method private registerCoolingDevice()V
    .locals 5

    .line 2067
    const/16 v0, 0x274b

    .line 2068
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2074
    return-void
.end method

.method private registerCpuActiveTime()V
    .locals 5

    .line 1582
    const/16 v0, 0x2720

    .line 1583
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 1584
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1585
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1586
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1592
    return-void
.end method

.method private registerCpuClusterTime()V
    .locals 5

    .line 1610
    const/16 v0, 0x2721

    .line 1611
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1612
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1613
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1614
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1620
    return-void
.end method

.method private registerCpuTimePerFreq()V
    .locals 5

    .line 1488
    const/16 v0, 0x2718

    .line 1489
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1490
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1491
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1492
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1498
    return-void
.end method

.method private registerCpuTimePerThreadFreq()V
    .locals 5

    .line 2742
    const/16 v0, 0x2735

    .line 2743
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2744
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2745
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2746
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2752
    return-void

    :array_0
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method private registerCpuTimePerUid()V
    .locals 5

    .line 1519
    const/16 v0, 0x2719

    .line 1520
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1521
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1522
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1523
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1529
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private registerCpuTimePerUidFreq()V
    .locals 5

    .line 1549
    const/16 v0, 0x271a

    .line 1550
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1551
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1552
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1553
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1559
    return-void
.end method

.method private registerDangerousPermissionState()V
    .locals 5

    .line 3097
    const/16 v0, 0x2742

    .line 3098
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3104
    return-void
.end method

.method private registerDangerousPermissionStateSampled()V
    .locals 5

    .line 3741
    const/16 v0, 0x2753

    .line 3742
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3748
    return-void
.end method

.method private registerDataUsageBytesTransfer()V
    .locals 5

    .line 1375
    const/16 v0, 0x2762

    .line 1376
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1377
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1378
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1379
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1382
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1379
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1385
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerDebugElapsedClock()V
    .locals 5

    .line 2927
    const/16 v0, 0x273e

    .line 2928
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2929
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2930
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2931
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2937
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private registerDebugFailingElapsedClock()V
    .locals 5

    .line 2974
    const/16 v0, 0x273f

    .line 2975
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2976
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2977
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2978
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2984
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private registerDeviceCalculatedPowerBlameOther()V
    .locals 5

    .line 2894
    const/16 v0, 0x2739

    .line 2895
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2901
    return-void
.end method

.method private registerDeviceCalculatedPowerBlameUid()V
    .locals 5

    .line 2863
    const/16 v0, 0x2738

    .line 2864
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2870
    return-void
.end method

.method private registerDeviceCalculatedPowerUse()V
    .locals 5

    .line 2843
    const/16 v0, 0x2737

    .line 2844
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2850
    return-void
.end method

.method private registerDirectoryUsage()V
    .locals 5

    .line 2295
    const/16 v0, 0x272a

    .line 2296
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2302
    return-void
.end method

.method private registerDiskIO()V
    .locals 5

    .line 2646
    const/16 v0, 0x2730

    .line 2647
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2648
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2649
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2650
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2651
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2657
    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method private registerDiskStats()V
    .locals 5

    .line 2229
    const/16 v0, 0x2729

    .line 2230
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2236
    return-void
.end method

.method private registerExternalStorageInfo()V
    .locals 5

    .line 3217
    const/16 v0, 0x2745

    .line 3218
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3224
    return-void
.end method

.method private registerFaceSettings()V
    .locals 5

    .line 3323
    const/16 v0, 0x274a

    .line 3324
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3330
    return-void
.end method

.method private registerFullBatteryCapacity()V
    .locals 5

    .line 3771
    const/16 v0, 0x2724

    .line 3772
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3778
    return-void
.end method

.method private registerIonHeapSize()V
    .locals 5

    .line 1979
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1980
    return-void

    .line 1982
    :cond_0
    const/16 v0, 0x2756

    .line 1983
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1989
    return-void
.end method

.method private registerKernelWakelock()V
    .locals 5

    .line 1460
    const/16 v0, 0x2714

    .line 1461
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1467
    return-void
.end method

.method private registerLooperStats()V
    .locals 5

    .line 2183
    const/16 v0, 0x2728

    .line 2184
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2185
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2186
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2187
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2193
    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private registerMobileBytesTransfer()V
    .locals 5

    .line 1336
    const/16 v0, 0x2712

    .line 1337
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1338
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1339
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1340
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1346
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerMobileBytesTransferBackground()V
    .locals 5

    .line 1349
    const/16 v0, 0x2713

    .line 1350
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1351
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1352
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1353
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1359
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private registerModemActivityInfo()V
    .locals 5

    .line 1691
    const/16 v0, 0x271c

    .line 1692
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1698
    return-void
.end method

.method private registerNotificationRemoteViews()V
    .locals 5

    .line 3697
    const/16 v0, 0x2752

    .line 3698
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3704
    return-void
.end method

.method private registerNumFacesEnrolled()V
    .locals 5

    .line 2494
    const/16 v0, 0x2740

    .line 2495
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2501
    return-void
.end method

.method private registerNumFingerprintsEnrolled()V
    .locals 5

    .line 2484
    const/16 v0, 0x272f

    .line 2485
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2491
    return-void
.end method

.method private registerPowerProfile()V
    .locals 5

    .line 2684
    const/16 v0, 0x2731

    .line 2685
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2691
    return-void
.end method

.method private registerProcStats()V
    .locals 5

    .line 2553
    const/16 v0, 0x272d

    .line 2554
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2560
    return-void
.end method

.method private registerProcStatsPkgProc()V
    .locals 5

    .line 2563
    const/16 v0, 0x2732

    .line 2564
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2570
    return-void
.end method

.method private registerProcessCpuTime()V
    .locals 5

    .line 2707
    const/16 v0, 0x2733

    .line 2709
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 2710
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2711
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2712
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2718
    return-void
.end method

.method private registerProcessMemoryHighWaterMark()V
    .locals 5

    .line 1842
    const/16 v0, 0x273a

    .line 1843
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1849
    return-void
.end method

.method private registerProcessMemorySnapshot()V
    .locals 5

    .line 1897
    const/16 v0, 0x2750

    .line 1898
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1904
    return-void
.end method

.method private registerProcessMemoryState()V
    .locals 5

    .line 1799
    const/16 v0, 0x271d

    .line 1800
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1801
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1802
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1803
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1809
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private registerProcessSystemIonHeapSize()V
    .locals 5

    .line 2002
    const/16 v0, 0x274d

    .line 2003
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2009
    return-void
.end method

.method private registerRemainingBatteryCapacity()V
    .locals 5

    .line 3761
    const/16 v0, 0x2723

    .line 3762
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3768
    return-void
.end method

.method private registerRoleHolder()V
    .locals 5

    .line 3038
    const/16 v0, 0x2741

    .line 3039
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3045
    return-void
.end method

.method private registerRuntimeAppOpAccessMessage()V
    .locals 5

    .line 3387
    const/16 v0, 0x2755

    .line 3388
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3394
    return-void
.end method

.method private registerSettingsStats()V
    .locals 5

    .line 3841
    const/16 v0, 0x2760

    .line 3842
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3848
    return-void
.end method

.method private registerSystemElapsedRealtime()V
    .locals 5

    .line 1757
    const/16 v0, 0x271e

    .line 1758
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 1759
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1760
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1761
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1762
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1768
    return-void
.end method

.method private registerSystemIonHeapSize()V
    .locals 5

    .line 1959
    const/16 v0, 0x2748

    .line 1960
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1966
    return-void
.end method

.method private registerSystemUptime()V
    .locals 5

    .line 1780
    const/16 v0, 0x271f

    .line 1781
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1787
    return-void
.end method

.method private registerTemperature()V
    .locals 5

    .line 2029
    const/16 v0, 0x2725

    .line 2030
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2036
    return-void
.end method

.method private registerTimeZoneDataInfo()V
    .locals 5

    .line 3190
    const/16 v0, 0x2744

    .line 3191
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3197
    return-void
.end method

.method private registerWifiActivityInfo()V
    .locals 5

    .line 1639
    const/16 v0, 0x271b

    .line 1640
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1646
    return-void
.end method

.method private registerWifiBytesTransfer()V
    .locals 5

    .line 980
    const/16 v0, 0x2710

    .line 981
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 982
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 983
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 984
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 990
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerWifiBytesTransferBackground()V
    .locals 5

    .line 1323
    const/16 v0, 0x2711

    .line 1324
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1325
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1326
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1327
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1333
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private sampleAppOps(Ljava/util/List;Ljava/util/List;II)I
    .locals 9
    .param p3, "atomTag"    # I
    .param p4, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II)I"
        }
    .end annotation

    .line 3443
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3444
    .local v0, "nOps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3445
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3446
    .local v2, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-lt v3, p4, :cond_0

    .line 3447
    goto/16 :goto_1

    .line 3449
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 3450
    .local v3, "e":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v3, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 3451
    iget v4, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3452
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 3453
    iget-object v4, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3454
    const/16 v4, 0x275b

    if-ne p3, v4, :cond_1

    .line 3455
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3457
    :cond_1
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3458
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 3459
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 3460
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 3461
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 3462
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 3463
    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 3464
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v6, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 3466
    if-ne p3, v4, :cond_2

    .line 3467
    invoke-virtual {v3, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3469
    :cond_2
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    .end local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v3    # "e":Landroid/util/StatsEvent$Builder;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3471
    .end local v1    # "i":I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_4

    .line 3472
    mul-int/lit16 v1, p4, 0x1f4

    .line 3473
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    add-int/lit8 v3, p4, -0x1

    .line 3472
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 3475
    .local v1, "adjustedSamplingRate":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3476
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v2

    return v2

    .line 3478
    .end local v1    # "adjustedSamplingRate":I
    :cond_4
    return p4
.end method

.method private sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1294
    .local p2, "slicer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;>;"
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1296
    .local v0, "ret":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1297
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1298
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1299
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 1300
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1301
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1302
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1303
    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1305
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1306
    .local v2, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1307
    invoke-virtual {p1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1308
    if-eqz p2, :cond_0

    .line 1309
    invoke-interface {p2, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1312
    :cond_0
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1313
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1314
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1315
    iget-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1317
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1319
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method private sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1249
    sget-object v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$ig4lvwvWpcGcnTfyysmBmnE31Y0;->INSTANCE:Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$ig4lvwvWpcGcnTfyysmBmnE31Y0;

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1256
    sget-object v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;->INSTANCE:Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg;

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1264
    sget-object v0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$XZ9Q7OtKddIKuUpO0rhZztz_J7M;->INSTANCE:Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$XZ9Q7OtKddIKuUpO0rhZztz_J7M;

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/BiConsumer;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .locals 5
    .param p0, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3658
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3659
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 3660
    .local v2, "len":[I
    invoke-static {v0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 3661
    .local v3, "stats":[B
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 3662
    invoke-virtual {v4, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    aget v1, v2, v1

    .line 3663
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3664
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 3665
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3666
    return-void
.end method


# virtual methods
.method initializePullersState()V
    .locals 10

    .line 680
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 681
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 682
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 683
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 684
    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 685
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 686
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 689
    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 692
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 693
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 696
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 697
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 698
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 699
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 702
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 703
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 706
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 707
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    .line 708
    .local v2, "numClusters":I
    new-array v3, v2, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 709
    const/4 v3, 0x0

    .line 710
    .local v3, "firstCpuOfCluster":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 711
    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v5

    .line 712
    .local v5, "numSpeedSteps":I
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v7, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v7, v3, v5}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v7, v6, v4

    .line 714
    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 710
    .end local v5    # "numSpeedSteps":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 718
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 719
    invoke-static {v4}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 722
    new-instance v4, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 724
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    goto :goto_1

    .line 725
    :catch_0
    move-exception v4

    .line 726
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "StatsPullAtomService"

    const-string v6, "failed to initialize healthHalWrapper"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 731
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .local v5, "op":I
    :goto_2
    const/16 v6, 0x64

    if-ge v5, v6, :cond_3

    .line 732
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v6

    .line 733
    .local v6, "perm":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 734
    goto :goto_3

    .line 738
    :cond_1
    :try_start_1
    invoke-virtual {v4, v6, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v7

    .line 739
    .local v7, "permInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 740
    iget-object v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :cond_2
    goto :goto_3

    .line 742
    .end local v7    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v7

    .line 743
    .local v7, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 731
    .end local v6    # "perm":Ljava/lang/String;
    .end local v7    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 747
    .end local v5    # "op":I
    :cond_3
    return-void
.end method

.method public synthetic lambda$getINotificationManagerService$4$StatsPullAtomService()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 946
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getIProcessStatsService$5$StatsPullAtomService()V
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 968
    monitor-exit v0

    .line 969
    return-void

    .line 968
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getIStoragedService$3$StatsPullAtomService()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 924
    monitor-exit v0

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getIThermalService$2$StatsPullAtomService()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 901
    monitor-exit v0

    .line 902
    return-void

    .line 901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onBootPhase$0$StatsPullAtomService()V
    .locals 0

    .line 665
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->nativeInit()V

    .line 666
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    .line 667
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    .line 668
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    .line 669
    return-void
.end method

.method public synthetic lambda$onBootPhase$1$StatsPullAtomService()V
    .locals 0

    .line 672
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 662
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 663
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 664
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$DD__7RQZDPvJeL9pnb_7J1voUNE;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$DD__7RQZDPvJeL9pnb_7J1voUNE;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 670
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 672
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$w2J9UcZX1E4P1ogWSvuoTC2auDE;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$w2J9UcZX1E4P1ogWSvuoTC2auDE;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 674
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 658
    return-void
.end method

.method pullAppOpsLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3415
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3417
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3419
    .local v3, "appOps":Landroid/app/AppOpsManager;
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3420
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v6, 0x9

    .line 3421
    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3422
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;

    invoke-direct {v7, v4}, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3423
    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3426
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    const/16 v7, 0x64

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v8

    .line 3427
    .local v8, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    invoke-direct {p0, p2, v8, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v9

    .line 3428
    .local v9, "samplingRate":I
    if-eq v9, v7, :cond_0

    .line 3429
    const-string v7, "Atom 10060 downsampled - too many dimensions"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3436
    .end local v3    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v5    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v6    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v8    # "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    .end local v9    # "samplingRate":I
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3437
    nop

    .line 3438
    const/4 v0, 0x0

    return v0

    .line 3431
    :catchall_0
    move-exception v3

    .line 3433
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "Could not read appops"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3434
    const/4 v0, 0x1

    .line 3436
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3434
    return v0

    .line 3436
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3437
    throw v0
.end method

.method pullAppSizeLocked(ILjava/util/List;)I
    .locals 17
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2347
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "StatsPullAtomService"

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2348
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2349
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "queryTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 2350
    .local v7, "cache_time":J
    const-string v4, "packageNames"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2351
    .local v4, "pkg_names":Lorg/json/JSONArray;
    const-string v9, "appSizes"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2352
    .local v9, "app_sizes":Lorg/json/JSONArray;
    const-string v10, "appDataSizes"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 2353
    .local v10, "app_data_sizes":Lorg/json/JSONArray;
    const-string v11, "cacheSizes"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 2355
    .local v11, "app_cache_sizes":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 2356
    .local v12, "length":I
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ne v13, v12, :cond_2

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ne v13, v12, :cond_2

    .line 2357
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-eq v13, v12, :cond_0

    move/from16 v15, p1

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v3, p2

    goto :goto_1

    .line 2361
    :cond_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_1

    .line 2362
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2363
    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v14, v15}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v14

    .line 2364
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2365
    move-object v14, v3

    move-object/from16 v16, v4

    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .local v14, "json":Lorg/json/JSONObject;
    .local v16, "pkg_names":Lorg/json/JSONArray;
    invoke-virtual {v9, v13, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2366
    invoke-virtual {v10, v13, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2367
    invoke-virtual {v11, v13, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2368
    invoke-virtual {v2, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2369
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2370
    .local v2, "e":Landroid/util/StatsEvent;
    move-object/from16 v3, p2

    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2361
    nop

    .end local v2    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v13, v13, 0x1

    move-object v3, v14

    move-object/from16 v4, v16

    goto :goto_0

    .line 2372
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v7    # "cache_time":J
    .end local v9    # "app_sizes":Lorg/json/JSONArray;
    .end local v10    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v13    # "i":I
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v16    # "pkg_names":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2361
    .restart local v0    # "jsonStr":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "pkg_names":Lorg/json/JSONArray;
    .restart local v7    # "cache_time":J
    .restart local v9    # "app_sizes":Lorg/json/JSONArray;
    .restart local v10    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v12    # "length":I
    .restart local v13    # "i":I
    :cond_1
    move/from16 v15, p1

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v3, p2

    .line 2375
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .end local v7    # "cache_time":J
    .end local v9    # "app_sizes":Lorg/json/JSONArray;
    .end local v10    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v13    # "i":I
    nop

    .line 2376
    const/4 v0, 0x0

    return v0

    .line 2356
    .restart local v0    # "jsonStr":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "pkg_names":Lorg/json/JSONArray;
    .restart local v7    # "cache_time":J
    .restart local v9    # "app_sizes":Lorg/json/JSONArray;
    .restart local v10    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v12    # "length":I
    :cond_2
    move/from16 v15, p1

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v3, p2

    .line 2358
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .restart local v14    # "json":Lorg/json/JSONObject;
    .restart local v16    # "pkg_names":Lorg/json/JSONArray;
    :goto_1
    const-string v2, "formatting error in diskstats cache file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2359
    const/4 v1, 0x1

    return v1

    .line 2372
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v7    # "cache_time":J
    .end local v9    # "app_sizes":Lorg/json/JSONArray;
    .end local v10    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v16    # "pkg_names":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v15, p1

    :goto_2
    move-object/from16 v3, p2

    .line 2373
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "Unable to read diskstats cache file within pullAppSize"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v1, 0x1

    return v1
.end method

.method pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3277
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 3278
    const/4 v0, 0x1

    return v0

    .line 3281
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3282
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3283
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 3284
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 3285
    .local v5, "storageUuid":Ljava/util/UUID;
    if-nez v5, :cond_1

    .line 3286
    goto :goto_0

    .line 3289
    :cond_1
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 3290
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3289
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 3291
    .local v6, "volumeInfo":Landroid/os/storage/VolumeInfo;
    if-nez v6, :cond_2

    .line 3292
    goto :goto_0

    .line 3295
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    .line 3296
    .local v7, "diskInfo":Landroid/os/storage/DiskInfo;
    if-nez v7, :cond_3

    .line 3297
    goto :goto_0

    .line 3300
    :cond_3
    const/4 v8, -0x1

    .line 3301
    .local v8, "externalStorageType":I
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3302
    const/4 v8, 0x1

    goto :goto_1

    .line 3303
    :cond_4
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3304
    const/4 v8, 0x2

    goto :goto_1

    .line 3305
    :cond_5
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3306
    const/4 v8, 0x3

    .line 3310
    :cond_6
    :goto_1
    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 3311
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 3312
    invoke-virtual {v9, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 3313
    invoke-virtual {v9, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3314
    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 3315
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v9

    .line 3316
    .local v9, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3318
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "storageUuid":Ljava/util/UUID;
    .end local v6    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    .end local v7    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v8    # "externalStorageType":I
    .end local v9    # "e":Landroid/util/StatsEvent;
    :cond_7
    goto :goto_0

    .line 3319
    :cond_8
    return v1
.end method

.method pullAttributedAppOpsLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3492
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3494
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 3495
    .local v2, "appOps":Landroid/app/AppOpsManager;
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3496
    .local v3, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v5, 0x9

    .line 3497
    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v4

    .line 3498
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v4

    .line 3500
    .local v4, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3501
    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3504
    .local v5, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    iget v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    if-nez v6, :cond_0

    .line 3505
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v7, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const-wide/32 v8, 0xafc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3518
    const/16 v6, 0x64

    iput v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3521
    :cond_0
    iget v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3522
    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v6

    .line 3524
    .local v6, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    iget v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-direct {p0, p2, v6, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v7

    .line 3526
    .local v7, "newSamplingRate":I
    iget v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3532
    .end local v2    # "appOps":Landroid/app/AppOpsManager;
    .end local v3    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v5    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v6    # "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    .end local v7    # "newSamplingRate":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3533
    nop

    .line 3534
    const/4 v2, 0x0

    return v2

    .line 3527
    :catchall_0
    move-exception v2

    .line 3529
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "StatsPullAtomService"

    const-string v4, "Could not read appops"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3530
    const/4 v3, 0x1

    .line 3532
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3530
    return v3

    .line 3532
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3533
    throw v2
.end method

.method pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2161
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2162
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2163
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-nez v0, :cond_0

    .line 2164
    const-string v1, "StatsPullAtomService"

    const-string v2, "failed to get binderStats"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v1, 0x1

    return v1

    .line 2168
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2171
    .local v1, "exceptionStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2172
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2173
    invoke-virtual {v4, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2174
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2175
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2176
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    .line 2177
    .local v4, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2178
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 2179
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method pullBinderCallsStatsLocked(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2117
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2118
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2119
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2120
    const-string v2, "StatsPullAtomService"

    const-string v3, "failed to get binderStats"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    return v1

    .line 2124
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v2

    .line 2125
    .local v2, "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 2127
    .local v4, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2128
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 2129
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2130
    invoke-virtual {v5, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 2131
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 2132
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 2133
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 2134
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 2135
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 2136
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 2137
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 2138
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 2139
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 2140
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 2141
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2142
    iget-boolean v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 2143
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2144
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    .line 2145
    .local v5, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    .end local v4    # "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 2147
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .locals 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1739
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1740
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-nez v0, :cond_0

    .line 1741
    const/4 v1, 0x1

    return v1

    .line 1743
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1744
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1745
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1746
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1747
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1748
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1749
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1750
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1751
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 1752
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    const/4 v2, 0x0

    return v2
.end method

.method pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1442
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1443
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1446
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 1447
    .local v6, "traffic":Landroid/bluetooth/UidTraffic;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1448
    invoke-virtual {v7, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1449
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1450
    invoke-virtual {v7, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1451
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1452
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1453
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v7

    .line 1454
    .local v7, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    .end local v6    # "traffic":Landroid/bluetooth/UidTraffic;
    .end local v7    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    return v4

    .line 1444
    :cond_2
    :goto_1
    return v1
.end method

.method pullBuildInformationLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3021
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3022
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 3023
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 3024
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 3025
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3026
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 3027
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 3028
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 3029
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 3030
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 3031
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3032
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 3033
    .local v0, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3034
    const/4 v1, 0x0

    return v1
.end method

.method pullCategorySizeLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2391
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "/data/system/diskstats_cache.json"

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2392
    .local v1, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2393
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2396
    .local v6, "cacheTime":J
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2397
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2398
    invoke-virtual {v3, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    const-string v8, "appSize"

    .line 2399
    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2401
    invoke-virtual {v3, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2402
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2403
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2406
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/4 v9, 0x2

    .line 2407
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "appDataSize"

    .line 2408
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2410
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2411
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2412
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2414
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2415
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/4 v9, 0x3

    .line 2416
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "cacheSize"

    .line 2417
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2419
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2420
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2421
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2423
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2424
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/4 v9, 0x4

    .line 2425
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "photosSize"

    .line 2426
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2428
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2429
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2430
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2433
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/4 v9, 0x5

    .line 2434
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "videosSize"

    .line 2436
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 2435
    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2437
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2438
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2439
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2441
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2442
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/4 v9, 0x6

    .line 2443
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "audioSize"

    .line 2444
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2446
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2447
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2448
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2450
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2451
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/4 v9, 0x7

    .line 2452
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "downloadsSize"

    .line 2454
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 2453
    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2455
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2456
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2457
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2460
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/16 v9, 0x8

    .line 2461
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "systemSize"

    .line 2462
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2464
    invoke-virtual {v8, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2465
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    move-object v3, v8

    .line 2466
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2468
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 2469
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const/16 v9, 0x9

    .line 2470
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    const-string v9, "otherSize"

    .line 2471
    invoke-virtual {v2, v9, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2473
    invoke-virtual {v4, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2474
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    move-object v3, v4

    .line 2475
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2479
    nop

    .line 2480
    .end local v1    # "jsonStr":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "e":Landroid/util/StatsEvent;
    .end local v6    # "cacheTime":J
    const/4 v0, 0x0

    return v0

    .line 2476
    :catch_0
    move-exception v1

    .line 2477
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Unable to read diskstats cache file within pullCategorySize"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    return v0
.end method

.method pullCooldownDeviceLocked(ILjava/util/List;)I
    .locals 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2077
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2078
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2079
    return v1

    .line 2081
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2083
    .local v2, "callingToken":J
    :try_start_0
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object v4

    .line 2084
    .local v4, "devices":[Landroid/os/CoolingDevice;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 2085
    .local v8, "device":Landroid/os/CoolingDevice;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2086
    invoke-virtual {v9, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2087
    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2088
    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2089
    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2090
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v9

    .line 2091
    .local v9, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    nop

    .end local v8    # "device":Landroid/os/CoolingDevice;
    .end local v9    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2098
    .end local v4    # "devices":[Landroid/os/CoolingDevice;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    nop

    .line 2100
    return v6

    .line 2098
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2093
    :catch_0
    move-exception v4

    .line 2095
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "StatsPullAtomService"

    const-string v6, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    nop

    .line 2098
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2096
    return v1

    .line 2098
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    throw v1
.end method

.method pullCpuActiveTimeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1595
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1604
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuClusterTimeLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1623
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;

    invoke-direct {v1, p1, p2}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1635
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuTimePerFreqLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1501
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1502
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v1

    .line 1503
    .local v1, "clusterTimeMs":[J
    if-eqz v1, :cond_0

    .line 1504
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "speed":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1505
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1506
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1507
    invoke-virtual {v3, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1508
    invoke-virtual {v3, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    aget-wide v4, v1, v2

    .line 1509
    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1510
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 1511
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    .end local v3    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1501
    .end local v1    # "clusterTimeMs":[J
    .end local v2    # "speed":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1515
    .end local v0    # "cluster":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .locals 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2755
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2756
    const-string v1, "mKernelCpuThreadReader is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    return v3

    .line 2759
    :cond_0
    nop

    .line 2760
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    .line 2761
    .local v1, "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    if-nez v1, :cond_1

    .line 2762
    const-string v4, "processCpuUsages is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    return v3

    .line 2765
    :cond_1
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v4}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v4

    .line 2766
    .local v4, "cpuFrequencies":[I
    array-length v5, v4

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    .line 2767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2769
    .local v5, "message":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    return v3

    .line 2772
    .end local v5    # "message":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v5, v7, :cond_7

    .line 2773
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 2774
    .local v7, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    iget-object v9, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 2776
    .local v9, "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 2777
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 2778
    .local v11, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    iget-object v12, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v12, v12

    array-length v13, v4

    if-eq v12, v13, :cond_3

    .line 2779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected number of usage times, expected "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " but got "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2782
    .local v6, "message":Ljava/lang/String;
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    return v3

    .line 2786
    .end local v6    # "message":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v12

    .line 2787
    .local v12, "e":Landroid/util/StatsEvent$Builder;
    move/from16 v13, p1

    invoke-virtual {v12, v13}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 2788
    iget v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    invoke-virtual {v12, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 2789
    invoke-virtual {v12, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 2790
    iget v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    invoke-virtual {v12, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 2791
    iget v14, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    invoke-virtual {v12, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 2792
    iget-object v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 2793
    iget-object v14, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 2794
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    if-ge v14, v6, :cond_5

    .line 2795
    array-length v15, v4

    if-ge v14, v15, :cond_4

    .line 2796
    aget v15, v4, v14

    invoke-virtual {v12, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 2797
    iget-object v15, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v15, v15, v14

    invoke-virtual {v12, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto :goto_3

    .line 2802
    :cond_4
    invoke-virtual {v12, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 2803
    invoke-virtual {v12, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 2794
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2806
    .end local v14    # "k":I
    :cond_5
    invoke-virtual {v12}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2776
    .end local v11    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .end local v12    # "e":Landroid/util/StatsEvent$Builder;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move/from16 v13, p1

    move-object/from16 v15, p2

    .line 2772
    .end local v7    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .end local v9    # "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    .end local v10    # "j":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    move/from16 v13, p1

    move-object/from16 v15, p2

    .line 2809
    .end local v5    # "i":I
    return v8
.end method

.method pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1562
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$Bnp1JNLpA6tL0Uft8GZLVwhd038;

    invoke-direct {v1, p1, p2}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$Bnp1JNLpA6tL0Uft8GZLVwhd038;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1576
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuTimePerUidLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1532
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$b4_7_H3BTTvMclBjrN4ip85gTHU;

    invoke-direct {v1, p1, p2}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$b4_7_H3BTTvMclBjrN4ip85gTHU;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1543
    const/4 v0, 0x0

    return v0
.end method

.method pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .locals 24
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3107
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "android.permission."

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3108
    .local v4, "token":J
    const-string v0, "permissions"

    const-string v6, "dangerous_permission_state_sample_rate"

    const v7, 0x3c75c28f    # 0.015f

    invoke-static {v0, v6, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    .line 3110
    .local v6, "samplingRate":F
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 3112
    .local v7, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v9, v0

    .line 3114
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 3116
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    move v11, v0

    .line 3117
    .local v11, "numUsers":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "userNum":I
    :goto_0
    if-ge v12, v11, :cond_9

    .line 3118
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    move-object v14, v0

    .line 3120
    .local v14, "user":Landroid/os/UserHandle;
    const/16 v0, 0x1000

    .line 3121
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 3120
    invoke-virtual {v9, v0, v15}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    move-object v15, v0

    .line 3123
    .local v15, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v16, v0

    .line 3124
    .local v16, "numPkgs":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "pkgNum":I
    :goto_1
    move/from16 v13, v16

    .end local v16    # "numPkgs":I
    .local v13, "numPkgs":I
    if-ge v8, v13, :cond_8

    .line 3125
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    .line 3127
    .local v16, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v1, v16

    .end local v16    # "pkg":Landroid/content/pm/PackageInfo;
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3128
    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move/from16 v22, v11

    goto/16 :goto_5

    .line 3131
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3133
    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move/from16 v22, v11

    goto/16 :goto_5

    .line 3135
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3137
    const/16 v0, 0x2753

    if-ne v2, v0, :cond_2

    .line 3138
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    .line 3139
    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move/from16 v22, v11

    goto/16 :goto_5

    .line 3180
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v8    # "pkgNum":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "numUsers":I
    .end local v12    # "userNum":I
    .end local v13    # "numPkgs":I
    .end local v14    # "user":Landroid/os/UserHandle;
    .end local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_6

    .line 3142
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v8    # "pkgNum":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v11    # "numUsers":I
    .restart local v12    # "userNum":I
    .restart local v13    # "numPkgs":I
    .restart local v14    # "user":Landroid/os/UserHandle;
    .restart local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    :try_start_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v16, v0

    .line 3143
    .local v16, "numPerms":I
    const/4 v0, 0x0

    move/from16 v17, v6

    move v6, v0

    .local v6, "permNum":I
    .local v17, "samplingRate":F
    :goto_2
    move-object/from16 v18, v7

    move/from16 v7, v16

    .end local v16    # "numPerms":I
    .local v7, "numPerms":I
    .local v18, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-ge v6, v7, :cond_7

    .line 3144
    :try_start_3
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v0

    .line 3147
    .local v16, "permName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3149
    .local v19, "permissionFlags":I
    move/from16 v20, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v10

    const/4 v10, 0x0

    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v7, "permName":Ljava/lang/String;
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v20, "numPerms":I
    :try_start_4
    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 3150
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3151
    invoke-virtual {v9, v7, v10, v14}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3154
    .end local v19    # "permissionFlags":I
    .local v10, "permissionFlags":I
    nop

    .line 3156
    move-object/from16 v21, v9

    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .local v21, "pm":Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v9

    move/from16 v22, v11

    const/4 v11, 0x1

    .end local v11    # "numUsers":I
    .local v22, "numUsers":I
    if-eq v9, v11, :cond_3

    .line 3157
    move-object/from16 v23, v1

    move-object/from16 v1, p2

    goto :goto_4

    .line 3160
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3161
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 3164
    :cond_4
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 3165
    .local v9, "e":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v9, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 3166
    invoke-virtual {v9, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3167
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3168
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v11}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 3169
    const/16 v11, 0x2742

    if-ne v2, v11, :cond_5

    .line 3170
    const-string v11, ""

    invoke-virtual {v9, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3172
    :cond_5
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v11, v6

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v9, v11}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 3174
    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3176
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v23, v1

    move-object/from16 v1, p2

    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .local v23, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_6
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 3180
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "permNum":I
    .end local v7    # "permName":Ljava/lang/String;
    .end local v8    # "pkgNum":I
    .end local v9    # "e":Landroid/util/StatsEvent$Builder;
    .end local v10    # "permissionFlags":I
    .end local v12    # "userNum":I
    .end local v13    # "numPkgs":I
    .end local v14    # "user":Landroid/os/UserHandle;
    .end local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v20    # "numPerms":I
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "numUsers":I
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_1
    move-exception v0

    goto/16 :goto_6

    .line 3152
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v6    # "permNum":I
    .restart local v7    # "permName":Ljava/lang/String;
    .restart local v8    # "pkgNum":I
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "numUsers":I
    .restart local v12    # "userNum":I
    .restart local v13    # "numPkgs":I
    .restart local v14    # "user":Landroid/os/UserHandle;
    .restart local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "permissionFlags":I
    .restart local v20    # "numPerms":I
    :catch_0
    move-exception v0

    move-object/from16 v23, v1

    move-object/from16 v21, v9

    move/from16 v22, v11

    move-object/from16 v1, p2

    .line 3153
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "numUsers":I
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "numUsers":I
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 3143
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v19    # "permissionFlags":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v16

    move-object/from16 v7, v18

    move/from16 v16, v20

    move-object/from16 v9, v21

    move/from16 v11, v22

    move-object/from16 v1, v23

    goto/16 :goto_2

    .line 3180
    .end local v6    # "permNum":I
    .end local v8    # "pkgNum":I
    .end local v12    # "userNum":I
    .end local v13    # "numPkgs":I
    .end local v14    # "user":Landroid/os/UserHandle;
    .end local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v20    # "numPerms":I
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "numUsers":I
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_6

    .line 3143
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v6    # "permNum":I
    .local v7, "numPerms":I
    .restart local v8    # "pkgNum":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v11    # "numUsers":I
    .restart local v12    # "userNum":I
    .restart local v13    # "numPkgs":I
    .restart local v14    # "user":Landroid/os/UserHandle;
    .restart local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_7
    move-object/from16 v23, v1

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move/from16 v22, v11

    move-object/from16 v1, p2

    .line 3124
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "permNum":I
    .end local v7    # "numPerms":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "numUsers":I
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "numUsers":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v21

    move/from16 v11, v22

    move/from16 v16, v13

    goto/16 :goto_1

    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "samplingRate":F
    .end local v18    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "numUsers":I
    .local v6, "samplingRate":F
    .local v7, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v11    # "numUsers":I
    :cond_8
    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move/from16 v22, v11

    .line 3117
    .end local v6    # "samplingRate":F
    .end local v7    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "pkgNum":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "numUsers":I
    .end local v13    # "numPkgs":I
    .end local v14    # "user":Landroid/os/UserHandle;
    .end local v15    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17    # "samplingRate":F
    .restart local v18    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "numUsers":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "samplingRate":F
    .end local v18    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "numUsers":I
    .restart local v6    # "samplingRate":F
    .restart local v7    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v11    # "numUsers":I
    :cond_9
    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v9

    move-object/from16 v16, v10

    move/from16 v22, v11

    .line 3184
    .end local v6    # "samplingRate":F
    .end local v7    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "numUsers":I
    .end local v12    # "userNum":I
    .restart local v17    # "samplingRate":F
    .restart local v18    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3185
    nop

    .line 3186
    const/4 v3, 0x0

    return v3

    .line 3180
    .end local v17    # "samplingRate":F
    .end local v18    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v6    # "samplingRate":F
    .restart local v7    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v1, p2

    move/from16 v17, v6

    move-object/from16 v18, v7

    .line 3181
    .end local v6    # "samplingRate":F
    .end local v7    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v17    # "samplingRate":F
    .restart local v18    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_6
    :try_start_7
    const-string v3, "StatsPullAtomService"

    const-string v6, "Could not read permissions"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3182
    nop

    .line 3184
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3182
    const/4 v3, 0x1

    return v3

    .line 3184
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3185
    throw v0
.end method

.method pullDebugElapsedClockLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2940
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2941
    .local v0, "elapsedMillis":J
    iget-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 2942
    goto :goto_0

    :cond_0
    sub-long v4, v0, v2

    :goto_0
    move-wide v2, v4

    .line 2944
    .local v2, "clockDiffMillis":J
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2945
    invoke-virtual {v4, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 2946
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2947
    invoke-virtual {v4, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2949
    invoke-virtual {v4, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2950
    invoke-virtual {v4, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 2951
    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2952
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    .line 2953
    .local v4, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2955
    iget-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v7, 0x2

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 2956
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2957
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 2958
    invoke-virtual {v5, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2959
    invoke-virtual {v5, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2961
    invoke-virtual {v5, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2962
    invoke-virtual {v5, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 2963
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2964
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    .line 2965
    .local v5, "e2":Landroid/util/StatsEvent;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2968
    .end local v5    # "e2":Landroid/util/StatsEvent;
    :cond_1
    iget-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 2969
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 2970
    const/4 v5, 0x0

    return v5
.end method

.method pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2987
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2989
    .local v0, "elapsedMillis":J
    iget-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v4, 0x5

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2990
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 2991
    const-string v2, "StatsPullAtomService"

    const-string v3, "Failing debug elapsed clock"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v2, 0x1

    return v2

    .line 2995
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2996
    invoke-virtual {v2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget-wide v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 2997
    invoke-virtual {v2, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2998
    invoke-virtual {v2, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 3000
    invoke-virtual {v2, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 3001
    iget-wide v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_1

    .line 3002
    goto :goto_0

    :cond_1
    sub-long v4, v0, v6

    .line 3001
    :goto_0
    invoke-virtual {v2, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 3003
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    .line 3004
    .local v2, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3006
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3007
    const/4 v3, 0x0

    return v3
.end method

.method pullDeviceCalculatedPowerBlameOtherLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2904
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 2905
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v0, :cond_0

    .line 2906
    const/4 v1, 0x1

    return v1

    .line 2909
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

    .line 2910
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    .line 2911
    goto :goto_0

    .line 2913
    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_2

    .line 2914
    goto :goto_0

    .line 2916
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2917
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 2918
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 2919
    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2920
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2921
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2922
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v3    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 2923
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method pullDeviceCalculatedPowerBlameUidLocked(ILjava/util/List;)I
    .locals 7
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2873
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 2874
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2875
    return v1

    .line 2878
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 2879
    .local v3, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v4, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v4, v5, :cond_1

    .line 2880
    goto :goto_0

    .line 2882
    :cond_1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2883
    invoke-virtual {v4, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 2884
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2885
    invoke-virtual {v4, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 2886
    invoke-direct {p0, v5, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2887
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    .line 2888
    .local v4, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2889
    .end local v3    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v4    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 2890
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .locals 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2853
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    .line 2854
    .local v0, "bsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 2855
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 2856
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 2857
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 2858
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2859
    const/4 v2, 0x0

    return v2
.end method

.method pullDirectoryUsageLocked(ILjava/util/List;)I
    .locals 7
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2305
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v0, "statFsData":Landroid/os/StatFs;
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2307
    .local v1, "statFsSystem":Landroid/os/StatFs;
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v2, "statFsCache":Landroid/os/StatFs;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2310
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2311
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2312
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2313
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2314
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2315
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2317
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2318
    invoke-virtual {v4, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2319
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2320
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2321
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2322
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2323
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2325
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2326
    invoke-virtual {v4, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2327
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2328
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2329
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 2330
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2331
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2332
    const/4 v4, 0x0

    return v4
.end method

.method pullDiskIOLocked(ILjava/util/List;)I
    .locals 2
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2660
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v1, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    .line 2680
    const/4 v0, 0x0

    return v0
.end method

.method pullDiskStatsLocked(ILjava/util/List;)I
    .locals 15
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2240
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 2241
    .local v1, "junk":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2243
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system/statsdperftest.tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 2244
    .local v2, "tmp":Ljava/io/File;
    const/4 v3, 0x0

    .line 2245
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 2247
    .local v4, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2249
    .local v5, "before":J
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 2250
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2258
    :cond_1
    :goto_1
    goto :goto_4

    .line 2256
    :catch_0
    move-exception v0

    .line 2259
    goto :goto_4

    .line 2254
    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 2255
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2256
    :catch_1
    move-exception v0

    goto :goto_3

    .line 2258
    :cond_2
    :goto_2
    nop

    .line 2259
    :goto_3
    throw v7

    .line 2251
    :catch_2
    move-exception v0

    .line 2252
    .local v0, "e":Ljava/io/IOException;
    move-object v4, v0

    .line 2255
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2261
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 2262
    .local v7, "latency":J
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2264
    :cond_3
    const-string v9, "StatsPullAtomService"

    if-eqz v4, :cond_4

    .line 2265
    const-string v0, "Error performing diskstats latency test"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-wide/16 v7, -0x1

    .line 2269
    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v10

    .line 2272
    .local v10, "fileBased":Z
    const/4 v11, -0x1

    .line 2273
    .local v11, "writeSpeed":I
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object v12

    .line 2274
    .local v12, "storaged":Landroid/os/IStoraged;
    if-nez v12, :cond_5

    .line 2275
    const/4 v0, 0x1

    return v0

    .line 2278
    :cond_5
    :try_start_4
    invoke-interface {v12}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move v11, v0

    .line 2281
    goto :goto_5

    .line 2279
    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 2280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v13, "storaged not found"

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2285
    move/from16 v9, p1

    invoke-virtual {v0, v9}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2286
    invoke-virtual {v0, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2287
    invoke-virtual {v0, v10}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2288
    invoke-virtual {v0, v11}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 2289
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 2290
    .local v0, "e":Landroid/util/StatsEvent;
    move-object/from16 v13, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2291
    const/4 v14, 0x0

    return v14
.end method

.method pullExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3227
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3228
    return v1

    .line 3231
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 3232
    .local v0, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 3233
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v4

    .line 3234
    .local v4, "envState":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    .line 3235
    .local v5, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_5

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3237
    const/4 v6, 0x3

    .line 3238
    .local v6, "volumeType":I
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 3239
    const/4 v6, 0x1

    goto :goto_1

    .line 3240
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 3241
    const/4 v6, 0x2

    .line 3246
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3247
    const/4 v7, 0x1

    .local v7, "externalStorageType":I
    goto :goto_2

    .line 3248
    .end local v7    # "externalStorageType":I
    :cond_3
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3249
    const/4 v7, 0x2

    .restart local v7    # "externalStorageType":I
    goto :goto_2

    .line 3251
    .end local v7    # "externalStorageType":I
    :cond_4
    const/4 v7, 0x3

    .line 3254
    .restart local v7    # "externalStorageType":I
    :goto_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 3255
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 3256
    invoke-virtual {v8, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 3257
    invoke-virtual {v8, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    iget-wide v9, v5, Landroid/os/storage/DiskInfo;->size:J

    .line 3258
    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 3259
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    .line 3260
    .local v8, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3262
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "envState":Ljava/lang/String;
    .end local v5    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v6    # "volumeType":I
    .end local v7    # "externalStorageType":I
    .end local v8    # "e":Landroid/util/StatsEvent;
    :cond_5
    goto :goto_0

    .line 3263
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method pullFaceSettingsLocked(ILjava/util/List;)I
    .locals 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3333
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3335
    .local v2, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 3336
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 3337
    .local v4, "numUsers":I
    const/4 v5, 0x0

    .local v5, "userNum":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v4, :cond_6

    .line 3338
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 3340
    .local v7, "userId":I
    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3341
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_keyguard_enabled"

    .line 3340
    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 3343
    .local v8, "unlockKeyguardEnabled":I
    iget-object v9, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3344
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "face_unlock_dismisses_keyguard"

    .line 3343
    invoke-static {v9, v11, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 3346
    .local v9, "unlockDismissesKeyguard":I
    iget-object v11, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3347
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_attention_required"

    .line 3346
    invoke-static {v11, v12, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 3349
    .local v11, "unlockAttentionRequired":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3350
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_app_enabled"

    .line 3349
    invoke-static {v12, v13, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 3352
    .local v12, "unlockAppEnabled":I
    iget-object v13, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3353
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_always_require_confirmation"

    .line 3352
    invoke-static {v13, v14, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 3355
    .local v13, "unlockAlwaysRequireConfirmation":I
    iget-object v14, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3356
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_diversity_required"

    .line 3355
    invoke-static {v14, v15, v10, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 3359
    .local v14, "unlockDiversityRequired":I
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3360
    move/from16 v10, p1

    :try_start_1
    invoke-virtual {v15, v10}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v15

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    .line 3361
    :cond_0
    invoke-virtual {v15, v6}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    if-eqz v9, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 3362
    :goto_1
    invoke-virtual {v6, v15}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    if-eqz v11, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 3363
    :goto_2
    invoke-virtual {v6, v15}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    if-eqz v12, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 3364
    :goto_3
    invoke-virtual {v6, v15}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    if-eqz v13, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 3365
    :goto_4
    invoke-virtual {v6, v15}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    if-eqz v14, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 3366
    :goto_5
    invoke-virtual {v6, v15}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v6

    .line 3367
    invoke-virtual {v6}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3368
    .local v6, "e":Landroid/util/StatsEvent;
    move-object/from16 v15, p2

    :try_start_2
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3337
    nop

    .end local v6    # "e":Landroid/util/StatsEvent;
    .end local v7    # "userId":I
    .end local v8    # "unlockKeyguardEnabled":I
    .end local v9    # "unlockDismissesKeyguard":I
    .end local v11    # "unlockAttentionRequired":I
    .end local v12    # "unlockAppEnabled":I
    .end local v13    # "unlockAlwaysRequireConfirmation":I
    .end local v14    # "unlockDiversityRequired":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3371
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "numUsers":I
    .end local v5    # "userNum":I
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 3337
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "numUsers":I
    .restart local v5    # "userNum":I
    :cond_6
    move/from16 v10, p1

    move-object/from16 v15, p2

    .line 3371
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "numUsers":I
    .end local v5    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3372
    nop

    .line 3373
    const/4 v0, 0x0

    return v0

    .line 3371
    :catchall_2
    move-exception v0

    move/from16 v10, p1

    :goto_6
    move-object/from16 v15, p2

    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3372
    throw v0
.end method

.method pullHealthHalLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3801
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 3802
    .local v0, "healthService":Landroid/hardware/health/V2_0/IHealth;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3803
    return v1

    .line 3806
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;

    invoke-direct {v2, p1, p2}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3836
    nop

    .line 3837
    const/4 v1, 0x0

    return v1

    .line 3834
    :catch_0
    move-exception v2

    .line 3835
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method pullIonHeapSizeLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1992
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1993
    .local v0, "ionHeapSizeInKilobytes":I
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1994
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1995
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 1996
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 1997
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1998
    const/4 v2, 0x0

    return v2
.end method

.method pullKernelWakelockLocked(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1470
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 1471
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    .line 1472
    .local v0, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

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

    .line 1473
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1474
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 1475
    .local v4, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1476
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1477
    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 1478
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    .line 1479
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 1480
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1481
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    .line 1482
    .local v5, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v5    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 1484
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pullLooperStatsLocked(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2196
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 2197
    .local v0, "looperStats":Lcom/android/internal/os/LooperStats;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2198
    return v1

    .line 2201
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v2

    .line 2202
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2203
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 2204
    .local v4, "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2205
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 2206
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2207
    invoke-virtual {v5, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    .line 2208
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    .line 2209
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    .line 2210
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    .line 2211
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    .line 2212
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    .line 2213
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    .line 2214
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    .line 2215
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-boolean v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    .line 2216
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    .line 2217
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    .line 2218
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    .line 2219
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    .line 2220
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    .line 2221
    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 2222
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    .line 2223
    .local v5, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2224
    .end local v4    # "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    .end local v5    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 2225
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method pullModemActivityInfoLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1701
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1703
    .local v0, "token":J
    :try_start_0
    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v2, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1705
    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    .local v3, "modemInfo":Landroid/telephony/ModemActivityInfo;
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 1707
    nop

    .line 1723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    return v4

    .line 1709
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1710
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1711
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1712
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1713
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1714
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v6}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v5, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1715
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1716
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v5}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1717
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v5}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1718
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTransmitPowerInfo()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ModemActivityInfo$TransmitPower;

    invoke-virtual {v5}, Landroid/telephony/ModemActivityInfo$TransmitPower;->getTimeInMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1719
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1720
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    .line 1721
    .local v4, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1723
    nop

    .end local v2    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v3    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v4    # "e":Landroid/util/StatsEvent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    nop

    .line 1725
    return v7

    .line 1723
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    throw v2
.end method

.method pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .locals 17
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3707
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "Getting notistats failed: "

    const-string v2, "StatsPullAtomService"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v9

    .line 3708
    .local v9, "notificationManagerService":Landroid/app/INotificationManager;
    const/4 v10, 0x1

    if-nez v9, :cond_0

    .line 3709
    return v10

    .line 3711
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3714
    .local v11, "callingToken":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v13, v3, v5

    .line 3715
    .local v13, "wallClockNanos":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3716
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long v15, v13, v3

    .line 3718
    .local v15, "lastNotificationStatsNs":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3719
    .local v0, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v9

    move-wide v4, v15

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 3721
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v10, :cond_1

    .line 3722
    nop

    .line 3735
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3722
    return v10

    .line 3724
    :cond_1
    move/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_1
    invoke-static {v3, v4, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3735
    .end local v0    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v13    # "wallClockNanos":J
    .end local v15    # "lastNotificationStatsNs":J
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3736
    nop

    .line 3737
    const/4 v0, 0x0

    return v0

    .line 3731
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3728
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3725
    :catch_2
    move-exception v0

    goto :goto_2

    .line 3735
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_3

    .line 3731
    :catch_3
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3732
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    :try_start_2
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3733
    nop

    .line 3735
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3733
    return v10

    .line 3728
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3729
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_3
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3730
    nop

    .line 3735
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3730
    return v10

    .line 3725
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3726
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3727
    nop

    .line 3735
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3727
    return v10

    .line 3735
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3736
    throw v0
.end method

.method pullPowerProfileLocked(ILjava/util/List;)I
    .locals 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2694
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 2695
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2696
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2697
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2698
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2699
    invoke-virtual {v2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2700
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 2701
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    .line 2702
    .local v2, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2703
    const/4 v3, 0x0

    return v3
.end method

.method pullProcessCpuTimeLocked(ILjava/util/List;)I
    .locals 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2721
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2722
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2723
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 2726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2727
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 2728
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2729
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 2730
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2731
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 2732
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 2733
    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 2734
    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2735
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2736
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2726
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v3    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2738
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .locals 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1852
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1853
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1854
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 1855
    .local v0, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x400

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 1856
    .local v2, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v6, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v6}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    .line 1857
    .local v6, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v6, :cond_0

    .line 1858
    goto :goto_0

    .line 1860
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1861
    invoke-virtual {v7, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    iget v8, v2, Landroid/app/ProcessMemoryState;->uid:I

    .line 1862
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1863
    invoke-virtual {v7, v5, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget-object v7, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 1864
    invoke-virtual {v5, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v7, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v7, v7

    mul-long/2addr v7, v3

    .line 1866
    invoke-virtual {v5, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v4, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 1867
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1868
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 1869
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    .end local v2    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v3    # "e":Landroid/util/StatsEvent;
    .end local v6    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    goto :goto_0

    .line 1872
    :cond_1
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v1

    .line 1873
    .local v1, "processCmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$lqJRvPt3oaiuhNE25XssoNn5av4;

    invoke-direct {v2, v1}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$lqJRvPt3oaiuhNE25XssoNn5av4;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1874
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1875
    .local v2, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 1876
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v7

    .line 1877
    .local v7, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v7, :cond_2

    .line 1878
    goto :goto_2

    .line 1880
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 1881
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    iget v9, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 1882
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 1883
    invoke-virtual {v8, v5, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 1884
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    iget v9, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v9, v9

    mul-long/2addr v9, v3

    .line 1886
    invoke-virtual {v8, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    iget v9, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 1887
    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 1888
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v8

    .line 1889
    .local v8, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    .end local v7    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .end local v8    # "e":Landroid/util/StatsEvent;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1892
    .end local v6    # "i":I
    :cond_3
    const-string v3, "sys.rss_hwm_reset.on"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const/4 v3, 0x0

    return v3
.end method

.method pullProcessMemorySnapshotLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1907
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1908
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1909
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 1910
    .local v0, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 1911
    .local v2, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v4, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v4

    .line 1912
    .local v4, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v4, :cond_0

    .line 1913
    goto :goto_0

    .line 1915
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1916
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    iget v6, v2, Landroid/app/ProcessMemoryState;->uid:I

    .line 1917
    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1918
    invoke-virtual {v5, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-object v5, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 1919
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v5, v2, Landroid/app/ProcessMemoryState;->pid:I

    .line 1920
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v5, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 1921
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 1922
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 1923
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 1924
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v5, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v6, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int/2addr v5, v6

    .line 1925
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 1926
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 1927
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    .end local v2    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v3    # "e":Landroid/util/StatsEvent;
    .end local v4    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    goto :goto_0

    .line 1932
    :cond_1
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v1

    .line 1933
    .local v1, "processCmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$61iYYyM1I6mUS0w8UN9q4tmxKaQ;

    invoke-direct {v2, v1}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$61iYYyM1I6mUS0w8UN9q4tmxKaQ;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1934
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1935
    .local v2, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 1936
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1937
    .local v5, "pid":I
    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    .line 1938
    .local v6, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v6, :cond_2

    .line 1939
    goto :goto_2

    .line 1941
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1942
    invoke-virtual {v7, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 1943
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1944
    invoke-virtual {v7, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1945
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1946
    invoke-virtual {v7, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    const/16 v8, -0x3e9

    .line 1947
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 1948
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 1949
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 1950
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v9, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int/2addr v8, v9

    .line 1951
    invoke-virtual {v7, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v7

    .line 1952
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v7

    .line 1953
    .local v7, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1935
    .end local v5    # "pid":I
    .end local v6    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .end local v7    # "e":Landroid/util/StatsEvent;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1955
    .end local v4    # "i":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method pullProcessMemoryStateLocked(ILjava/util/List;)I
    .locals 7
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1812
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1813
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1814
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 1815
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

    .line 1816
    .local v2, "processMemoryState":Landroid/app/ProcessMemoryState;
    iget v3, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget v4, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v3

    .line 1818
    .local v3, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v3, :cond_0

    .line 1819
    goto :goto_0

    .line 1821
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1822
    invoke-virtual {v4, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/ProcessMemoryState;->uid:I

    .line 1823
    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1824
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v5}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 1825
    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 1826
    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 1827
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 1828
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 1829
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 1830
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 1831
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1832
    const-wide/16 v5, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1833
    invoke-virtual {v4, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    const/4 v5, -0x1

    .line 1834
    invoke-virtual {v4, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v4

    .line 1835
    invoke-virtual {v4}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    .line 1836
    .local v4, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    .end local v2    # "processMemoryState":Landroid/app/ProcessMemoryState;
    .end local v3    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .end local v4    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 1838
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2012
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object v0

    .line 2013
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 2014
    .local v2, "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2015
    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2016
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2017
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2018
    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 2019
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    .line 2020
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 2021
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    .line 2022
    invoke-virtual {v3}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v3

    .line 2023
    .local v3, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    .end local v2    # "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    .end local v3    # "e":Landroid/util/StatsEvent;
    goto :goto_0

    .line 2025
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method pullRoleHolderLocked(ILjava/util/List;)I
    .locals 21
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3049
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3051
    .local v2, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    .line 3052
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/server/role/RoleManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/role/RoleManagerInternal;

    move-object v5, v0

    .line 3054
    .local v5, "rmi":Lcom/android/server/role/RoleManagerInternal;
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 3056
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 3057
    .local v7, "numUsers":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "userNum":I
    :goto_0
    const/4 v0, 0x0

    if-ge v8, v7, :cond_2

    .line 3058
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 3060
    .local v9, "userId":I
    invoke-virtual {v5, v9}, Lcom/android/server/role/RoleManagerInternal;->getRolesAndHolders(I)Landroid/util/ArrayMap;

    move-result-object v10

    .line 3062
    .local v10, "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 3063
    .local v11, "numRoles":I
    const/4 v12, 0x0

    .local v12, "roleNum":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 3064
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3065
    .local v13, "roleName":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    .line 3067
    .local v14, "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v15

    .line 3068
    .local v15, "numHolders":I
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "holderNum":I
    :goto_2
    if-ge v1, v15, :cond_0

    .line 3069
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v16

    .line 3073
    .local v17, "holderName":Ljava/lang/String;
    move-object/from16 v16, v5

    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .local v16, "rmi":Lcom/android/server/role/RoleManagerInternal;
    move-object/from16 v5, v17

    .end local v17    # "holderName":Ljava/lang/String;
    .local v5, "holderName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4, v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v17
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v17

    .line 3077
    .local v18, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 3079
    :try_start_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3080
    move-object/from16 v19, v4

    move/from16 v4, p1

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    move-object/from16 v4, v18

    move-object/from16 v18, v6

    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3081
    invoke-virtual {v0, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3082
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v6}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3083
    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3084
    invoke-virtual {v0, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 3085
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3086
    .local v0, "e":Landroid/util/StatsEvent;
    move-object/from16 v6, p2

    :try_start_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3068
    nop

    .end local v0    # "e":Landroid/util/StatsEvent;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "holderName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    const/4 v0, 0x0

    goto :goto_2

    .line 3074
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "holderName":Ljava/lang/String;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move-object/from16 v6, p2

    move-object v4, v0

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    move-object v0, v4

    .line 3075
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "StatsPullAtomService"

    move-object/from16 v17, v0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v1

    .end local v1    # "holderNum":I
    .local v20, "holderNum":I
    const-string v1, "Role holder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3076
    nop

    .line 3091
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3076
    const/4 v1, 0x1

    return v1

    .line 3091
    .end local v5    # "holderName":Ljava/lang/String;
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    .end local v9    # "userId":I
    .end local v10    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "numRoles":I
    .end local v12    # "roleNum":I
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "numHolders":I
    .end local v16    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "holderNum":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3068
    .restart local v1    # "holderNum":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "rmi":Lcom/android/server/role/RoleManagerInternal;
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
    :cond_0
    move/from16 v20, v1

    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v6, p2

    .line 3063
    .end local v1    # "holderNum":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "holders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "numHolders":I
    .restart local v16    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .restart local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    const/4 v0, 0x0

    goto/16 :goto_1

    .end local v16    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v6, p2

    .line 3057
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "userId":I
    .end local v10    # "roles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "numRoles":I
    .end local v12    # "roleNum":I
    .restart local v16    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .restart local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    goto/16 :goto_0

    .end local v16    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v18    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v6, p2

    .line 3091
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rmi":Lcom/android/server/role/RoleManagerInternal;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    nop

    .line 3093
    const/4 v0, 0x0

    return v0

    .line 3091
    :catchall_1
    move-exception v0

    move-object/from16 v6, p2

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3092
    throw v0
.end method

.method pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .locals 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3620
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, ""

    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3622
    .local v2, "token":J
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 3624
    .local v5, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v5}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v6

    .line 3625
    .local v6, "message":Landroid/app/RuntimeAppOpAccessMessage;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 3626
    const-string v0, "No runtime appop access message collected"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3627
    nop

    .line 3651
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3627
    return v7

    .line 3630
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    .line 3631
    .local v8, "e":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v8, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 3632
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3633
    invoke-virtual {v8, v4, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 3634
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3635
    invoke-virtual {v8, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3636
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 3637
    invoke-virtual {v8, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    goto :goto_0

    .line 3639
    :cond_1
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3641
    :goto_0
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 3642
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3643
    invoke-virtual {v6}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 3645
    invoke-virtual {v8}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3651
    nop

    .end local v5    # "appOps":Landroid/app/AppOpsManager;
    .end local v6    # "message":Landroid/app/RuntimeAppOpAccessMessage;
    .end local v8    # "e":Landroid/util/StatsEvent$Builder;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3652
    nop

    .line 3653
    return v7

    .line 3646
    :catchall_0
    move-exception v0

    .line 3648
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "Could not read runtime appop access message"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3649
    nop

    .line 3651
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3649
    return v4

    .line 3651
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3652
    throw v0
.end method

.method pullSettingsStatsLocked(ILjava/util/List;)I
    .locals 9
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3851
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3852
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3853
    return v1

    .line 3856
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3858
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3859
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 3861
    .local v7, "userId":I
    if-nez v7, :cond_1

    .line 3862
    iget-object v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3865
    :cond_1
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3866
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3867
    nop

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    goto :goto_0

    .line 3872
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3873
    nop

    .line 3874
    return v6

    .line 3872
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3868
    :catch_0
    move-exception v4

    .line 3869
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "StatsPullAtomService"

    const-string v6, "failed to pullSettingsStats"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3870
    nop

    .line 3872
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3870
    return v1

    .line 3872
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3873
    throw v1
.end method

.method pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1771
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1772
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1774
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 1775
    .local v0, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    const/4 v1, 0x0

    return v1
.end method

.method pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1969
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 1970
    .local v0, "systemIonHeapSizeInBytes":J
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1971
    invoke-virtual {v2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1972
    invoke-virtual {v2, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    .line 1973
    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    .line 1974
    .local v2, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1975
    const/4 v3, 0x0

    return v3
.end method

.method pullSystemUptimeLocked(ILjava/util/List;)I
    .locals 3
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1790
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 1793
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 1794
    .local v0, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1795
    const/4 v1, 0x0

    return v1
.end method

.method pullTemperatureLocked(ILjava/util/List;)I
    .locals 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2039
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2040
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2041
    return v1

    .line 2043
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2045
    .local v2, "callingToken":J
    :try_start_0
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object v4

    .line 2046
    .local v4, "temperatures":[Landroid/os/Temperature;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 2047
    .local v8, "temp":Landroid/os/Temperature;
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2048
    invoke-virtual {v9, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2049
    invoke-virtual {v8}, Landroid/os/Temperature;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2050
    invoke-virtual {v8}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2051
    invoke-virtual {v8}, Landroid/os/Temperature;->getValue()F

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2052
    invoke-virtual {v8}, Landroid/os/Temperature;->getStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v9

    .line 2053
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v9

    .line 2054
    .local v9, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    nop

    .end local v8    # "temp":Landroid/os/Temperature;
    .end local v9    # "e":Landroid/util/StatsEvent;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2061
    .end local v4    # "temperatures":[Landroid/os/Temperature;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    nop

    .line 2063
    return v6

    .line 2061
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2056
    :catch_0
    move-exception v4

    .line 2058
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "StatsPullAtomService"

    const-string v6, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    nop

    .line 2061
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2059
    return v1

    .line 2061
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    throw v1
.end method

.method pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .locals 4
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3200
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, "Unknown"

    .line 3202
    .local v0, "tzDbVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3206
    nop

    .line 3208
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3209
    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3210
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 3211
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    .line 3212
    .local v1, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3213
    const/4 v2, 0x0

    return v2

    .line 3203
    .end local v1    # "e":Landroid/util/StatsEvent;
    :catch_0
    move-exception v1

    .line 3204
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Getting tzdb version failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3205
    const/4 v2, 0x1

    return v2
.end method

.method pullWifiActivityInfoLocked(ILjava/util/List;)I
    .locals 8
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1649
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1651
    .local v0, "token":J
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Landroid/os/SynchronousResultReceiver;

    const-string v4, "wifi"

    invoke-direct {v3, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v3, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v5, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v6, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$83yZWZxYUAxINjmopUHD6vHE_QM;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$83yZWZxYUAxINjmopUHD6vHE_QM;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 1667
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    .local v4, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-nez v4, :cond_0

    .line 1669
    nop

    .line 1685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1669
    return v2

    .line 1671
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1672
    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1673
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1674
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1675
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1676
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1677
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1678
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 1679
    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    .line 1680
    .local v5, "e":Landroid/util/StatsEvent;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1685
    nop

    .end local v3    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v4    # "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .end local v5    # "e":Landroid/util/StatsEvent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    nop

    .line 1687
    const/4 v2, 0x0

    return v2

    .line 1685
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v3

    .line 1682
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "StatsPullAtomService"

    const-string v5, "failed to getWifiActivityEnergyInfoAsync"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1683
    nop

    .line 1685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1683
    return v2

    .line 1685
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    throw v2
.end method

.method registerEventListeners()V
    .locals 6

    .line 750
    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 751
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 753
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 754
    .local v2, "request":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 758
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v3

    .line 759
    .local v3, "thermalService":Landroid/os/IThermalService;
    if-eqz v3, :cond_0

    .line 761
    :try_start_0
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    invoke-direct {v5, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$1;)V

    invoke-interface {v3, v5}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 762
    const-string v4, "register thermal listener successfully"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    goto :goto_0

    .line 763
    :catch_0
    move-exception v4

    .line 764
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "failed to register thermal listener"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method registerPullers()V
    .locals 2

    .line 771
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$1;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 774
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    .line 775
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    .line 776
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerFreq()V

    .line 777
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    .line 778
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    .line 779
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    .line 780
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    .line 781
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    .line 782
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    .line 783
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    .line 784
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    .line 785
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    .line 786
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryState()V

    .line 787
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    .line 788
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    .line 789
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    .line 791
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    .line 792
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    .line 793
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    .line 794
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    .line 795
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    .line 796
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    .line 797
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    .line 798
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    .line 799
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    .line 800
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    .line 801
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    .line 802
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    .line 803
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    .line 804
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    .line 805
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    .line 806
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    .line 807
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    .line 808
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    .line 809
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    .line 810
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerBlameUid()V

    .line 811
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerBlameOther()V

    .line 812
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    .line 813
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    .line 814
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    .line 815
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    .line 816
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    .line 817
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    .line 818
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    .line 819
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    .line 820
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppOps()V

    .line 821
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAttributedAppOps()V

    .line 822
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    .line 823
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    .line 824
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    .line 825
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    .line 826
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    .line 827
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    .line 828
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    .line 829
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    .line 830
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    .line 831
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    .line 832
    return-void
.end method
